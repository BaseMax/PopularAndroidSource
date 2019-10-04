package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.GZIPInputStream;

public class HttpRequest {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f14927a = new String[0];

    /* renamed from: b  reason: collision with root package name */
    public static b f14928b = b.f14941a;

    /* renamed from: c  reason: collision with root package name */
    public HttpURLConnection f14929c = null;

    /* renamed from: d  reason: collision with root package name */
    public final URL f14930d;

    /* renamed from: e  reason: collision with root package name */
    public final String f14931e;

    /* renamed from: f  reason: collision with root package name */
    public d f14932f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f14933g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f14934h = true;

    /* renamed from: i  reason: collision with root package name */
    public boolean f14935i = false;

    /* renamed from: j  reason: collision with root package name */
    public int f14936j = 8192;

    /* renamed from: k  reason: collision with root package name */
    public String f14937k;

    /* renamed from: l  reason: collision with root package name */
    public int f14938l;

    public static class HttpRequestException extends RuntimeException {
        public static final long serialVersionUID = -1170466989781746231L;

        public HttpRequestException(IOException iOException) {
            super(iOException);
        }

        public IOException getCause() {
            return (IOException) super.getCause();
        }
    }

    protected static abstract class a<V> extends c<V> {

        /* renamed from: a  reason: collision with root package name */
        public final Closeable f14939a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f14940b;

        public a(Closeable closeable, boolean z) {
            this.f14939a = closeable;
            this.f14940b = z;
        }

        public void a() {
            Closeable closeable = this.f14939a;
            if (closeable instanceof Flushable) {
                ((Flushable) closeable).flush();
            }
            if (this.f14940b) {
                try {
                    this.f14939a.close();
                } catch (IOException unused) {
                }
            } else {
                this.f14939a.close();
            }
        }
    }

    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f14941a = new e();

        HttpURLConnection a(URL url);

