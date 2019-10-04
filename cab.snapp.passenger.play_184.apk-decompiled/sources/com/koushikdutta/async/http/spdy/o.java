package com.koushikdutta.async.http.spdy;

import android.net.Uri;
import android.text.TextUtils;
import com.koushikdutta.async.b.g;
import com.koushikdutta.async.e;
import com.koushikdutta.async.f;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.b;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.http.h;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.http.q;
import com.koushikdutta.async.http.s;
import com.koushikdutta.async.http.spdy.a;
import com.koushikdutta.async.j;
import com.koushikdutta.async.l;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import org.eclipse.paho.a.a.w;

public final class o extends h {
    private static final a A = new a((byte) 0);
    boolean o;
    Field p;
    Field q;
    Field r;
    Field s;
    Field t;
    Field u;
    Field v;
    Method w;
    Method x;
    Hashtable<String, b> y = new Hashtable<>();
    boolean z;

    static class a extends Exception {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    static class b extends g<a> {
        com.koushikdutta.async.b.h c;

        private b() {
            this.c = new com.koushikdutta.async.b.h();
        }

        /* synthetic */ b(byte b2) {
            this();
        }
    }

    public o(com.koushikdutta.async.http.a aVar) {
        super(aVar);
        addEngineConfigurator(new com.koushikdutta.async.http.g() {
            public final SSLEngine createEngine(SSLContext sSLContext, String str, int i) {
                return null;
            }

            public final void configureEngine(SSLEngine sSLEngine, b.a aVar, String str, int i) {
                o.a(o.this, sSLEngine, aVar, str, i);
            }
        });
    }

    public final boolean getSpdyEnabled() {
        return this.z;
    }

    public final void setSpdyEnabled(boolean z2) {
        this.z = z2;
    }

    public final void setSSLContext(SSLContext sSLContext) {
        super.setSSLContext(sSLContext);
        this.o = false;
    }

    private static byte[] a(Protocol... protocolArr) {
        ByteBuffer allocate = ByteBuffer.allocate(8192);
        for (int i = 0; i <= 0; i++) {
            Protocol protocol = protocolArr[0];
            if (protocol != Protocol.HTTP_1_0) {
                allocate.put((byte) protocol.toString().length());
                allocate.put(protocol.toString().getBytes(com.koushikdutta.async.e.b.UTF_8));
            }
        }
        allocate.flip();
        return new l(allocate).getAllByteArray();
    }

