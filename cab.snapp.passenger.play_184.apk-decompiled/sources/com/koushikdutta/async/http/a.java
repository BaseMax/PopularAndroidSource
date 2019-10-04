package com.koushikdutta.async.http;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.http.b;
import com.koushikdutta.async.http.spdy.o;
import com.koushikdutta.async.j;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URL;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeoutException;

public class a {
    static final /* synthetic */ boolean f = (!a.class.desiredAssertionStatus());
    private static a g;

    /* renamed from: a  reason: collision with root package name */
    final List<b> f4577a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    o f4578b;
    i c;
    p d;
    com.koushikdutta.async.h e;

    /* renamed from: com.koushikdutta.async.http.a$a  reason: collision with other inner class name */
    public static abstract class C0085a extends f<l> {
    }

    public static abstract class b extends f<File> {
    }

    class c extends i<e> {
        public Object scheduled;
        public j socket;
        public Runnable timeoutRunnable;

        private c() {
        }

        /* synthetic */ c(a aVar, byte b2) {
            this();
        }

        public final boolean cancel() {
            if (!super.cancel()) {
                return false;
            }
            j jVar = this.socket;
            if (jVar != null) {
                jVar.setDataCallback(new d.a());
                this.socket.close();
            }
            if (this.scheduled != null) {
                a.this.e.removeAllCallbacks(this.scheduled);
            }
            return true;
        }
    }

    public static abstract class d extends f<org.a.a> {
    }

    public static abstract class e extends f<org.a.c> {
    }

    public static abstract class f<T> implements com.koushikdutta.async.http.c.b<T> {
        public void onConnect(e eVar) {
        }

        public void onProgress(e eVar, long j, long j2) {
        }
    }

    public static abstract class g extends f<String> {
    }

    public interface h {
        void onCompleted(Exception exc, z zVar);
    }

    public static a getDefaultInstance() {
        if (g == null) {
            g = new a(com.koushikdutta.async.h.getDefault());
        }
        return g;
    }

    public Collection<b> getMiddleware() {
        return this.f4577a;
    }

    public void insertMiddleware(b bVar) {
        this.f4577a.add(0, bVar);
    }

    public a(com.koushikdutta.async.h hVar) {
        this.e = hVar;
        i iVar = new i(this);
        this.c = iVar;
        insertMiddleware(iVar);
        o oVar = new o(this);
        this.f4578b = oVar;
        insertMiddleware(oVar);
        p pVar = new p();
        this.d = pVar;
        insertMiddleware(pVar);
        this.f4578b.addEngineConfigurator(new x());
    }

