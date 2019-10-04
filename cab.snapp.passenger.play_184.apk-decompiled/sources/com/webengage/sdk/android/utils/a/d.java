package com.webengage.sdk.android.utils.a;

import android.content.Context;
import android.net.TrafficStats;
import android.os.Build;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.a.g;
import com.webengage.sdk.android.utils.k;
import io.fabric.sdk.android.services.network.c;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class d extends a {
    String d = null;
    g e = null;
    private Context f = null;

    /* renamed from: com.webengage.sdk.android.utils.a.d$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5581a = new int[a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|12) */
        /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                com.webengage.sdk.android.utils.a.d$a[] r0 = com.webengage.sdk.android.utils.a.d.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5581a = r0
                int[] r0 = f5581a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.utils.a.d$a r1 = com.webengage.sdk.android.utils.a.d.a.MAX_AGE     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5581a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.utils.a.d$a r1 = com.webengage.sdk.android.utils.a.d.a.LAST_MODIFIED     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5581a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.webengage.sdk.android.utils.a.d$a r1 = com.webengage.sdk.android.utils.a.d.a.ETAG     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f5581a     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.webengage.sdk.android.utils.a.d$a r1 = com.webengage.sdk.android.utils.a.d.a.EXPIRES     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = f5581a     // Catch:{ NoSuchFieldError -> 0x0040 }
                com.webengage.sdk.android.utils.a.d$a r1 = com.webengage.sdk.android.utils.a.d.a.CACHE_CONTROL     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.a.d.AnonymousClass1.<clinit>():void");
        }
    }

    enum a {
        MAX_AGE,
        LAST_MODIFIED,
        ETAG,
        EXPIRES,
        CACHE_CONTROL
    }

    d(Context context, f fVar) {
        super(context, fVar);
        this.d = a(fVar.a());
        this.f = context;
    }

    private String a(String str) {
        return str;
    }

    /* JADX WARNING: type inference failed for: r4v0, types: [java.util.Map<java.lang.String, java.util.List<java.lang.String>>, java.util.Map] */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0034, code lost:
        if (r4.get(r5) != null) goto L_0x0036;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0036, code lost:
        r4 = r4.get(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0041, code lost:
        if (r4.get(r5) != null) goto L_0x0036;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r4.get(r5) != null) goto L_0x0036;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r4, com.webengage.sdk.android.utils.a.d.a r5) {
        /*
            r3 = this;
            int[] r0 = com.webengage.sdk.android.utils.a.d.AnonymousClass1.f5581a
            int r5 = r5.ordinal()
            r5 = r0[r5]
            r0 = 1
            java.lang.String r1 = "cache-control"
            r2 = 0
            if (r5 == r0) goto L_0x004d
            r0 = 2
            if (r5 == r0) goto L_0x0044
            r0 = 3
            if (r5 == r0) goto L_0x003b
            r0 = 4
            if (r5 == r0) goto L_0x002e
            r0 = 5
            if (r5 == r0) goto L_0x001b
            goto L_0x007f
        L_0x001b:
            java.lang.Object r5 = r4.get(r1)
            if (r5 == 0) goto L_0x007f
            java.lang.Object r4 = r4.get(r1)
        L_0x0025:
            java.util.List r4 = (java.util.List) r4
            java.lang.Object r4 = r4.get(r2)
            java.lang.String r4 = (java.lang.String) r4
            return r4
        L_0x002e:
            java.lang.String r5 = "expires"
            java.lang.Object r0 = r4.get(r5)
            if (r0 == 0) goto L_0x007f
        L_0x0036:
            java.lang.Object r4 = r4.get(r5)
            goto L_0x0025
        L_0x003b:
            java.lang.String r5 = "etag"
            java.lang.Object r0 = r4.get(r5)
            if (r0 == 0) goto L_0x007f
            goto L_0x0036
        L_0x0044:
            java.lang.String r5 = "last-modified"
            java.lang.Object r0 = r4.get(r5)
            if (r0 == 0) goto L_0x007f
            goto L_0x0036
        L_0x004d:
            java.lang.Object r5 = r4.get(r1)
            if (r5 == 0) goto L_0x007f
            java.lang.Object r4 = r4.get(r1)
            java.util.List r4 = (java.util.List) r4
            java.lang.Object r4 = r4.get(r2)
            java.lang.String r4 = (java.lang.String) r4
            java.lang.String r5 = "max-age"
            boolean r0 = r4.contains(r5)
            if (r0 == 0) goto L_0x007f
            java.lang.String r0 = ","
            int r0 = r4.indexOf(r0)
            int r5 = r4.indexOf(r5)
            int r5 = r5 + 8
            r1 = -1
            if (r0 != r1) goto L_0x007a
            int r0 = r4.length()
        L_0x007a:
            java.lang.String r4 = r4.substring(r5, r0)
            return r4
        L_0x007f:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.a.d.a(java.util.Map, com.webengage.sdk.android.utils.a.d$a):java.lang.String");
    }

    private void a(Writer writer, Object obj) {
        writer.write(obj instanceof Map ? k.a((Map<String, String>) (Map) obj) : obj.toString());
        writer.close();
    }

    private g h() {
        OutputStream outputStream;
        g.a aVar = new g.a();
        aVar.a(this.f5578b.e());
        aVar.c(this.f5578b.f());
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(WebEngageConstant.f5566a);
        }
        aVar.b(this.d);
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f5578b.a()).openConnection();
            httpURLConnection.setRequestMethod(this.f5578b.b().toString());
            httpURLConnection.setConnectTimeout(60000);
            httpURLConnection.setReadTimeout(20000);
            if (this.f5578b.c() != null) {
                for (Map.Entry next : this.f5578b.c().entrySet()) {
                    httpURLConnection.setRequestProperty((String) next.getKey(), (String) next.getValue());
                }
                httpURLConnection.setRequestProperty(c.HEADER_ACCEPT_ENCODING, c.ENCODING_GZIP);
            }
            if (!e.GET.toString().equalsIgnoreCase(this.f5578b.b().toString())) {
                httpURLConnection.setDoOutput(true);
            }
            httpURLConnection.setDoInput(true);
            Object d2 = this.f5578b.d();
            if (d2 != null) {
                if (this.f5578b.c() == null || !this.f5578b.c().containsKey(c.HEADER_CONTENT_ENCODING) || !c.ENCODING_GZIP.equalsIgnoreCase(this.f5578b.c().get(c.HEADER_CONTENT_ENCODING))) {
                    outputStream = httpURLConnection.getOutputStream();
                    a((Writer) new OutputStreamWriter(outputStream), d2);
                } else {
                    httpURLConnection.setRequestProperty(c.HEADER_CONTENT_ENCODING, c.ENCODING_GZIP);
                    outputStream = httpURLConnection.getOutputStream();
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                    a((Writer) new OutputStreamWriter(gZIPOutputStream), d2);
                    gZIPOutputStream.close();
                }
                outputStream.close();
            }
            aVar.b(httpURLConnection.getResponseCode());
            if (httpURLConnection.getResponseCode() == 304 && e.GET.equals(this.f5578b.b())) {
                aVar.a(false);
            }
            HashMap hashMap = new HashMap();
            Map headerFields = httpURLConnection.getHeaderFields();
            if (headerFields != null) {
                for (Map.Entry entry : headerFields.entrySet()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll((Collection) entry.getValue());
                    if (entry.getKey() != null) {
                        hashMap.put(((String) entry.getKey()).toLowerCase(), arrayList);
                    }
                }
            }
            aVar.a((Map<String, List<String>>) hashMap);
            g a2 = aVar.a();
            if (a2.d() == 200) {
                g a3 = a2.o().a(k.a(httpURLConnection) ? new GZIPInputStream(httpURLConnection.getInputStream()) : httpURLConnection.getInputStream()).a();
                synchronized (c) {
                    for (c a4 : c) {
                        a3 = a4.a(a3, this.f);
                    }
                }
                a2 = a3.o().a(System.currentTimeMillis()).a();
                if (this.f5578b.g() != 3 && a2.i()) {
                    return a2.o().a((InputStream) new ByteArrayInputStream(b(a2))).a();
                }
            } else if (a2.d() >= 400) {
                try {
                    a2 = a2.o().b(httpURLConnection.getErrorStream()).a();
                } catch (Exception unused) {
                }
            }
            return a2;
        } catch (Exception e2) {
            aVar.a(e2);
            return aVar.a();
        }
    }

    /* access modifiers changed from: protected */
    public g a(g gVar) {
        if (this.e == null) {
            this.e = b.a(this.f).a(this.d);
        }
        if (gVar != null) {
            this.e = this.e.o().b(gVar.d()).a();
        }
        return this.e.o().a(this.f5578b.e()).c(this.f5578b.f()).a();
    }

    /* access modifiers changed from: protected */
    public boolean a() {
        this.e = b.a(this.f).a(this.d);
        return this.e.i();
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return false;
    }

    /* access modifiers changed from: protected */
    public byte[] b(g gVar) {
        return b.a(this.f).a(gVar);
    }

    /* access modifiers changed from: protected */
    public g c() {
        if (this.e == null) {
            this.e = b.a(this.f).a(this.d);
        }
        String a2 = a(this.e.b(), a.ETAG);
        String a3 = a(this.e.b(), a.LAST_MODIFIED);
        if (a2 == null && a3 == null) {
            return h();
        }
        Map c = this.f5578b.c();
        if (c == null) {
            c = new HashMap();
        }
        if (a2 != null) {
            c.put(c.HEADER_IF_NONE_MATCH, a2);
        } else {
            c.put("If-Modified-Since", a3);
        }
        this.f5578b = this.f5578b.h().a((Map<String, String>) c).a();
        return h();
    }

    /* access modifiers changed from: protected */
    public g d() {
        return h();
    }

    /* access modifiers changed from: package-private */
    public g e() {
        return this.e;
    }
}