        HttpURLConnection a(URL url, Proxy proxy);
    }

    protected static abstract class c<V> implements Callable<V> {
        public abstract void a();

        public abstract V b();

        public V call() {
            boolean z = true;
            try {
                V b2 = b();
                try {
                    a();
                    return b2;
                } catch (IOException e2) {
                    throw new HttpRequestException(e2);
                }
            } catch (HttpRequestException e3) {
                throw e3;
            } catch (IOException e4) {
                throw new HttpRequestException(e4);
            } catch (Throwable th) {
                th = th;
                a();
                throw th;
            }
        }
    }

    public static class d extends BufferedOutputStream {

        /* renamed from: a  reason: collision with root package name */
        public final CharsetEncoder f14942a;

        public d(OutputStream outputStream, String str, int i2) {
            super(outputStream, i2);
            this.f14942a = Charset.forName(HttpRequest.d(str)).newEncoder();
        }

        public d e(String str) {
            ByteBuffer encode = this.f14942a.encode(CharBuffer.wrap(str));
            super.write(encode.array(), 0, encode.limit());
            return this;
        }
    }

    public HttpRequest(CharSequence charSequence, String str) {
        try {
            this.f14930d = new URL(charSequence.toString());
            this.f14931e = str;
        } catch (MalformedURLException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public static StringBuilder b(String str, StringBuilder sb) {
        if (str.indexOf(58) + 2 == str.lastIndexOf(47)) {
            sb.append('/');
        }
        return sb;
    }

    public static HttpRequest c(CharSequence charSequence) {
        return new HttpRequest(charSequence, "GET");
    }

    public static String d(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }

    public static HttpRequest e(CharSequence charSequence) {
        return new HttpRequest(charSequence, "PUT");
    }

    public int f(String str) {
        return a(str, -1);
    }

    public int g() {
        try {
            e();
            return l().getResponseCode();
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public String h() {
        return e("Content-Encoding");
    }

    public int i() {
        return f("Content-Length");
    }

    public final HttpURLConnection j() {
        HttpURLConnection httpURLConnection;
        try {
            if (this.f14937k != null) {
                httpURLConnection = f14928b.a(this.f14930d, k());
            } else {
                httpURLConnection = f14928b.a(this.f14930d);
            }
            httpURLConnection.setRequestMethod(this.f14931e);
            return httpURLConnection;
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public final Proxy k() {
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f14937k, this.f14938l));
    }

    public HttpURLConnection l() {
        if (this.f14929c == null) {
            this.f14929c = j();
        }
        return this.f14929c;
    }

    public String m() {
        return l().getRequestMethod();
    }

    public HttpRequest n() {
        if (this.f14932f != null) {
            return this;
        }
        l().setDoOutput(true);
        this.f14932f = new d(l().getOutputStream(), b(l().getRequestProperty("Content-Type"), "charset"), this.f14936j);
        return this;
    }

    public HttpRequest o() {
        if (!this.f14933g) {
            this.f14933g = true;
            c("multipart/form-data; boundary=00content0boundary00");
            n();
            this.f14932f.e("--00content0boundary00\r\n");
        } else {
            this.f14932f.e("\r\n--00content0boundary00\r\n");
        }
        return this;
    }

    public InputStream p() {
        InputStream inputStream;
        if (g() < 400) {
            try {
                inputStream = l().getInputStream();
            } catch (IOException e2) {
                throw new HttpRequestException(e2);
            }
        } else {
            inputStream = l().getErrorStream();
            if (inputStream == null) {
                try {
                    inputStream = l().getInputStream();
                } catch (IOException e3) {
                    throw new HttpRequestException(e3);
                }
            }
        }
        if (!this.f14935i || !"gzip".equals(h())) {
            return inputStream;
        }
        try {
            return new GZIPInputStream(inputStream);
        } catch (IOException e4) {
            throw new HttpRequestException(e4);
        }
    }

    public URL q() {
        return l().getURL();
    }

    public String toString() {
        return m() + ' ' + q();
    }

    public static HttpRequest d(CharSequence charSequence) {
        return new HttpRequest(charSequence, "POST");
    }

    public ByteArrayOutputStream c() {
        int i2 = i();
        if (i2 > 0) {
            return new ByteArrayOutputStream(i2);
        }
        return new ByteArrayOutputStream();
    }

    public String e(String str) {
        f();
        return l().getHeaderField(str);
    }

    public HttpRequest f() {
        try {
            e();
            return this;
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public static StringBuilder a(String str, StringBuilder sb) {
        int indexOf = str.indexOf(63);
        int length = sb.length() - 1;
        if (indexOf == -1) {
            sb.append('?');
        } else if (indexOf < length && str.charAt(length) != '&') {
            sb.append('&');
        }
        return sb;
    }

    public static String b(CharSequence charSequence) {
        try {
            URL url = new URL(charSequence.toString());
            String host = url.getHost();
            if (url.getPort() != -1) {
                host = host + ':' + Integer.toString(r1);
            }
            try {
                URI uri = new URI(url.getProtocol(), host, url.getPath(), url.getQuery(), url.getRef());
                String aSCIIString = uri.toASCIIString();
                int indexOf = aSCIIString.indexOf(63);
                if (indexOf <= 0) {
                    return aSCIIString;
                }
                if (indexOf + 1 >= aSCIIString.length()) {
                    return aSCIIString;
                }
                return aSCIIString.substring(0, r0) + aSCIIString.substring(r0).replace("+", "%2B").replace("#", "%23");
            } catch (URISyntaxException e2) {
                IOException iOException = new IOException("Parsing URI failed");
                iOException.initCause(e2);
                throw new HttpRequestException(iOException);
            }
        } catch (IOException e3) {
            throw new HttpRequestException(e3);
        }
    }

    public String d(String str, String str2) {
        return b(e(str), str2);
    }

    public String d() {
        return d("Content-Type", "charset");
    }

    public HttpRequest e() {
        d dVar = this.f14932f;
        if (dVar == null) {
            return this;
        }
        if (this.f14933g) {
            dVar.e("\r\n--00content0boundary00--\r\n");
        }
        if (this.f14934h) {
            try {
                this.f14932f.close();
            } catch (IOException unused) {
            }
        } else {
            this.f14932f.close();
        }
        this.f14932f = null;
        return this;
    }

    public HttpRequest f(String str, String str2) {
        f((CharSequence) str);
        f((CharSequence) ": ");
        f((CharSequence) str2);
        f((CharSequence) "\r\n");
        return this;
    }

    public HttpRequest c(String str, String str2) {
        l().setRequestProperty(str, str2);
        return this;
    }

    public HttpRequest f(CharSequence charSequence) {
        try {
            n();
            this.f14932f.e(charSequence.toString());
            return this;
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public HttpRequest c(String str) {
        a(str, (String) null);
        return this;
    }

    public static String a(CharSequence charSequence, Map<?, ?> map) {
        String charSequence2 = charSequence.toString();
        if (map == null || map.isEmpty()) {
            return charSequence2;
        }
        StringBuilder sb = new StringBuilder(charSequence2);
        b(charSequence2, sb);
        a(charSequence2, sb);
        Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
        Map.Entry next = it.next();
        sb.append(next.getKey().toString());
        sb.append('=');
        Object value = next.getValue();
        if (value != null) {
            sb.append(value);
        }
        while (it.hasNext()) {
            sb.append('&');
            Map.Entry next2 = it.next();
            sb.append(next2.getKey().toString());
            sb.append('=');
            Object value2 = next2.getValue();
            if (value2 != null) {
                sb.append(value2);
            }
        }
        return sb.toString();
    }

    public HttpRequest e(String str, String str2) {
        a(str, (String) null, str2);
        return this;
    }

    public static HttpRequest b(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String a2 = a(charSequence, map);
        if (z) {
            a2 = b((CharSequence) a2);
        }
        return d((CharSequence) a2);
    }

    public String b(String str) {
        ByteArrayOutputStream c2 = c();
        try {
            a((InputStream) b(), (OutputStream) c2);
            return c2.toString(d(str));
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public BufferedInputStream b() {
        return new BufferedInputStream(p(), this.f14936j);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x006f A[EDGE_INSN: B:30:0x006f->B:29:0x006f ?: BREAK  , SYNTHETIC] */
    public java.lang.String b(java.lang.String r9, java.lang.String r10) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L_0x006f
            int r1 = r9.length()
            if (r1 != 0) goto L_0x000a
            goto L_0x006f
        L_0x000a:
            int r1 = r9.length()
            r2 = 59
            int r3 = r9.indexOf(r2)
            r4 = 1
            int r3 = r3 + r4
            if (r3 == 0) goto L_0x006f
            if (r3 != r1) goto L_0x001b
            goto L_0x006f
        L_0x001b:
            int r5 = r9.indexOf(r2, r3)
            r6 = -1
            if (r5 != r6) goto L_0x0023
        L_0x0022:
            r5 = r1
        L_0x0023:
            if (r3 >= r5) goto L_0x006f
            r7 = 61
            int r7 = r9.indexOf(r7, r3)
            if (r7 == r6) goto L_0x0066
            if (r7 >= r5) goto L_0x0066
            java.lang.String r3 = r9.substring(r3, r7)
            java.lang.String r3 = r3.trim()
            boolean r3 = r10.equals(r3)
            if (r3 == 0) goto L_0x0066
            int r7 = r7 + 1
            java.lang.String r3 = r9.substring(r7, r5)
            java.lang.String r3 = r3.trim()
            int r7 = r3.length()
            if (r7 == 0) goto L_0x0066
            r9 = 2
            if (r7 <= r9) goto L_0x0065
            r9 = 0
            char r9 = r3.charAt(r9)
            r10 = 34
            if (r10 != r9) goto L_0x0065
            int r7 = r7 - r4
            char r9 = r3.charAt(r7)
            if (r10 != r9) goto L_0x0065
            java.lang.String r9 = r3.substring(r4, r7)
            return r9
        L_0x0065:
            return r3
        L_0x0066:
            int r3 = r5 + 1
            int r5 = r9.indexOf(r2, r3)
            if (r5 != r6) goto L_0x0023
            goto L_0x0022
        L_0x006f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.HttpRequest.b(java.lang.String, java.lang.String):java.lang.String");
    }

    public static HttpRequest a(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String a2 = a(charSequence, map);
        if (z) {
            a2 = b((CharSequence) a2);
        }
        return c((CharSequence) a2);
    }

    public static HttpRequest a(CharSequence charSequence) {
        return new HttpRequest(charSequence, "DELETE");
    }

    public String a() {
        return b(d());
    }

    public HttpRequest a(int i2) {
        l().setConnectTimeout(i2);
        return this;
    }

    public HttpRequest a(Map.Entry<String, String> entry) {
        c(entry.getKey(), entry.getValue());
        return this;
    }

    public int a(String str, int i2) {
        f();
        return l().getHeaderFieldInt(str, i2);
    }

    public HttpRequest a(boolean z) {
        l().setUseCaches(z);
        return this;
    }

    public HttpRequest a(String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            c("Content-Type", str);
            return this;
        }
        c("Content-Type", str + "; charset=" + str2);
        return this;
    }

    public HttpRequest b(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=\"");
        sb.append(str);
        if (str2 != null) {
            sb.append("\"; filename=\"");
            sb.append(str2);
        }
        sb.append('\"');
        f("Content-Disposition", sb.toString());
        if (str3 != null) {
            f("Content-Type", str3);
        }
        f((CharSequence) "\r\n");
        return this;
    }

    public HttpRequest a(InputStream inputStream, OutputStream outputStream) {
        d dVar = new d(this, inputStream, this.f14934h, inputStream, outputStream);
        return (HttpRequest) dVar.call();
    }

    public HttpRequest a(String str, String str2, String str3) {
        a(str, str2, (String) null, str3);
        return this;
    }

    public HttpRequest a(String str, String str2, String str3, String str4) {
        try {
            o();
            b(str, str2, str3);
            this.f14932f.e(str4);
            return this;
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public HttpRequest a(String str, Number number) {
        a(str, (String) null, number);
        return this;
    }

    public HttpRequest a(String str, String str2, Number number) {
        a(str, str2, number != null ? number.toString() : null);
        return this;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0023 A[SYNTHETIC, Splitter:B:19:0x0023] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public io.fabric.sdk.android.services.network.HttpRequest a(java.lang.String r4, java.lang.String r5, java.lang.String r6, java.io.File r7) {
        /*
            r3 = this;
            r0 = 0
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch:{ IOException -> 0x001a }
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ IOException -> 0x001a }
            r2.<init>(r7)     // Catch:{ IOException -> 0x001a }
            r1.<init>(r2)     // Catch:{ IOException -> 0x001a }
            r3.a((java.lang.String) r4, (java.lang.String) r5, (java.lang.String) r6, (java.io.InputStream) r1)     // Catch:{ IOException -> 0x0015, all -> 0x0012 }
            r1.close()     // Catch:{ IOException -> 0x0011 }
        L_0x0011:
            return r3
        L_0x0012:
            r4 = move-exception
            r0 = r1
            goto L_0x0021
        L_0x0015:
            r4 = move-exception
            r0 = r1
            goto L_0x001b
        L_0x0018:
            r4 = move-exception
            goto L_0x0021
        L_0x001a:
            r4 = move-exception
        L_0x001b:
            io.fabric.sdk.android.services.network.HttpRequest$HttpRequestException r5 = new io.fabric.sdk.android.services.network.HttpRequest$HttpRequestException     // Catch:{ all -> 0x0018 }
            r5.<init>(r4)     // Catch:{ all -> 0x0018 }
            throw r5     // Catch:{ all -> 0x0018 }
        L_0x0021:
            if (r0 == 0) goto L_0x0026
            r0.close()     // Catch:{ IOException -> 0x0026 }
        L_0x0026:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.HttpRequest.a(java.lang.String, java.lang.String, java.lang.String, java.io.File):io.fabric.sdk.android.services.network.HttpRequest");
    }

    public HttpRequest a(String str, String str2, String str3, InputStream inputStream) {
        try {
            o();
            b(str, str2, str3);
            a(inputStream, (OutputStream) this.f14932f);
            return this;
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }
}
