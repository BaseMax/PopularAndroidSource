package c.e.a.a.n;

import android.net.Uri;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.x;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import e.a.a.a.a.b.C1046a;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* compiled from: DefaultHttpDataSource */
public class r extends g implements HttpDataSource {

    /* renamed from: e  reason: collision with root package name */
    public static final Pattern f9516e = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: f  reason: collision with root package name */
    public static final AtomicReference<byte[]> f9517f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    public final boolean f9518g;

    /* renamed from: h  reason: collision with root package name */
    public final int f9519h;

    /* renamed from: i  reason: collision with root package name */
    public final int f9520i;

    /* renamed from: j  reason: collision with root package name */
    public final String f9521j;

    /* renamed from: k  reason: collision with root package name */
    public final x<String> f9522k;

    /* renamed from: l  reason: collision with root package name */
    public final HttpDataSource.c f9523l;
    public final HttpDataSource.c m = new HttpDataSource.c();
    public l n;
    public HttpURLConnection o;
    public InputStream p;
    public boolean q;
    public long r;
    public long s;
    public long t;
    public long u;

    public r(String str, x<String> xVar, int i2, int i3, boolean z, HttpDataSource.c cVar) {
        super(true);
        C0737e.a(str);
        this.f9521j = str;
        this.f9522k = xVar;
        this.f9519h = i2;
        this.f9520i = i3;
        this.f9518g = z;
        this.f9523l = cVar;
    }

    public Map<String, List<String>> a() {
        HttpURLConnection httpURLConnection = this.o;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    public final long c() {
        long j2 = this.s;
        return j2 == -1 ? j2 : j2 - this.u;
    }

    public void close() {
        try {
            if (this.p != null) {
                a(this.o, c());
                this.p.close();
            }
            this.p = null;
            d();
            if (this.q) {
                this.q = false;
                b();
            }
        } catch (IOException e2) {
            throw new HttpDataSource.HttpDataSourceException(e2, this.n, 3);
        } catch (Throwable th) {
            this.p = null;
            d();
            if (this.q) {
                this.q = false;
                b();
            }
            throw th;
        }
    }

    public final HttpURLConnection d(l lVar) {
        HttpURLConnection a2;
        l lVar2 = lVar;
        URL url = new URL(lVar2.f9466a.toString());
        int i2 = lVar2.f9467b;
        byte[] bArr = lVar2.f9468c;
        long j2 = lVar2.f9471f;
        long j3 = lVar2.f9472g;
        boolean b2 = lVar2.b(1);
        boolean b3 = lVar2.b(2);
        if (!this.f9518g) {
            return a(url, i2, bArr, j2, j3, b2, b3, true);
        }
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (i3 <= 20) {
                int i5 = i4;
                long j4 = j3;
                long j5 = j2;
                a2 = a(url, i2, bArr, j2, j3, b2, b3, false);
                int responseCode = a2.getResponseCode();
                String headerField = a2.getHeaderField("Location");
                if ((i2 == 1 || i2 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                    a2.disconnect();
                    url = a(url, headerField);
                } else if (i2 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return a2;
                } else {
                    a2.disconnect();
                    url = a(url, headerField);
                    bArr = null;
                    i2 = 1;
                }
                i3 = i5;
                j3 = j4;
                j2 = j5;
            } else {
                throw new NoRouteToHostException("Too many redirects: " + i4);
            }
        }
        return a2;
    }

    public final void e() {
        if (this.t != this.r) {
            byte[] andSet = f9517f.getAndSet(null);
            if (andSet == null) {
                andSet = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
            }
            while (true) {
                long j2 = this.t;
                long j3 = this.r;
                if (j2 != j3) {
                    int read = this.p.read(andSet, 0, (int) Math.min(j3 - j2, (long) andSet.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.t += (long) read;
                        a(read);
                    } else {
                        throw new EOFException();
                    }
                } else {
                    f9517f.set(andSet);
                    return;
                }
            }
        }
    }

    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.o;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public int read(byte[] bArr, int i2, int i3) {
        try {
            e();
            return a(bArr, i2, i3);
        } catch (IOException e2) {
            throw new HttpDataSource.HttpDataSourceException(e2, this.n, 2);
        }
    }

    public long a(l lVar) {
        this.n = lVar;
        long j2 = 0;
        this.u = 0;
        this.t = 0;
        b(lVar);
        try {
            this.o = d(lVar);
            try {
                int responseCode = this.o.getResponseCode();
                String responseMessage = this.o.getResponseMessage();
                if (responseCode < 200 || responseCode > 299) {
                    Map headerFields = this.o.getHeaderFields();
                    d();
                    HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(responseCode, responseMessage, headerFields, lVar);
                    if (responseCode == 416) {
                        invalidResponseCodeException.initCause(new DataSourceException(0));
                    }
                    throw invalidResponseCodeException;
                }
                String contentType = this.o.getContentType();
                x<String> xVar = this.f9522k;
                if (xVar == null || xVar.evaluate(contentType)) {
                    if (responseCode == 200) {
                        long j3 = lVar.f9471f;
                        if (j3 != 0) {
                            j2 = j3;
                        }
                    }
                    this.r = j2;
                    if (!lVar.b(1)) {
                        long j4 = lVar.f9472g;
                        long j5 = -1;
                        if (j4 != -1) {
                            this.s = j4;
                        } else {
                            long a2 = a(this.o);
                            if (a2 != -1) {
                                j5 = a2 - this.r;
                            }
                            this.s = j5;
                        }
                    } else {
                        this.s = lVar.f9472g;
                    }
                    try {
                        this.p = this.o.getInputStream();
                        this.q = true;
                        c(lVar);
                        return this.s;
                    } catch (IOException e2) {
                        d();
                        throw new HttpDataSource.HttpDataSourceException(e2, lVar, 1);
                    }
                } else {
                    d();
                    throw new HttpDataSource.InvalidContentTypeException(contentType, lVar);
                }
            } catch (IOException e3) {
                d();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + lVar.f9466a.toString(), e3, lVar, 1);
            }
        } catch (IOException e4) {
            throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + lVar.f9466a.toString(), e4, lVar, 1);
        }
    }

