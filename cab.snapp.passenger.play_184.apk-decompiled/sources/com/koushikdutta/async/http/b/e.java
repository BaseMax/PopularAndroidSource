package com.koushikdutta.async.http.b;

import android.net.Uri;
import android.util.Base64;
import com.koushikdutta.async.af;
import com.koushikdutta.async.http.b;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.http.y;
import com.koushikdutta.async.j;
import com.koushikdutta.async.l;
import com.koushikdutta.async.v;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.CacheResponse;
import java.nio.ByteBuffer;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.SSLEngine;

public class e extends y {
    public static final String CACHE = "cache";
    public static final String CONDITIONAL_CACHE = "conditional-cache";
    public static final int ENTRY_BODY = 1;
    public static final int ENTRY_COUNT = 2;
    public static final int ENTRY_METADATA = 0;
    public static final String SERVED_FROM = "X-Served-From";

    /* renamed from: a  reason: collision with root package name */
    private boolean f4653a = true;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public int f4654b;
    /* access modifiers changed from: private */
    public int c;
    /* access modifiers changed from: private */
    public com.koushikdutta.async.e.c d;
    /* access modifiers changed from: private */
    public com.koushikdutta.async.h e;
    private int f;
    private int g;
    private int h;
    private int i;

    static class a extends v {
        h d;
        l e;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        public final void report(Exception exc) {
            super.report(exc);
            if (exc != null) {
                abort();
            }
        }

        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0047 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onDataAvailable(com.koushikdutta.async.n r4, com.koushikdutta.async.l r5) {
            /*
                r3 = this;
                com.koushikdutta.async.l r0 = r3.e
                if (r0 == 0) goto L_0x0013
                super.onDataAvailable(r4, r0)
                com.koushikdutta.async.l r0 = r3.e
                int r0 = r0.remaining()
                if (r0 <= 0) goto L_0x0010
                return
            L_0x0010:
                r0 = 0
                r3.e = r0
            L_0x0013:
                com.koushikdutta.async.l r0 = new com.koushikdutta.async.l
                r0.<init>()
                com.koushikdutta.async.http.b.e$h r1 = r3.d     // Catch:{ Exception -> 0x0047 }
                if (r1 == 0) goto L_0x003e
                com.koushikdutta.async.http.b.e$h r1 = r3.d     // Catch:{ Exception -> 0x0047 }
                r2 = 1
                java.io.FileOutputStream r1 = r1.a(r2)     // Catch:{ Exception -> 0x0047 }
                if (r1 == 0) goto L_0x003b
            L_0x0025:
                boolean r2 = r5.isEmpty()     // Catch:{ Exception -> 0x0047 }
                if (r2 != 0) goto L_0x003e
                java.nio.ByteBuffer r2 = r5.remove()     // Catch:{ Exception -> 0x0047 }
                com.koushikdutta.async.l.writeOutputStream(r1, r2)     // Catch:{ all -> 0x0036 }
                r0.add((java.nio.ByteBuffer) r2)     // Catch:{ Exception -> 0x0047 }
                goto L_0x0025
            L_0x0036:
                r1 = move-exception
                r0.add((java.nio.ByteBuffer) r2)     // Catch:{ Exception -> 0x0047 }
                throw r1     // Catch:{ Exception -> 0x0047 }
            L_0x003b:
                r3.abort()     // Catch:{ Exception -> 0x0047 }
            L_0x003e:
                r5.get((com.koushikdutta.async.l) r0)
                r0.get((com.koushikdutta.async.l) r5)
                goto L_0x004b
            L_0x0045:
                r4 = move-exception
                goto L_0x0065
            L_0x0047:
                r3.abort()     // Catch:{ all -> 0x0045 }
                goto L_0x003e
            L_0x004b:
                super.onDataAvailable(r4, r5)
                com.koushikdutta.async.http.b.e$h r4 = r3.d
                if (r4 == 0) goto L_0x0064
                int r4 = r5.remaining()
                if (r4 <= 0) goto L_0x0064
                com.koushikdutta.async.l r4 = new com.koushikdutta.async.l
                r4.<init>()
                r3.e = r4
                com.koushikdutta.async.l r4 = r3.e
                r5.get((com.koushikdutta.async.l) r4)
            L_0x0064:
                return
            L_0x0065:
                r5.get((com.koushikdutta.async.l) r0)
                r0.get((com.koushikdutta.async.l) r5)
                goto L_0x006d
            L_0x006c:
                throw r4
            L_0x006d:
                goto L_0x006c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.b.e.a.onDataAvailable(com.koushikdutta.async.n, com.koushikdutta.async.l):void");
        }

        public final void close() {
            abort();
            super.close();
        }

        public final void abort() {
            h hVar = this.d;
            if (hVar != null) {
                hVar.a();
                this.d = null;
            }
        }

        public final void commit() {
            h hVar = this.d;
            if (hVar != null) {
                com.koushikdutta.async.e.g.closeQuietly(hVar.c);
                if (!hVar.d) {
                    e.this.d.commitTempFiles(hVar.f4665a, hVar.f4666b);
                    int unused = e.this.f4654b = e.this.f4654b + 1;
                    hVar.d = true;
                }
                this.d = null;
            }
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        FileInputStream[] f4657a;

        /* renamed from: b  reason: collision with root package name */
        g f4658b;
        long c;
        f d;
    }