    /* access modifiers changed from: private */
    public static void c(d dVar) {
        String str;
        if (dVar.c == null) {
            try {
                List<Proxy> select = ProxySelector.getDefault().select(URI.create(dVar.getUri().toString()));
                if (!select.isEmpty()) {
                    Proxy proxy = select.get(0);
                    if (proxy.type() == Proxy.Type.HTTP && (proxy.address() instanceof InetSocketAddress)) {
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                        if (Build.VERSION.SDK_INT >= 14) {
                            str = inetSocketAddress.getHostString();
                        } else {
                            InetAddress address = inetSocketAddress.getAddress();
                            if (address != null) {
                                str = address.getHostAddress();
                            } else {
                                str = inetSocketAddress.getHostName();
                            }
                        }
                        dVar.enableProxy(str, inetSocketAddress.getPort());
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public i getSocketMiddleware() {
        return this.c;
    }

    public o getSSLSocketMiddleware() {
        return this.f4578b;
    }

    public com.koushikdutta.async.b.e<e> execute(d dVar, com.koushikdutta.async.http.c.a aVar) {
        c cVar = new c(this, (byte) 0);
        a(dVar, 0, cVar, aVar);
        return cVar;
    }

    public com.koushikdutta.async.b.e<e> execute(String str, com.koushikdutta.async.http.c.a aVar) {
        return execute((d) new c(str), aVar);
    }

    /* access modifiers changed from: private */
    public void a(c cVar, Exception exc, f fVar, d dVar, com.koushikdutta.async.http.c.a aVar) {
        boolean z;
        if (f || aVar != null) {
            this.e.removeAllCallbacks(cVar.scheduled);
            if (exc != null) {
                dVar.loge("Connection error", exc);
                z = cVar.setComplete(exc);
            } else {
                dVar.logd("Connection successful");
                z = cVar.setComplete(fVar);
            }
            if (z) {
                aVar.onConnectCompleted(exc, fVar);
                if (!f && exc == null && fVar.socket() != null && fVar.getDataCallback() == null && !fVar.isPaused()) {
                    throw new AssertionError();
                }
                return;
            }
            if (fVar != null) {
                fVar.setDataCallback(new d.a());
                fVar.close();
            }
            return;
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: private */
    public void a(d dVar, int i, c cVar, com.koushikdutta.async.http.c.a aVar) {
        if (this.e.isAffinityThread()) {
            b(dVar, i, cVar, aVar);
            return;
        }
        com.koushikdutta.async.h hVar = this.e;
        final d dVar2 = dVar;
        final int i2 = i;
        final c cVar2 = cVar;
        final com.koushikdutta.async.http.c.a aVar2 = aVar;
        AnonymousClass1 r1 = new Runnable() {
            public final void run() {
                a.this.b(dVar2, i2, cVar2, aVar2);
            }
        };
        hVar.post(r1);
    }

    /* access modifiers changed from: private */
    public void b(d dVar, int i, c cVar, com.koushikdutta.async.http.c.a aVar) {
        d dVar2 = dVar;
        c cVar2 = cVar;
        if (!f && !this.e.isAffinityThread()) {
            throw new AssertionError();
        } else if (i > 15) {
            a(cVar, (Exception) new v("too many redirects"), (f) null, dVar, aVar);
        } else {
            dVar.getUri();
            b.g gVar = new b.g();
            dVar2.g = System.currentTimeMillis();
            gVar.request = dVar2;
            dVar.logd("Executing request.");
            for (b onRequest : this.f4577a) {
                onRequest.onRequest(gVar);
            }
            if (dVar.getTimeout() > 0) {
                final b.g gVar2 = gVar;
                final c cVar3 = cVar;
                final d dVar3 = dVar;
                final com.koushikdutta.async.http.c.a aVar2 = aVar;
                AnonymousClass4 r0 = new Runnable() {
                    public final void run() {
                        if (gVar2.socketCancellable != null) {
                            gVar2.socketCancellable.cancel();
                            if (gVar2.socket != null) {
                                gVar2.socket.close();
                            }
                        }
                        a.this.a(cVar3, (Exception) new TimeoutException(), (f) null, dVar3, aVar2);
                    }
                };
                cVar2.timeoutRunnable = r0;
                cVar2.scheduled = this.e.postDelayed(cVar2.timeoutRunnable, (long) dVar.getTimeout());
            }
            final d dVar4 = dVar;
            final c cVar4 = cVar;
            final com.koushikdutta.async.http.c.a aVar3 = aVar;
            final b.g gVar3 = gVar;
            final int i2 = i;
            AnonymousClass5 r02 = new com.koushikdutta.async.a.b() {

                /* renamed from: a  reason: collision with root package name */
                boolean f4597a;

                public final void onConnectCompleted(Exception exc, j jVar) {
                    j jVar2 = jVar;
                    if (!this.f4597a || jVar2 == null) {
                        this.f4597a = true;
                        dVar4.logv("socket connected");
                        if (cVar4.isCancelled()) {
                            if (jVar2 != null) {
                                jVar.close();
                            }
                            return;
                        }
                        if (cVar4.timeoutRunnable != null) {
                            a.this.e.removeAllCallbacks(cVar4.scheduled);
                        }
                        if (exc != null) {
                            a.this.a(cVar4, exc, (f) null, dVar4, aVar3);
                            return;
                        }
                        b.g gVar = gVar3;
                        gVar.socket = jVar2;
                        c cVar = cVar4;
                        cVar.socket = jVar2;
                        a.a(a.this, dVar4, i2, cVar, aVar3, gVar);
                        return;
                    }
                    jVar2.setDataCallback(new d.a());
                    jVar2.setEndCallback(new a.C0084a());
                    jVar.close();
                    throw new AssertionError("double connect callback");
                }
            };
            gVar.connectCallback = r02;
            c(dVar);
            if (dVar.getBody() != null && dVar.getHeaders().get(io.fabric.sdk.android.services.network.c.HEADER_CONTENT_TYPE) == null) {
                dVar.getHeaders().set(io.fabric.sdk.android.services.network.c.HEADER_CONTENT_TYPE, dVar.getBody().getContentType());
            }
            for (b socket : this.f4577a) {
                com.koushikdutta.async.b.a socket2 = socket.getSocket(gVar);
                if (socket2 != null) {
                    gVar.socketCancellable = socket2;
                    cVar.setParent(socket2);
                    return;
                }
            }
            a(cVar, (Exception) new IllegalArgumentException("invalid uri=" + dVar.getUri() + " middlewares=" + this.f4577a), (f) null, dVar, aVar);
        }
    }

    public com.koushikdutta.async.b.e<l> executeByteBufferList(d dVar, C0085a aVar) {
        return execute(dVar, new com.koushikdutta.async.c.b(), aVar);
    }

    public com.koushikdutta.async.b.e<String> executeString(d dVar, g gVar) {
        return execute(dVar, new com.koushikdutta.async.c.f(), gVar);
    }

    public com.koushikdutta.async.b.e<org.a.c> executeJSONObject(d dVar, e eVar) {
        return execute(dVar, new com.koushikdutta.async.c.e(), eVar);
    }

    public com.koushikdutta.async.b.e<org.a.a> executeJSONArray(d dVar, d dVar2) {
        return execute(dVar, new com.koushikdutta.async.c.d(), dVar2);
    }

    public com.koushikdutta.async.b.e<File> executeFile(d dVar, String str, b bVar) {
        final File file = new File(str);
        file.getParentFile().mkdirs();
        try {
            final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 8192);
            final c cVar = new c(this, (byte) 0);
            AnonymousClass10 r7 = new i<File>() {
                /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
                /* JADX WARNING: Failed to process nested try/catch */
                /* JADX WARNING: Missing exception handler attribute for start block: B:2:0x001b */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public final void cancelCleanup() {
                    /*
                        r2 = this;
                        com.koushikdutta.async.http.a$c r0 = r11     // Catch:{ Exception -> 0x001b }
                        java.lang.Object r0 = r0.get()     // Catch:{ Exception -> 0x001b }
                        com.koushikdutta.async.http.e r0 = (com.koushikdutta.async.http.e) r0     // Catch:{ Exception -> 0x001b }
                        com.koushikdutta.async.a.d$a r1 = new com.koushikdutta.async.a.d$a     // Catch:{ Exception -> 0x001b }
                        r1.<init>()     // Catch:{ Exception -> 0x001b }
                        r0.setDataCallback(r1)     // Catch:{ Exception -> 0x001b }
                        com.koushikdutta.async.http.a$c r0 = r11     // Catch:{ Exception -> 0x001b }
                        java.lang.Object r0 = r0.get()     // Catch:{ Exception -> 0x001b }
                        com.koushikdutta.async.http.e r0 = (com.koushikdutta.async.http.e) r0     // Catch:{ Exception -> 0x001b }
                        r0.close()     // Catch:{ Exception -> 0x001b }
                    L_0x001b:
                        java.io.OutputStream r0 = r2     // Catch:{ Exception -> 0x0020 }
                        r0.close()     // Catch:{ Exception -> 0x0020 }
                    L_0x0020:
                        java.io.File r0 = r3
                        r0.delete()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.a.AnonymousClass10.cancelCleanup():void");
                }
            };
            r7.setParent((com.koushikdutta.async.b.a) cVar);
            final b bVar2 = bVar;
            final AnonymousClass10 r5 = r7;
            AnonymousClass11 r0 = new com.koushikdutta.async.http.c.a() {

                /* renamed from: a  reason: collision with root package name */
                long f4583a = 0;

                public final void onConnectCompleted(Exception exc, final e eVar) {
                    if (exc != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused) {
                        }
                        file.delete();
                        a.a(a.this, (com.koushikdutta.async.http.c.b) bVar2, r5, eVar, exc, (Object) null);
                        return;
                    }
                    a.a(bVar2, eVar);
                    final long contentLength = (long) q.contentLength(eVar.headers());
                    final e eVar2 = eVar;
                    AnonymousClass1 r0 = new com.koushikdutta.async.d.d(bufferedOutputStream) {
                        public final void onDataAvailable(n nVar, l lVar) {
                            AnonymousClass11.this.f4583a += (long) lVar.remaining();
                            super.onDataAvailable(nVar, lVar);
                            a.a((com.koushikdutta.async.http.c.b) bVar2, eVar2, AnonymousClass11.this.f4583a, contentLength);
                        }
                    };
                    eVar.setDataCallback(r0);
                    eVar.setEndCallback(new com.koushikdutta.async.a.a() {
                        public final void onCompleted(Exception e) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e2) {
                                e = e2;
                            }
                            Exception exc = e;
                            if (exc != null) {
                                file.delete();
                                a.a(a.this, (com.koushikdutta.async.http.c.b) bVar2, r5, eVar, exc, (Object) null);
                                return;
                            }
                            a.a(a.this, (com.koushikdutta.async.http.c.b) bVar2, r5, eVar, (Exception) null, (Object) file);
                        }
                    });
                }
            };
            a(dVar, 0, cVar, (com.koushikdutta.async.http.c.a) r0);
            return r7;
        } catch (FileNotFoundException e2) {
            i iVar = new i();
            iVar.setComplete((Exception) e2);
            return iVar;
        }
    }

    public <T> i<T> execute(d dVar, final com.koushikdutta.async.c.a<T> aVar, final com.koushikdutta.async.http.c.b<T> bVar) {
        c cVar = new c(this, (byte) 0);
        final i<T> iVar = new i<>();
        a(dVar, 0, cVar, (com.koushikdutta.async.http.c.a) new com.koushikdutta.async.http.c.a() {
            public final void onConnectCompleted(Exception exc, final e eVar) {
                if (exc != null) {
                    a.a(a.this, bVar, iVar, eVar, exc, (Object) null);
                    return;
                }
                a.a(bVar, eVar);
                iVar.setParent((com.koushikdutta.async.b.a) aVar.parse(eVar).setCallback(new com.koushikdutta.async.b.f<T>() {
                    public final void onCompleted(Exception exc, T t) {
                        a.a(a.this, bVar, iVar, eVar, exc, (Object) t);
                    }
                }));
            }
        });
        iVar.setParent((com.koushikdutta.async.b.a) cVar);
        return iVar;
    }

    public com.koushikdutta.async.b.e<z> websocket(final d dVar, String str, final h hVar) {
        ab.addWebSocketUpgradeHeaders(dVar, str);
        final i iVar = new i();
        iVar.setParent((com.koushikdutta.async.b.a) execute(dVar, (com.koushikdutta.async.http.c.a) new com.koushikdutta.async.http.c.a() {
            public final void onConnectCompleted(Exception exc, e eVar) {
                if (exc != null) {
                    if (iVar.setComplete(exc)) {
                        h hVar = hVar;
                        if (hVar != null) {
                            hVar.onCompleted(exc, null);
                        }
                    }
                    return;
                }
                z finishHandshake = ab.finishHandshake(dVar.getHeaders(), eVar);
                if (finishHandshake == null) {
                    exc = new aa("Unable to complete websocket handshake");
                    if (!iVar.setComplete(exc)) {
                        return;
                    }
                } else if (!iVar.setComplete(finishHandshake)) {
                    return;
                }
                h hVar2 = hVar;
                if (hVar2 != null) {
                    hVar2.onCompleted(exc, finishHandshake);
                }
            }
        }));
        return iVar;
    }

    public com.koushikdutta.async.b.e<z> websocket(String str, String str2, h hVar) {
        return websocket((d) new c(str.replace("ws://", "http://").replace("wss://", "https://")), str2, hVar);
    }

    public com.koushikdutta.async.h getServer() {
        return this.e;
    }

    static /* synthetic */ void a(a aVar, d dVar, int i, c cVar, com.koushikdutta.async.http.c.a aVar2, b.g gVar) {
        final c cVar2 = cVar;
        final d dVar2 = dVar;
        final com.koushikdutta.async.http.c.a aVar3 = aVar2;
        final b.g gVar2 = gVar;
        final int i2 = i;
        final AnonymousClass6 r0 = new f(dVar) {
            /* access modifiers changed from: protected */
            public final void a(Exception exc) {
                if (exc != null) {
                    a.this.a(cVar2, exc, (f) null, dVar2, aVar3);
                    return;
                }
                dVar2.logv("request completed");
                if (!cVar2.isCancelled()) {
                    if (cVar2.timeoutRunnable != null && this.j == null) {
                        a.this.e.removeAllCallbacks(cVar2.scheduled);
                        cVar2.scheduled = a.this.e.postDelayed(cVar2.timeoutRunnable, a.a(dVar2));
                    }
                    for (b onRequestSent : a.this.f4577a) {
                        onRequestSent.onRequestSent(gVar2);
                    }
                }
            }

            public final void setDataEmitter(n nVar) {
                gVar2.bodyEmitter = nVar;
                for (b onBodyDecoder : a.this.f4577a) {
                    onBodyDecoder.onBodyDecoder(gVar2);
                }
                super.setDataEmitter(gVar2.bodyEmitter);
                n nVar2 = this.j;
                int code = code();
                if ((code == 301 || code == 302 || code == 307) && dVar2.getFollowRedirect()) {
                    String str = nVar2.get(io.fabric.sdk.android.services.network.c.HEADER_LOCATION);
                    try {
                        Uri parse = Uri.parse(str);
                        if (parse.getScheme() == null) {
                            parse = Uri.parse(new URL(new URL(dVar2.getUri().toString()), str).toString());
                        }
                        String method = dVar2.getMethod();
                        String str2 = io.fabric.sdk.android.services.network.c.METHOD_HEAD;
                        if (!method.equals(str2)) {
                            str2 = "GET";
                        }
                        d dVar = new d(parse, str2);
                        dVar.g = dVar2.g;
                        dVar.f = dVar2.f;
                        dVar.e = dVar2.e;
                        dVar.c = dVar2.c;
                        dVar.d = dVar2.d;
                        a.c(dVar);
                        a.a(dVar2, dVar, "User-Agent");
                        a.a(dVar2, dVar, "Range");
                        dVar2.logi("Redirecting");
                        dVar.logi("Redirected");
                        a.this.a(dVar, i2 + 1, cVar2, aVar3);
                        setDataCallback(new d.a());
                    } catch (Exception e2) {
                        a.this.a(cVar2, e2, (f) this, dVar2, aVar3);
                    }
                } else {
                    d dVar2 = dVar2;
                    dVar2.logv("Final (post cache response) headers:\n" + toString());
                    a.this.a(cVar2, (Exception) null, (f) this, dVar2, aVar3);
                }
            }

            /* access modifiers changed from: protected */
            public final void a() {
                super.a();
                if (!cVar2.isCancelled()) {
                    if (cVar2.timeoutRunnable != null) {
                        a.this.e.removeAllCallbacks(cVar2.scheduled);
                    }
                    d dVar = dVar2;
                    dVar.logv("Received headers:\n" + toString());
                    for (b onHeadersReceived : a.this.f4577a) {
                        onHeadersReceived.onHeadersReceived(gVar2);
                    }
                }
            }

            public final void report(Exception exc) {
                if (exc != null) {
                    dVar2.loge("exception during response", exc);
                }
                if (!cVar2.isCancelled()) {
                    if (exc instanceof com.koushikdutta.async.d) {
                        dVar2.loge("SSL Exception", exc);
                        com.koushikdutta.async.d dVar = (com.koushikdutta.async.d) exc;
                        dVar2.onHandshakeException(dVar);
                        if (dVar.getIgnore()) {
                            return;
                        }
                    }
                    j socket = socket();
                    if (socket != null) {
                        super.report(exc);
                        if ((!socket.isOpen() || exc != null) && headers() == null && exc != null) {
                            a.this.a(cVar2, exc, (f) null, dVar2, aVar3);
                        }
                        gVar2.exception = exc;
                        for (b onResponseComplete : a.this.f4577a) {
                            onResponseComplete.onResponseComplete(gVar2);
                        }
                    }
                }
            }

            public final j detachSocket() {
                dVar2.logd("Detaching socket");
                j socket = socket();
                if (socket == null) {
                    return null;
                }
                socket.setWriteableCallback(null);
                socket.setClosedCallback(null);
                socket.setEndCallback(null);
                socket.setDataCallback(null);
                a((j) null);
                return socket;
            }
        };
        gVar.sendHeadersCallback = new com.koushikdutta.async.a.a() {
            public final void onCompleted(Exception exc) {
                if (exc != null) {
                    r0.report(exc);
                } else {
                    r0.b();
                }
            }
        };
        gVar.receiveHeadersCallback = new com.koushikdutta.async.a.a() {
            public final void onCompleted(Exception exc) {
                if (exc != null) {
                    r0.report(exc);
                } else {
                    r0.a();
                }
            }
        };
        gVar.response = r0;
        r0.a(gVar.socket);
        for (b exchangeHeaders : aVar.f4577a) {
            if (exchangeHeaders.exchangeHeaders(gVar)) {
                return;
            }
        }
    }

    static /* synthetic */ long a(d dVar) {
        return (long) dVar.getTimeout();
    }

    static /* synthetic */ void a(d dVar, d dVar2, String str) {
        String str2 = dVar.getHeaders().get(str);
        if (!TextUtils.isEmpty(str2)) {
            dVar2.getHeaders().set(str, str2);
        }
    }

    static /* synthetic */ void a(com.koushikdutta.async.http.c.b bVar, i iVar, e eVar, Exception exc, Object obj) {
        boolean z;
        if (exc != null) {
            z = iVar.setComplete(exc);
        } else {
            z = iVar.setComplete(obj);
        }
        if (z && bVar != null) {
            bVar.onCompleted(exc, eVar, obj);
        }
    }

    static /* synthetic */ void a(a aVar, com.koushikdutta.async.http.c.b bVar, i iVar, e eVar, Exception exc, Object obj) {
        final com.koushikdutta.async.http.c.b bVar2 = bVar;
        final i iVar2 = iVar;
        final e eVar2 = eVar;
        final Exception exc2 = exc;
        final Object obj2 = obj;
        AnonymousClass9 r0 = new Runnable() {
            public final void run() {
                a.a(bVar2, iVar2, eVar2, exc2, obj2);
            }
        };
        aVar.e.post(r0);
    }

    static /* synthetic */ void a(com.koushikdutta.async.http.c.b bVar, e eVar) {
        if (bVar != null) {
            bVar.onConnect(eVar);
        }
    }

    static /* synthetic */ void a(com.koushikdutta.async.http.c.b bVar, e eVar, long j, long j2) {
        if (bVar != null) {
            bVar.onProgress(eVar, j, j2);
        }
    }
}