    public final void d() {
        HttpURLConnection httpURLConnection = this.o;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                p.a("DefaultHttpDataSource", "Unexpected error while disconnecting", e2);
            }
            this.o = null;
        }
    }

    public final HttpURLConnection a(URL url, int i2, byte[] bArr, long j2, long j3, boolean z, boolean z2, boolean z3) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f9519h);
        httpURLConnection.setReadTimeout(this.f9520i);
        HttpDataSource.c cVar = this.f9523l;
        if (cVar != null) {
            for (Map.Entry next : cVar.a().entrySet()) {
                httpURLConnection.setRequestProperty((String) next.getKey(), (String) next.getValue());
            }
        }
        for (Map.Entry next2 : this.m.a().entrySet()) {
            httpURLConnection.setRequestProperty((String) next2.getKey(), (String) next2.getValue());
        }
        if (!(j2 == 0 && j3 == -1)) {
            String str = "bytes=" + j2 + "-";
            if (j3 != -1) {
                str = str + ((j2 + j3) - 1);
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty(C1046a.HEADER_USER_AGENT, this.f9521j);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        if (z2) {
            httpURLConnection.setRequestProperty("Icy-MetaData", "1");
        }
        httpURLConnection.setInstanceFollowRedirects(z3);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(l.a(i2));
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    public static URL a(URL url, String str) {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if ("https".equals(protocol) || "http".equals(protocol)) {
                return url2;
            }
            throw new ProtocolException("Unsupported protocol redirect: " + protocol);
        }
        throw new ProtocolException("Null location redirect");
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static long a(java.net.HttpURLConnection r10) {
        /*
            java.lang.String r0 = "Content-Length"
            java.lang.String r0 = r10.getHeaderField(r0)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            java.lang.String r2 = "]"
            java.lang.String r3 = "DefaultHttpDataSource"
            if (r1 != 0) goto L_0x002c
            long r4 = java.lang.Long.parseLong(r0)     // Catch:{ NumberFormatException -> 0x0015 }
            goto L_0x002e
        L_0x0015:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "Unexpected Content-Length ["
            r1.append(r4)
            r1.append(r0)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            c.e.a.a.o.p.b(r3, r1)
        L_0x002c:
            r4 = -1
        L_0x002e:
            java.lang.String r1 = "Content-Range"
            java.lang.String r10 = r10.getHeaderField(r1)
            boolean r1 = android.text.TextUtils.isEmpty(r10)
            if (r1 != 0) goto L_0x00a4
            java.util.regex.Pattern r1 = f9516e
            java.util.regex.Matcher r1 = r1.matcher(r10)
            boolean r6 = r1.find()
            if (r6 == 0) goto L_0x00a4
            r6 = 2
            java.lang.String r6 = r1.group(r6)     // Catch:{ NumberFormatException -> 0x008d }
            long r6 = java.lang.Long.parseLong(r6)     // Catch:{ NumberFormatException -> 0x008d }
            r8 = 1
            java.lang.String r1 = r1.group(r8)     // Catch:{ NumberFormatException -> 0x008d }
            long r8 = java.lang.Long.parseLong(r1)     // Catch:{ NumberFormatException -> 0x008d }
            long r6 = r6 - r8
            r8 = 1
            long r6 = r6 + r8
            r8 = 0
            int r1 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r1 >= 0) goto L_0x0064
            r4 = r6
            goto L_0x00a4
        L_0x0064:
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 == 0) goto L_0x00a4
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ NumberFormatException -> 0x008d }
            r1.<init>()     // Catch:{ NumberFormatException -> 0x008d }
            java.lang.String r8 = "Inconsistent headers ["
            r1.append(r8)     // Catch:{ NumberFormatException -> 0x008d }
            r1.append(r0)     // Catch:{ NumberFormatException -> 0x008d }
            java.lang.String r0 = "] ["
            r1.append(r0)     // Catch:{ NumberFormatException -> 0x008d }
            r1.append(r10)     // Catch:{ NumberFormatException -> 0x008d }
            r1.append(r2)     // Catch:{ NumberFormatException -> 0x008d }
            java.lang.String r0 = r1.toString()     // Catch:{ NumberFormatException -> 0x008d }
            c.e.a.a.o.p.d(r3, r0)     // Catch:{ NumberFormatException -> 0x008d }
            long r0 = java.lang.Math.max(r4, r6)     // Catch:{ NumberFormatException -> 0x008d }
            r4 = r0
            goto L_0x00a4
        L_0x008d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unexpected Content-Range ["
            r0.append(r1)
            r0.append(r10)
            r0.append(r2)
            java.lang.String r10 = r0.toString()
            c.e.a.a.o.p.b(r3, r10)
        L_0x00a4:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.n.r.a(java.net.HttpURLConnection):long");
    }

    public final int a(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.s;
        if (j2 != -1) {
            long j3 = j2 - this.u;
            if (j3 == 0) {
                return -1;
            }
            i3 = (int) Math.min((long) i3, j3);
        }
        int read = this.p.read(bArr, i2, i3);
        if (read != -1) {
            this.u += (long) read;
            a(read);
            return read;
        } else if (this.s == -1) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public static void a(HttpURLConnection httpURLConnection, long j2) {
        int i2 = I.f9565a;
        if (i2 == 19 || i2 == 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j2 == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j2 <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (Exception unused) {
            }
        }
    }
}