    static class c extends v {
        static final /* synthetic */ boolean h = (!e.class.desiredAssertionStatus());
        g d;
        l e = new l();
        boolean f;
        Runnable g = new Runnable() {
            public final void run() {
                c.this.a();
            }
        };
        private boolean i;
        private com.koushikdutta.async.e.a j = new com.koushikdutta.async.e.a();

        public c(g gVar, long j2) {
            this.d = gVar;
            this.j.setCurrentAlloc((int) j2);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.e.remaining() > 0) {
                super.onDataAvailable(this, this.e);
                if (this.e.remaining() > 0) {
                    return;
                }
            }
            try {
                ByteBuffer allocate = this.j.allocate();
                if (!h) {
                    if (allocate.position() != 0) {
                        throw new AssertionError();
                    }
                }
                int read = this.d.getBody().read(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                if (read == -1) {
                    l.reclaim(allocate);
                    this.f = true;
                    report(null);
                    return;
                }
                this.j.track((long) read);
                allocate.limit(read);
                this.e.add(allocate);
                super.onDataAvailable(this, this.e);
                if (this.e.remaining() <= 0) {
                    getServer().postDelayed(this.g, 10);
                }
            } catch (IOException e2) {
                this.f = true;
                report(e2);
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            getServer().post(this.g);
        }

        public void resume() {
            this.i = false;
            b();
        }

        public boolean isPaused() {
            return this.i;
        }

        public void close() {
            if (getServer().getAffinity() != Thread.currentThread()) {
                getServer().post(new Runnable() {
                    public final void run() {
                        c.this.close();
                    }
                });
                return;
            }
            this.e.recycle();
            com.koushikdutta.async.e.g.closeQuietly(this.d.getBody());
            super.close();
        }

        public void report(Exception exc) {
            if (this.f) {
                com.koushikdutta.async.e.g.closeQuietly(this.d.getBody());
                super.report(exc);
            }
        }
    }

    class d extends C0088e implements com.koushikdutta.async.e {
        public final X509Certificate[] getPeerCertificates() {
            return null;
        }

        public final SSLEngine getSSLEngine() {
            return null;
        }

        public d(g gVar, long j) {
            super(gVar, j);
        }
    }

    /* renamed from: com.koushikdutta.async.http.b.e$e  reason: collision with other inner class name */
    class C0088e extends c implements j {
        boolean j;
        boolean k;
        com.koushikdutta.async.a.a l;

        public void end() {
        }

        public com.koushikdutta.async.a.g getWriteableCallback() {
            return null;
        }

        public void setWriteableCallback(com.koushikdutta.async.a.g gVar) {
        }

        public C0088e(g gVar, long j2) {
            super(gVar, j2);
            this.f = true;
        }

        public final void report(Exception exc) {
            super.report(exc);
            if (!this.j) {
                this.j = true;
                com.koushikdutta.async.a.a aVar = this.l;
                if (aVar != null) {
                    aVar.onCompleted(exc);
                }
            }
        }

        public void write(l lVar) {
            lVar.recycle();
        }

        public boolean isOpen() {
            return this.k;
        }

        public void close() {
            this.k = false;
        }

        public com.koushikdutta.async.a.a getClosedCallback() {
            return this.l;
        }

        public void setClosedCallback(com.koushikdutta.async.a.a aVar) {
            this.l = aVar;
        }

        public com.koushikdutta.async.h getServer() {
            return e.this.e;
        }
    }

    static final class f {

        /* renamed from: a  reason: collision with root package name */
        final c f4661a;

        /* renamed from: b  reason: collision with root package name */
        private final String f4662b;
        private final c c;
        private final String d;
        private final String e;
        private final Certificate[] f;
        private final Certificate[] g;

