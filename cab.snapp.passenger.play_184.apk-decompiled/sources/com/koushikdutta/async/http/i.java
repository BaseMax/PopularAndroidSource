package com.koushikdutta.async.http;

import android.net.Uri;
import androidx.appcompat.widget.ActivityChooserView;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.b.h;
import com.koushikdutta.async.http.b;
import com.koushikdutta.async.j;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import java.net.InetSocketAddress;
import java.util.Hashtable;

public class i extends y {
    String e;
    int f;
    int g;
    protected a h;
    boolean i;
    String j;
    int k;
    InetSocketAddress l;
    Hashtable<String, a> m;
    int n;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        int f4750a;

        /* renamed from: b  reason: collision with root package name */
        com.koushikdutta.async.a<b.a> f4751b = new com.koushikdutta.async.a<>();
        com.koushikdutta.async.a<b> c = new com.koushikdutta.async.a<>();

        a() {
        }
    }

    class b {

        /* renamed from: a  reason: collision with root package name */
        j f4752a;

        /* renamed from: b  reason: collision with root package name */
        long f4753b = System.currentTimeMillis();

        public b(j jVar) {
            this.f4752a = jVar;
        }
    }

    /* access modifiers changed from: protected */
    public com.koushikdutta.async.a.b wrapCallback(b.a aVar, Uri uri, int i2, boolean z, com.koushikdutta.async.a.b bVar) {
        return bVar;
    }

    public i(a aVar, String str, int i2) {
        this.g = 300000;
        this.m = new Hashtable<>();
        this.n = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.h = aVar;
        this.e = str;
        this.f = i2;
    }

    public void setIdleTimeoutMs(int i2) {
        this.g = i2;
    }

    public int getSchemePort(Uri uri) {
        if (uri.getScheme() == null || !uri.getScheme().equals(this.e)) {
            return -1;
        }
        if (uri.getPort() == -1) {
            return this.f;
        }
        return uri.getPort();
    }

    public i(a aVar) {
        this(aVar, "http", 80);
    }

    public boolean getConnectAllAddresses() {
        return this.i;
    }

    public void setConnectAllAddresses(boolean z) {
        this.i = z;
    }

    public void disableProxy() {
        this.k = -1;
        this.j = null;
        this.l = null;
    }

    public void enableProxy(String str, int i2) {
        this.j = str;
        this.k = i2;
        this.l = null;
    }

    private static String a(Uri uri, int i2, String str, int i3) {
        String str2;
        if (str != null) {
            str2 = str + ":" + i3;
        } else {
            str2 = "";
        }
        if (str != null) {
            str2 = str + ":" + i3;
        }
        return uri.getScheme() + "//" + uri.getHost() + ":" + i2 + "?proxy=" + str2;
    }

    public int getMaxConnectionCount() {
        return this.n;
    }

    public void setMaxConnectionCount(int i2) {
        this.n = i2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x008f, code lost:
        if (r11.i == false) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0093, code lost:
        if (r11.j != null) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x009b, code lost:
        if (r12.request.getProxyHost() == null) goto L_0x009e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x009e, code lost:
        r12.request.logv("Resolving domain and connecting to all available addresses");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00be, code lost:
        return (com.koushikdutta.async.b.a) r11.h.getServer().getAllByName(r3.getHost()).then(new com.koushikdutta.async.http.i.AnonymousClass1(r11));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00bf, code lost:
        r12.request.logd("Connecting socket");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00cd, code lost:
        if (r12.request.getProxyHost() != null) goto L_0x00dc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00d1, code lost:
        if (r11.j == null) goto L_0x00dc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00d3, code lost:
        r12.request.enableProxy(r11.j, r11.k);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00e2, code lost:
        if (r12.request.getProxyHost() == null) goto L_0x00f2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00e4, code lost:
        r0 = r12.request.getProxyHost();
        r7 = r12.request.getProxyPort();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00f2, code lost:
        r0 = r3.getHost();
        r7 = r4;
        r5 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00f9, code lost:
        if (r5 == false) goto L_0x0116;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00fb, code lost:
        r12.request.logv("Using proxy: " + r0 + ":" + r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0128, code lost:
        return r11.h.getServer().connectSocket(r0, r7, wrapCallback(r12, r3, r4, r5, r12.connectCallback));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.koushikdutta.async.b.a getSocket(final com.koushikdutta.async.http.b.a r12) {
        /*
            r11 = this;
            com.koushikdutta.async.http.d r0 = r12.request
            android.net.Uri r3 = r0.getUri()
            com.koushikdutta.async.http.d r0 = r12.request
            android.net.Uri r0 = r0.getUri()
            int r4 = r11.getSchemePort(r0)
            r0 = 0
            r1 = -1
            if (r4 != r1) goto L_0x0015
            return r0
        L_0x0015:
            com.koushikdutta.async.e.i r1 = r12.state
            java.lang.String r2 = "socket-owner"
            r1.put(r2, r11)
            com.koushikdutta.async.http.d r1 = r12.request
            java.lang.String r1 = r1.getProxyHost()
            com.koushikdutta.async.http.d r2 = r12.request
            int r2 = r2.getProxyPort()
            java.lang.String r1 = a(r3, r4, r1, r2)
            com.koushikdutta.async.http.i$a r1 = r11.b(r1)
            monitor-enter(r11)
            int r2 = r1.f4750a     // Catch:{ all -> 0x0129 }
            int r5 = r11.n     // Catch:{ all -> 0x0129 }
            if (r2 < r5) goto L_0x0043
            com.koushikdutta.async.b.h r0 = new com.koushikdutta.async.b.h     // Catch:{ all -> 0x0129 }
            r0.<init>()     // Catch:{ all -> 0x0129 }
            com.koushikdutta.async.a<com.koushikdutta.async.http.b$a> r1 = r1.f4751b     // Catch:{ all -> 0x0129 }
            r1.add(r12)     // Catch:{ all -> 0x0129 }
            monitor-exit(r11)     // Catch:{ all -> 0x0129 }
            return r0
        L_0x0043:
            int r2 = r1.f4750a     // Catch:{ all -> 0x0129 }
            r5 = 1
            int r2 = r2 + r5
            r1.f4750a = r2     // Catch:{ all -> 0x0129 }
        L_0x0049:
            com.koushikdutta.async.a<com.koushikdutta.async.http.i$b> r2 = r1.c     // Catch:{ all -> 0x0129 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x0129 }
            if (r2 != 0) goto L_0x008c
            com.koushikdutta.async.a<com.koushikdutta.async.http.i$b> r2 = r1.c     // Catch:{ all -> 0x0129 }
            java.lang.Object r2 = r2.pop()     // Catch:{ all -> 0x0129 }
            com.koushikdutta.async.http.i$b r2 = (com.koushikdutta.async.http.i.b) r2     // Catch:{ all -> 0x0129 }
            com.koushikdutta.async.j r6 = r2.f4752a     // Catch:{ all -> 0x0129 }
            long r7 = r2.f4753b     // Catch:{ all -> 0x0129 }
            int r2 = r11.g     // Catch:{ all -> 0x0129 }
            long r9 = (long) r2     // Catch:{ all -> 0x0129 }
            long r7 = r7 + r9
            long r9 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x0129 }
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 >= 0) goto L_0x0070
            r6.setClosedCallback(r0)     // Catch:{ all -> 0x0129 }
            r6.close()     // Catch:{ all -> 0x0129 }
            goto L_0x0049
        L_0x0070:
            boolean r2 = r6.isOpen()     // Catch:{ all -> 0x0129 }
            if (r2 == 0) goto L_0x0049
            com.koushikdutta.async.http.d r1 = r12.request     // Catch:{ all -> 0x0129 }
            java.lang.String r2 = "Reusing keep-alive socket"
            r1.logd(r2)     // Catch:{ all -> 0x0129 }
            com.koushikdutta.async.a.b r12 = r12.connectCallback     // Catch:{ all -> 0x0129 }
            r12.onConnectCompleted(r0, r6)     // Catch:{ all -> 0x0129 }
            com.koushikdutta.async.b.h r12 = new com.koushikdutta.async.b.h     // Catch:{ all -> 0x0129 }
            r12.<init>()     // Catch:{ all -> 0x0129 }
            r12.setComplete()     // Catch:{ all -> 0x0129 }
            monitor-exit(r11)     // Catch:{ all -> 0x0129 }
            return r12
        L_0x008c:
            monitor-exit(r11)     // Catch:{ all -> 0x0129 }
            boolean r0 = r11.i
            if (r0 == 0) goto L_0x00bf
            java.lang.String r0 = r11.j
            if (r0 != 0) goto L_0x00bf
            com.koushikdutta.async.http.d r0 = r12.request
            java.lang.String r0 = r0.getProxyHost()
            if (r0 == 0) goto L_0x009e
            goto L_0x00bf
        L_0x009e:
            com.koushikdutta.async.http.d r0 = r12.request
            java.lang.String r1 = "Resolving domain and connecting to all available addresses"
            r0.logv(r1)
            com.koushikdutta.async.http.a r0 = r11.h
            com.koushikdutta.async.h r0 = r0.getServer()
            java.lang.String r1 = r3.getHost()
            com.koushikdutta.async.b.e r0 = r0.getAllByName(r1)
            com.koushikdutta.async.http.i$1 r1 = new com.koushikdutta.async.http.i$1
            r1.<init>(r12, r3, r4)
            com.koushikdutta.async.b.f r12 = r0.then(r1)
            com.koushikdutta.async.b.a r12 = (com.koushikdutta.async.b.a) r12
            return r12
        L_0x00bf:
            com.koushikdutta.async.http.d r0 = r12.request
            java.lang.String r1 = "Connecting socket"
            r0.logd(r1)
            r0 = 0
            com.koushikdutta.async.http.d r1 = r12.request
            java.lang.String r1 = r1.getProxyHost()
            if (r1 != 0) goto L_0x00dc
            java.lang.String r1 = r11.j
            if (r1 == 0) goto L_0x00dc
            com.koushikdutta.async.http.d r1 = r12.request
            java.lang.String r2 = r11.j
            int r6 = r11.k
            r1.enableProxy(r2, r6)
        L_0x00dc:
            com.koushikdutta.async.http.d r1 = r12.request
            java.lang.String r1 = r1.getProxyHost()
            if (r1 == 0) goto L_0x00f2
            com.koushikdutta.async.http.d r0 = r12.request
            java.lang.String r0 = r0.getProxyHost()
            com.koushikdutta.async.http.d r1 = r12.request
            int r1 = r1.getProxyPort()
            r7 = r1
            goto L_0x00f9
        L_0x00f2:
            java.lang.String r1 = r3.getHost()
            r0 = r1
            r7 = r4
            r5 = 0
        L_0x00f9:
            if (r5 == 0) goto L_0x0116
            com.koushikdutta.async.http.d r1 = r12.request
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r6 = "Using proxy: "
            r2.<init>(r6)
            r2.append(r0)
            java.lang.String r6 = ":"
            r2.append(r6)
            r2.append(r7)
            java.lang.String r2 = r2.toString()
            r1.logv(r2)
        L_0x0116:
            com.koushikdutta.async.http.a r1 = r11.h
            com.koushikdutta.async.h r8 = r1.getServer()
            com.koushikdutta.async.a.b r6 = r12.connectCallback
            r1 = r11
            r2 = r12
            com.koushikdutta.async.a.b r12 = r1.wrapCallback(r2, r3, r4, r5, r6)
            com.koushikdutta.async.b.a r12 = r8.connectSocket(r0, r7, r12)
            return r12
        L_0x0129:
            r12 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x0129 }
            goto L_0x012d
        L_0x012c:
            throw r12
        L_0x012d:
            goto L_0x012c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.i.getSocket(com.koushikdutta.async.http.b$a):com.koushikdutta.async.b.a");
    }

    private a b(String str) {
        a aVar = this.m.get(str);
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        this.m.put(str, aVar2);
        return aVar2;
    }

    /* access modifiers changed from: package-private */
    public final void a(String str) {
        a aVar = this.m.get(str);
        if (aVar != null) {
            while (!aVar.c.isEmpty()) {
                b peekLast = aVar.c.peekLast();
                j jVar = peekLast.f4752a;
                if (peekLast.f4753b + ((long) this.g) > System.currentTimeMillis()) {
                    break;
                }
                aVar.c.pop();
                jVar.setClosedCallback(null);
                jVar.close();
            }
            if (aVar.f4750a == 0 && aVar.f4751b.isEmpty() && aVar.c.isEmpty()) {
                this.m.remove(str);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(j jVar, d dVar) {
        final com.koushikdutta.async.a<b> aVar;
        if (jVar != null) {
            Uri uri = dVar.getUri();
            final String a2 = a(uri, getSchemePort(uri), dVar.getProxyHost(), dVar.getProxyPort());
            final b bVar = new b(jVar);
            synchronized (this) {
                aVar = b(a2).c;
                aVar.push(bVar);
            }
            jVar.setClosedCallback(new com.koushikdutta.async.a.a() {
                public final void onCompleted(Exception exc) {
                    synchronized (i.this) {
                        aVar.remove(bVar);
                        i.this.a(a2);
                    }
                }
            });
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(final j jVar) {
        jVar.setEndCallback(new com.koushikdutta.async.a.a() {
            public final void onCompleted(Exception exc) {
                jVar.setClosedCallback(null);
                jVar.close();
            }
        });
        jVar.setWriteableCallback(null);
        jVar.setDataCallback(new d.a() {
            public final void onDataAvailable(n nVar, l lVar) {
                super.onDataAvailable(nVar, lVar);
                lVar.recycle();
                jVar.setClosedCallback(null);
                jVar.close();
            }
        });
    }

    private void a(d dVar) {
        Uri uri = dVar.getUri();
        String a2 = a(uri, getSchemePort(uri), dVar.getProxyHost(), dVar.getProxyPort());
        synchronized (this) {
            a aVar = this.m.get(a2);
            if (aVar != null) {
                aVar.f4750a--;
                while (aVar.f4750a < this.n && aVar.f4751b.size() > 0) {
                    b.a remove = aVar.f4751b.remove();
                    h hVar = (h) remove.socketCancellable;
                    if (!hVar.isCancelled()) {
                        hVar.setParent(getSocket(remove));
                    }
                }
                a(a2);
            }
        }
    }

    public void onResponseComplete(b.g gVar) {
        if (gVar.state.get("socket-owner") == this) {
            try {
                a(gVar.socket);
                if (gVar.exception == null) {
                    if (gVar.socket.isOpen()) {
                        if (q.isKeepAlive(gVar.response.protocol(), gVar.response.headers())) {
                            if (q.isKeepAlive(Protocol.HTTP_1_1, gVar.request.getHeaders())) {
                                gVar.request.logd("Recycling keep-alive socket");
                                a(gVar.socket, gVar.request);
                            }
                        }
                        gVar.request.logv("closing out socket (not keep alive)");
                        gVar.socket.setClosedCallback(null);
                        gVar.socket.close();
                    }
                }
                gVar.request.logv("closing out socket (exception)");
                gVar.socket.setClosedCallback(null);
                gVar.socket.close();
            } finally {
                a(gVar.request);
            }
        }
    }
}