    public final f.a createHandshakeCallback(final b.a aVar, final com.koushikdutta.async.a.b bVar) {
        final String str = (String) aVar.state.get("spdykey");
        if (str == null) {
            return super.createHandshakeCallback(aVar, bVar);
        }
        return new f.a() {
            public final void onHandshakeCompleted(Exception exc, e eVar) {
                aVar.request.logv("checking spdy handshake");
                if (exc != null || o.this.x == null) {
                    o.a(o.this, str, bVar, exc, eVar);
                    o.a(o.this, str);
                    return;
                }
                try {
                    long longValue = ((Long) o.this.u.get(eVar.getSSLEngine())).longValue();
                    byte[] bArr = (byte[]) o.this.x.invoke(null, new Object[]{Long.valueOf(longValue)});
                    if (bArr == null) {
                        o.a(o.this, str, bVar, (Exception) null, eVar);
                        o.a(o.this, str);
                        return;
                    }
                    String str = new String(bArr);
                    Protocol protocol = Protocol.get(str);
                    if (protocol == null || !protocol.needsSpdyConnection()) {
                        o.a(o.this, str, bVar, (Exception) null, eVar);
                        o.a(o.this, str);
                        return;
                    }
                    try {
                        new a(eVar, Protocol.get(str)) {
                            boolean n;

                            public final void settings(boolean z, m mVar) {
                                super.settings(z, mVar);
                                if (!this.n) {
                                    this.n = true;
                                    b bVar = o.this.y.get(str);
                                    if (bVar.c.setComplete()) {
                                        d dVar = aVar.request;
                                        dVar.logv("using new spdy connection for host: " + aVar.request.getUri().getHost());
                                        o.a(aVar, this, bVar);
                                    }
                                    bVar.setComplete(this);
                                }
                            }
                        }.sendConnectionPreface();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                } catch (Exception e2) {
                    throw new AssertionError(e2);
                }
            }
        };
    }

    private static boolean a(b.a aVar) {
        return aVar.request.getBody() == null;
    }

    public final com.koushikdutta.async.a.b wrapCallback(b.a aVar, Uri uri, int i, boolean z2, com.koushikdutta.async.a.b bVar) {
        final com.koushikdutta.async.a.b wrapCallback = super.wrapCallback(aVar, uri, i, z2, bVar);
        final String str = (String) aVar.state.get("spdykey");
        if (str == null) {
            return wrapCallback;
        }
        return new com.koushikdutta.async.a.b() {
            public final void onConnectCompleted(Exception exc, j jVar) {
                if (exc != null) {
                    b remove = o.this.y.remove(str);
                    if (remove != null) {
                        remove.setComplete(exc);
                    }
                }
                wrapCallback.onConnectCompleted(exc, jVar);
            }
        };
    }

    public final com.koushikdutta.async.b.a getSocket(final b.a aVar) {
        Uri uri = aVar.request.getUri();
        if (getSchemePort(aVar.request.getUri()) == -1) {
            return null;
        }
        if (!this.z) {
            return super.getSocket(aVar);
        }
        if (!a(aVar)) {
            return super.getSocket(aVar);
        }
        String str = uri.getHost() + r1;
        b bVar = this.y.get(str);
        if (bVar != null) {
            if (bVar.tryGetException() instanceof a) {
                return super.getSocket(aVar);
            }
            if (bVar.tryGet() != null && !((a) bVar.tryGet()).f4776a.isOpen()) {
                this.y.remove(str);
                bVar = null;
            }
        }
        if (bVar == null) {
            aVar.state.put("spdykey", str);
            com.koushikdutta.async.b.a socket = super.getSocket(aVar);
            if (!socket.isDone() && !socket.isCancelled()) {
                b bVar2 = new b((byte) 0);
                this.y.put(str, bVar2);
                socket = bVar2.c;
            }
            return socket;
        }
        aVar.request.logv("waiting for potential spdy connection for host: " + aVar.request.getUri().getHost());
        final com.koushikdutta.async.b.h hVar = new com.koushikdutta.async.b.h();
        bVar.setCallback((com.koushikdutta.async.b.f) new com.koushikdutta.async.b.f<a>() {
            public final void onCompleted(Exception exc, a aVar) {
                if (exc instanceof a) {
                    aVar.request.logv("spdy not available");
                    hVar.setParent(o.super.getSocket(aVar));
                } else if (exc != null) {
                    if (hVar.setComplete()) {
                        aVar.connectCallback.onConnectCompleted(exc, null);
                    }
                } else {
                    d dVar = aVar.request;
                    dVar.logv("using existing spdy connection for host: " + aVar.request.getUri().getHost());
                    if (hVar.setComplete()) {
                        b.a aVar2 = aVar;
                        o.a(aVar2, aVar, aVar2.connectCallback);
                    }
                }
            }
        });
        return hVar;
    }

    public final boolean exchangeHeaders(final b.c cVar) {
        if (!(cVar.socket instanceof a.C0090a)) {
            return super.exchangeHeaders(cVar);
        }
        if (cVar.request.getBody() != null) {
            cVar.response.sink(cVar.socket);
        }
        cVar.sendHeadersCallback.onCompleted(null);
        final a.C0090a aVar = (a.C0090a) cVar.socket;
        ((AnonymousClass6) aVar.headers().then(new com.koushikdutta.async.b.j<n, List<g>>() {
            public final /* synthetic */ void transform(Object obj) throws Exception {
                n nVar = new n();
                for (g gVar : (List) obj) {
                    nVar.add(gVar.name.utf8(), gVar.value.utf8());
                }
                String[] split = nVar.remove(g.RESPONSE_STATUS.utf8()).split(" ", 2);
                cVar.response.code(Integer.parseInt(split[0]));
                if (split.length == 2) {
                    cVar.response.message(split[1]);
                }
                cVar.response.protocol(nVar.remove(g.VERSION.utf8()));
                cVar.response.headers(nVar);
                setComplete(nVar);
            }
        })).setCallback((com.koushikdutta.async.b.f) new com.koushikdutta.async.b.f<n>() {
            public final void onCompleted(Exception exc, n nVar) {
                cVar.receiveHeadersCallback.onCompleted(exc);
                a.C0090a aVar = aVar;
                cVar.response.emitter(q.getBodyDecoder(aVar, aVar.getConnection().g, nVar, false));
            }
        });
        return true;
    }

    public final void onRequestSent(b.f fVar) {
        if ((fVar.socket instanceof a.C0090a) && fVar.request.getBody() != null) {
            fVar.response.sink().end();
        }
    }

    static /* synthetic */ void a(o oVar, SSLEngine sSLEngine, b.a aVar, String str, int i) {
        if (!oVar.o && oVar.z) {
            oVar.o = true;
            try {
                oVar.p = sSLEngine.getClass().getSuperclass().getDeclaredField("peerHost");
                oVar.q = sSLEngine.getClass().getSuperclass().getDeclaredField("peerPort");
                oVar.r = sSLEngine.getClass().getDeclaredField("sslParameters");
                oVar.s = oVar.r.getType().getDeclaredField("npnProtocols");
                oVar.t = oVar.r.getType().getDeclaredField("alpnProtocols");
                oVar.v = oVar.r.getType().getDeclaredField("useSni");
                oVar.u = sSLEngine.getClass().getDeclaredField("sslNativePointer");
                String str2 = oVar.r.getType().getPackage().getName() + ".NativeCrypto";
                oVar.w = Class.forName(str2, true, oVar.r.getType().getClassLoader()).getDeclaredMethod("SSL_get_npn_negotiated_protocol", new Class[]{Long.TYPE});
                oVar.x = Class.forName(str2, true, oVar.r.getType().getClassLoader()).getDeclaredMethod("SSL_get0_alpn_selected", new Class[]{Long.TYPE});
                oVar.p.setAccessible(true);
                oVar.q.setAccessible(true);
                oVar.r.setAccessible(true);
                oVar.s.setAccessible(true);
                oVar.t.setAccessible(true);
                oVar.v.setAccessible(true);
                oVar.u.setAccessible(true);
                oVar.w.setAccessible(true);
                oVar.x.setAccessible(true);
            } catch (Exception unused) {
                oVar.r = null;
                oVar.s = null;
                oVar.t = null;
                oVar.v = null;
                oVar.u = null;
                oVar.w = null;
                oVar.x = null;
            }
        }
        if (a(aVar) && oVar.r != null) {
            try {
                byte[] a2 = a(Protocol.SPDY_3);
                oVar.p.set(sSLEngine, str);
                oVar.q.set(sSLEngine, Integer.valueOf(i));
                Object obj = oVar.r.get(sSLEngine);
                oVar.t.set(obj, a2);
                oVar.v.set(obj, Boolean.TRUE);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    static /* synthetic */ void a(o oVar, String str, com.koushikdutta.async.a.b bVar, Exception exc, e eVar) {
        b bVar2 = oVar.y.get(str);
        if (bVar2 == null || bVar2.c.setComplete()) {
            bVar.onConnectCompleted(exc, eVar);
        }
    }

    static /* synthetic */ void a(o oVar, String str) {
        b remove = oVar.y.remove(str);
        if (remove != null) {
            remove.setComplete((Exception) A);
        }
    }

    static /* synthetic */ void a(b.a aVar, a aVar2, com.koushikdutta.async.a.b bVar) {
        d dVar = aVar.request;
        aVar.protocol = aVar2.g.toString();
        com.koushikdutta.async.http.a.a body = aVar.request.getBody();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new g(g.TARGET_METHOD, dVar.getMethod()));
        c cVar = g.TARGET_PATH;
        Uri uri = dVar.getUri();
        String encodedPath = uri.getEncodedPath();
        if (encodedPath == null) {
            encodedPath = w.TOPIC_LEVEL_SEPARATOR;
        } else if (!encodedPath.startsWith(w.TOPIC_LEVEL_SEPARATOR)) {
            encodedPath = w.TOPIC_LEVEL_SEPARATOR.concat(String.valueOf(encodedPath));
        }
        if (!TextUtils.isEmpty(uri.getEncodedQuery())) {
            encodedPath = encodedPath + "?" + uri.getEncodedQuery();
        }
        arrayList.add(new g(cVar, encodedPath));
        String str = dVar.getHeaders().get("Host");
        if (Protocol.SPDY_3 == aVar2.g) {
            arrayList.add(new g(g.VERSION, "HTTP/1.1"));
            arrayList.add(new g(g.TARGET_HOST, str));
        } else if (Protocol.HTTP_2 == aVar2.g) {
            arrayList.add(new g(g.TARGET_AUTHORITY, str));
        } else {
            throw new AssertionError();
        }
        arrayList.add(new g(g.TARGET_SCHEME, dVar.getUri().getScheme()));
        s multiMap = dVar.getHeaders().getMultiMap();
        for (String str2 : multiMap.keySet()) {
            if (!p.a(aVar2.g, str2)) {
                for (String gVar : (List) multiMap.get(str2)) {
                    arrayList.add(new g(str2.toLowerCase(Locale.US), gVar));
                }
            }
        }
        dVar.logv("\n".concat(String.valueOf(dVar)));
        bVar.onConnectCompleted(null, aVar2.newStream(arrayList, body != null, true));
    }
}