        public f(InputStream inputStream) throws IOException {
            h hVar;
            Throwable th;
            try {
                hVar = new h(inputStream, com.koushikdutta.async.e.b.US_ASCII);
                try {
                    this.f4662b = hVar.readLine();
                    this.d = hVar.readLine();
                    this.c = new c();
                    int readInt = hVar.readInt();
                    for (int i = 0; i < readInt; i++) {
                        this.c.addLine(hVar.readLine());
                    }
                    this.f4661a = new c();
                    this.f4661a.setStatusLine(hVar.readLine());
                    int readInt2 = hVar.readInt();
                    for (int i2 = 0; i2 < readInt2; i2++) {
                        this.f4661a.addLine(hVar.readLine());
                    }
                    this.e = null;
                    this.f = null;
                    this.g = null;
                    com.koushikdutta.async.e.g.closeQuietly(hVar, inputStream);
                } catch (Throwable th2) {
                    th = th2;
                    com.koushikdutta.async.e.g.closeQuietly(hVar, inputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                Throwable th4 = th3;
                hVar = null;
                th = th4;
                com.koushikdutta.async.e.g.closeQuietly(hVar, inputStream);
                throw th;
            }
        }

        public f(Uri uri, c cVar, com.koushikdutta.async.http.d dVar, c cVar2) {
            this.f4662b = uri.toString();
            this.c = cVar;
            this.d = dVar.getMethod();
            this.f4661a = cVar2;
            this.e = null;
            this.f = null;
            this.g = null;
        }

        public final void writeTo(h hVar) throws IOException {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(hVar.a(0), com.koushikdutta.async.e.b.UTF_8));
            bufferedWriter.write(this.f4662b + 10);
            bufferedWriter.write(this.d + 10);
            bufferedWriter.write(Integer.toString(this.c.length()) + 10);
            for (int i = 0; i < this.c.length(); i++) {
                bufferedWriter.write(this.c.getFieldName(i) + ": " + this.c.getValue(i) + 10);
            }
            bufferedWriter.write(this.f4661a.getStatusLine() + 10);
            bufferedWriter.write(Integer.toString(this.f4661a.length()) + 10);
            for (int i2 = 0; i2 < this.f4661a.length(); i2++) {
                bufferedWriter.write(this.f4661a.getFieldName(i2) + ": " + this.f4661a.getValue(i2) + 10);
            }
            if (a()) {
                bufferedWriter.write(10);
                bufferedWriter.write(this.e + 10);
                a(bufferedWriter, this.f);
                a(bufferedWriter, this.g);
            }
            bufferedWriter.close();
        }

        /* access modifiers changed from: package-private */
        public final boolean a() {
            return this.f4662b.startsWith("https://");
        }

        private static void a(Writer writer, Certificate[] certificateArr) throws IOException {
            if (certificateArr == null) {
                writer.write("-1\n");
                return;
            }
            try {
                writer.write(Integer.toString(certificateArr.length) + 10);
                for (Certificate encoded : certificateArr) {
                    String encodeToString = Base64.encodeToString(encoded.getEncoded(), 0);
                    writer.write(encodeToString + 10);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        public final boolean matches(Uri uri, String str, Map<String, List<String>> map) {
            return this.f4662b.equals(uri.toString()) && this.d.equals(str) && new f(uri, this.f4661a).varyMatches(this.c.toMultimap(), map);
        }
    }

    static class g extends CacheResponse {

        /* renamed from: a  reason: collision with root package name */
        private final f f4663a;

        /* renamed from: b  reason: collision with root package name */
        private final FileInputStream f4664b;

        public g(f fVar, FileInputStream fileInputStream) {
            this.f4663a = fVar;
            this.f4664b = fileInputStream;
        }

        public final Map<String, List<String>> getHeaders() {
            return this.f4663a.f4661a.toMultimap();
        }

        public final FileInputStream getBody() {
            return this.f4664b;
        }
    }

    class h {

        /* renamed from: a  reason: collision with root package name */
        String f4665a;

        /* renamed from: b  reason: collision with root package name */
        File[] f4666b;
        FileOutputStream[] c = new FileOutputStream[2];
        boolean d;

        public h(String str) {
            this.f4665a = str;
            this.f4666b = e.this.d.getTempFiles(2);
        }

        /* access modifiers changed from: package-private */
        public final FileOutputStream a(int i) throws IOException {
            FileOutputStream[] fileOutputStreamArr = this.c;
            if (fileOutputStreamArr[i] == null) {
                fileOutputStreamArr[i] = new FileOutputStream(this.f4666b[i]);
            }
            return this.c[i];
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            com.koushikdutta.async.e.g.closeQuietly(this.c);
            com.koushikdutta.async.e.c.removeFiles(this.f4666b);
            if (!this.d) {
                int unused = e.this.c = e.this.c + 1;
                this.d = true;
            }
        }
    }

    private e() {
    }

    public static e addCache(com.koushikdutta.async.http.a aVar, File file, long j) throws IOException {
        for (com.koushikdutta.async.http.b bVar : aVar.getMiddleware()) {
            if (bVar instanceof e) {
                throw new IOException("Response cache already added to http client");
            }
        }
        e eVar = new e();
        eVar.e = aVar.getServer();
        eVar.d = new com.koushikdutta.async.e.c(file, j, false);
        aVar.insertMiddleware(eVar);
        return eVar;
    }

    public com.koushikdutta.async.e.c getFileCache() {
        return this.d;
    }

    public boolean getCaching() {
        return this.f4653a;
    }

    public void setCaching(boolean z) {
        this.f4653a = z;
    }

    public void removeFromCache(Uri uri) {
        getFileCache().remove(com.koushikdutta.async.e.c.toKeyString(uri));
    }

    public com.koushikdutta.async.b.a getSocket(final b.a aVar) {
        FileInputStream[] fileInputStreamArr;
        d dVar = new d(aVar.request.getUri(), c.fromMultimap(aVar.request.getHeaders().getMultiMap()));
        aVar.state.put("request-headers", dVar);
        if (this.d == null || !this.f4653a || dVar.isNoCache()) {
            this.h++;
            return null;
        }
        try {
            fileInputStreamArr = this.d.get(com.koushikdutta.async.e.c.toKeyString(aVar.request.getUri()), 2);
            if (fileInputStreamArr == null) {
                try {
                    this.h++;
                    return null;
                } catch (IOException unused) {
                    this.h++;
                    com.koushikdutta.async.e.g.closeQuietly(fileInputStreamArr);
                    return null;
                }
            } else {
                long available = (long) fileInputStreamArr[1].available();
                f fVar = new f(fileInputStreamArr[0]);
                if (!fVar.matches(aVar.request.getUri(), aVar.request.getMethod(), aVar.request.getHeaders().getMultiMap())) {
                    this.h++;
                    com.koushikdutta.async.e.g.closeQuietly(fileInputStreamArr);
                    return null;
                }
                g gVar = new g(fVar, fileInputStreamArr[1]);
                try {
                    Map<String, List<String>> headers = gVar.getHeaders();
                    FileInputStream body = gVar.getBody();
                    if (headers == null || body == null) {
                        this.h++;
                        com.koushikdutta.async.e.g.closeQuietly(fileInputStreamArr);
                        return null;
                    }
                    c fromMultimap = c.fromMultimap(headers);
                    f fVar2 = new f(aVar.request.getUri(), fromMultimap);
                    fromMultimap.set(io.fabric.sdk.android.services.network.c.HEADER_CONTENT_LENGTH, String.valueOf(available));
                    fromMultimap.removeAll(io.fabric.sdk.android.services.network.c.HEADER_CONTENT_ENCODING);
                    fromMultimap.removeAll("Transfer-Encoding");
                    fVar2.setLocalTimestamps(System.currentTimeMillis(), System.currentTimeMillis());
                    g chooseResponseSource = fVar2.chooseResponseSource(System.currentTimeMillis(), dVar);
                    if (chooseResponseSource == g.CACHE) {
                        aVar.request.logi("Response retrieved from cache");
                        final C0088e dVar2 = fVar.a() ? new d(gVar, available) : new C0088e(gVar, available);
                        dVar2.e.add(ByteBuffer.wrap(fromMultimap.toHeaderString().getBytes()));
                        this.e.post(new Runnable() {
                            public final void run() {
                                aVar.connectCallback.onConnectCompleted(null, dVar2);
                                dVar2.a();
                            }
                        });
                        this.g++;
                        aVar.state.put("socket-owner", this);
                        com.koushikdutta.async.b.h hVar = new com.koushikdutta.async.b.h();
                        hVar.setComplete();
                        return hVar;
                    } else if (chooseResponseSource == g.CONDITIONAL_CACHE) {
                        aVar.request.logi("Response may be served from conditional cache");
                        b bVar = new b();
                        bVar.f4657a = fileInputStreamArr;
                        bVar.c = available;
                        bVar.d = fVar2;
                        bVar.f4658b = gVar;
                        aVar.state.put("cache-data", bVar);
                        return null;
                    } else {
                        aVar.request.logd("Response can not be served from cache");
                        this.h++;
                        com.koushikdutta.async.e.g.closeQuietly(fileInputStreamArr);
                        return null;
                    }
                } catch (Exception unused2) {
                    this.h++;
                    com.koushikdutta.async.e.g.closeQuietly(fileInputStreamArr);
                    return null;
                }
            }
        } catch (IOException unused3) {
            fileInputStreamArr = null;
            this.h++;
            com.koushikdutta.async.e.g.closeQuietly(fileInputStreamArr);
            return null;
        }
    }

    public int getConditionalCacheHitCount() {
        return this.f;
    }

    public int getCacheHitCount() {
        return this.g;
    }

    public int getNetworkCount() {
        return this.h;
    }

    public int getCacheStoreCount() {
        return this.i;
    }

    public void onBodyDecoder(b.C0087b bVar) {
        if (((C0088e) af.getWrappedSocket(bVar.socket, C0088e.class)) != null) {
            bVar.response.headers().set(SERVED_FROM, CACHE);
            return;
        }
        b bVar2 = (b) bVar.state.get("cache-data");
        c fromMultimap = c.fromMultimap(bVar.response.headers().getMultiMap());
        fromMultimap.removeAll(io.fabric.sdk.android.services.network.c.HEADER_CONTENT_LENGTH);
        fromMultimap.setStatusLine(String.format(Locale.ENGLISH, "%s %s %s", new Object[]{bVar.response.protocol(), Integer.valueOf(bVar.response.code()), bVar.response.message()}));
        f fVar = new f(bVar.request.getUri(), fromMultimap);
        bVar.state.put("response-headers", fVar);
        if (bVar2 != null) {
            if (bVar2.d.validate(fVar)) {
                bVar.request.logi("Serving response from conditional cache");
                f combine = bVar2.d.combine(fVar);
                bVar.response.headers(new n(combine.getHeaders().toMultimap()));
                bVar.response.code(combine.getHeaders().getResponseCode());
                bVar.response.message(combine.getHeaders().getResponseMessage());
                bVar.response.headers().set(SERVED_FROM, CONDITIONAL_CACHE);
                this.f++;
                c cVar = new c(bVar2.f4658b, bVar2.c);
                cVar.setDataEmitter(bVar.bodyEmitter);
                bVar.bodyEmitter = cVar;
                cVar.b();
                return;
            }
            bVar.state.remove("cache-data");
            com.koushikdutta.async.e.g.closeQuietly(bVar2.f4657a);
        }
        if (this.f4653a) {
            d dVar = (d) bVar.state.get("request-headers");
            if (dVar == null || !fVar.isCacheable(dVar) || !bVar.request.getMethod().equals("GET")) {
                this.h++;
                bVar.request.logd("Response is not cacheable");
                return;
            }
            String keyString = com.koushikdutta.async.e.c.toKeyString(bVar.request.getUri());
            f fVar2 = new f(bVar.request.getUri(), dVar.getHeaders().getAll(fVar.getVaryFields()), bVar.request, fVar.getHeaders());
            a aVar = new a((byte) 0);
            h hVar = new h(keyString);
            try {
                fVar2.writeTo(hVar);
                hVar.a(1);
                aVar.d = hVar;
                aVar.setDataEmitter(bVar.bodyEmitter);
                bVar.bodyEmitter = aVar;
                bVar.state.put("body-cacher", aVar);
                bVar.request.logd("Caching response");
                this.i++;
            } catch (Exception unused) {
                hVar.a();
                this.h++;
            }
        }
    }

    public void onResponseComplete(b.g gVar) {
        b bVar = (b) gVar.state.get("cache-data");
        if (!(bVar == null || bVar.f4657a == null)) {
            com.koushikdutta.async.e.g.closeQuietly(bVar.f4657a);
        }
        C0088e eVar = (C0088e) af.getWrappedSocket(gVar.socket, C0088e.class);
        if (eVar != null) {
            com.koushikdutta.async.e.g.closeQuietly(eVar.d.getBody());
        }
        a aVar = (a) gVar.state.get("body-cacher");
        if (aVar != null) {
            if (gVar.exception != null) {
                aVar.abort();
                return;
            }
            aVar.commit();
        }
    }

    public void clear() {
        com.koushikdutta.async.e.c cVar = this.d;
        if (cVar != null) {
            cVar.clear();
        }
    }
}
