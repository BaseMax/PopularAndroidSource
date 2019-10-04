package com.koushikdutta.async.http;

import android.net.Uri;
import android.text.TextUtils;
import com.adjust.sdk.Constants;
import com.koushikdutta.async.a.a;
import com.koushikdutta.async.af;
import com.koushikdutta.async.e;
import com.koushikdutta.async.f;
import com.koushikdutta.async.http.b;
import com.koushikdutta.async.j;
import com.koushikdutta.async.q;
import com.koushikdutta.async.y;
import com.pusher.java_websocket.WebSocket;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.TrustManager;

public class h extends i {

    /* renamed from: a  reason: collision with root package name */
    protected SSLContext f4726a;

    /* renamed from: b  reason: collision with root package name */
    protected TrustManager[] f4727b;
    protected HostnameVerifier c;
    protected List<g> d = new ArrayList();

    public h(a aVar) {
        super(aVar, Constants.SCHEME, WebSocket.DEFAULT_WSS_PORT);
    }

    public void setSSLContext(SSLContext sSLContext) {
        this.f4726a = sSLContext;
    }

    public SSLContext getSSLContext() {
        SSLContext sSLContext = this.f4726a;
        return sSLContext != null ? sSLContext : f.getDefaultSSLContext();
    }

    public void setTrustManagers(TrustManager[] trustManagerArr) {
        this.f4727b = trustManagerArr;
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.c = hostnameVerifier;
    }

    public void addEngineConfigurator(g gVar) {
        this.d.add(gVar);
    }

    public void clearEngineConfigurators() {
        this.d.clear();
    }

    /* access modifiers changed from: protected */
    public f.a createHandshakeCallback(b.a aVar, final com.koushikdutta.async.a.b bVar) {
        return new f.a() {
            public final void onHandshakeCompleted(Exception exc, e eVar) {
                bVar.onConnectCompleted(exc, eVar);
            }
        };
    }

    /* access modifiers changed from: protected */
    public final void a(j jVar, b.a aVar, Uri uri, int i, com.koushikdutta.async.a.b bVar) {
        String host = uri.getHost();
        String host2 = uri.getHost();
        SSLContext sSLContext = getSSLContext();
        SSLEngine sSLEngine = null;
        for (g createEngine : this.d) {
            sSLEngine = createEngine.createEngine(sSLContext, host2, i);
            if (sSLEngine != null) {
                break;
            }
        }
        for (g configureEngine : this.d) {
            configureEngine.configureEngine(sSLEngine, aVar, host2, i);
        }
        f.handshake(jVar, host, i, sSLEngine, this.f4727b, this.c, true, createHandshakeCallback(aVar, bVar));
    }

    /* access modifiers changed from: protected */
    public com.koushikdutta.async.a.b wrapCallback(b.a aVar, Uri uri, int i, boolean z, com.koushikdutta.async.a.b bVar) {
        final com.koushikdutta.async.a.b bVar2 = bVar;
        final boolean z2 = z;
        final b.a aVar2 = aVar;
        final Uri uri2 = uri;
        final int i2 = i;
        AnonymousClass2 r0 = new com.koushikdutta.async.a.b() {
            public final void onConnectCompleted(Exception exc, final j jVar) {
                if (exc != null) {
                    bVar2.onConnectCompleted(exc, jVar);
                } else if (!z2) {
                    h.this.a(jVar, aVar2, uri2, i2, bVar2);
                } else {
                    String format = String.format(Locale.ENGLISH, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n", new Object[]{uri2.getHost(), Integer.valueOf(i2), uri2.getHost()});
                    aVar2.request.logv("Proxying: ".concat(String.valueOf(format)));
                    af.writeAll((q) jVar, format.getBytes(), (a) new a() {
                        public final void onCompleted(Exception exc) {
                            if (exc != null) {
                                bVar2.onConnectCompleted(exc, jVar);
                                return;
                            }
                            y yVar = new y();
                            yVar.setLineCallback(new y.a() {

                                /* renamed from: a  reason: collision with root package name */
                                String f4734a;

                                public final void onStringAvailable(String str) {
                                    aVar2.request.logv(str);
                                    if (this.f4734a == null) {
                                        this.f4734a = str.trim();
                                        if (!this.f4734a.matches("HTTP/1.\\d 2\\d\\d .*")) {
                                            jVar.setDataCallback(null);
                                            jVar.setEndCallback(null);
                                            com.koushikdutta.async.a.b bVar = bVar2;
                                            bVar.onConnectCompleted(new IOException("non 2xx status line: " + this.f4734a), jVar);
                                        }
                                    } else if (TextUtils.isEmpty(str.trim())) {
                                        jVar.setDataCallback(null);
                                        jVar.setEndCallback(null);
                                        h.this.a(jVar, aVar2, uri2, i2, bVar2);
                                    }
                                }
                            });
                            jVar.setDataCallback(yVar);
                            jVar.setEndCallback(new a() {
                                public final void onCompleted(Exception exc) {
                                    if (!jVar.isOpen() && exc == null) {
                                        exc = new IOException("socket closed before proxy connect response");
                                    }
                                    bVar2.onConnectCompleted(exc, jVar);
                                }
                            });
                        }
                    });
                }
            }
        };
        return r0;
    }
}
