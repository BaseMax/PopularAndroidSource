package com.koushikdutta.async;

import android.os.Build;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.a.g;
import com.koushikdutta.async.f.a;
import java.nio.ByteBuffer;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class f implements e, a {

    /* renamed from: a  reason: collision with root package name */
    static SSLContext f4526a;
    static final /* synthetic */ boolean t = (!f.class.desiredAssertionStatus());

    /* renamed from: b  reason: collision with root package name */
    j f4527b;
    k c;
    boolean d;
    SSLEngine e;
    boolean f;
    HostnameVerifier g;
    a h;
    X509Certificate[] i;
    g j;
    d k;
    TrustManager[] l;
    boolean m;
    boolean n;
    Exception o;
    final l p = new l();
    final d q = new d() {

        /* renamed from: a  reason: collision with root package name */
        final com.koushikdutta.async.e.a f4531a = new com.koushikdutta.async.e.a().setMinAlloc(8192);

        /* renamed from: b  reason: collision with root package name */
        final l f4532b = new l();

        public final void onDataAvailable(n nVar, l lVar) {
            if (!f.this.d) {
                try {
                    f.this.d = true;
                    lVar.get(this.f4532b);
                    if (this.f4532b.hasRemaining()) {
                        this.f4532b.add(this.f4532b.getAll());
                    }
                    ByteBuffer byteBuffer = l.EMPTY_BYTEBUFFER;
                    while (true) {
                        if (byteBuffer.remaining() == 0 && this.f4532b.size() > 0) {
                            byteBuffer = this.f4532b.remove();
                        }
                        int remaining = byteBuffer.remaining();
                        int remaining2 = f.this.p.remaining();
                        ByteBuffer allocate = this.f4531a.allocate();
                        SSLEngineResult unwrap = f.this.e.unwrap(byteBuffer, allocate);
                        f.a(f.this.p, allocate);
                        this.f4531a.track((long) (f.this.p.remaining() - remaining2));
                        int i = -1;
                        if (unwrap.getStatus() == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                            this.f4531a.setMinAlloc(this.f4531a.getMinAlloc() * 2);
                        } else if (unwrap.getStatus() == SSLEngineResult.Status.BUFFER_UNDERFLOW) {
                            this.f4532b.addFirst(byteBuffer);
                            if (this.f4532b.size() <= 1) {
                                break;
                            }
                            this.f4532b.addFirst(this.f4532b.getAll());
                            byteBuffer = l.EMPTY_BYTEBUFFER;
                        } else {
                            i = remaining;
                        }
                        f.this.a(unwrap.getHandshakeStatus());
                        if (byteBuffer.remaining() == i && remaining2 == f.this.p.remaining()) {
                            this.f4532b.addFirst(byteBuffer);
                            break;
                        }
                    }
                    f.this.onDataAvailable();
                } catch (SSLException e) {
                    e.printStackTrace();
                    f.this.a((Exception) e);
                } catch (Throwable th) {
                    f.this.d = false;
                    throw th;
                }
                f.this.d = false;
            }
        }
    };
    l r = new l();
    com.koushikdutta.async.a.a s;
    private int u;
    private String v;
    private boolean w;

    public interface a {
        void onHandshakeCompleted(Exception exc, e eVar);
    }

    public String charset() {
        return null;
    }

    static {
        try {
            if (Build.VERSION.SDK_INT > 15) {
                f4526a = SSLContext.getInstance("Default");
                return;
            }
            throw new Exception();
        } catch (Exception e2) {
            try {
                f4526a = SSLContext.getInstance("TLS");
                f4526a.init(null, new TrustManager[]{new X509TrustManager() {
                    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    public final X509Certificate[] getAcceptedIssuers() {
                        return new X509Certificate[0];
                    }

                    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                        for (X509Certificate x509Certificate : x509CertificateArr) {
                            if (!(x509Certificate == null || x509Certificate.getCriticalExtensionOIDs() == null)) {
                                x509Certificate.getCriticalExtensionOIDs().remove("2.5.29.15");
                            }
                        }
                    }
                }}, null);
            } catch (Exception e3) {
                e2.printStackTrace();
                e3.printStackTrace();
            }
        }
    }

    public static SSLContext getDefaultSSLContext() {
        return f4526a;
    }

    public static void handshake(j jVar, String str, int i2, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z, a aVar) {
        final a aVar2 = aVar;
        f fVar = new f(jVar, str, i2, sSLEngine, trustManagerArr, hostnameVerifier, z);
        fVar.h = aVar2;
        AnonymousClass2 r1 = new com.koushikdutta.async.a.a() {
            public final void onCompleted(Exception exc) {
                if (exc != null) {
                    aVar2.onHandshakeCompleted(exc, null);
                } else {
                    aVar2.onHandshakeCompleted(new SSLException("socket closed during handshake"), null);
                }
            }
        };
        j jVar2 = jVar;
        jVar.setClosedCallback(r1);
        try {
            fVar.e.beginHandshake();
            fVar.a(fVar.e.getHandshakeStatus());
        } catch (SSLException e2) {
            fVar.a((Exception) e2);
        }
    }

    private f(j jVar, String str, int i2, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z) {
        this.f4527b = jVar;
        this.g = hostnameVerifier;
        this.m = z;
        this.l = trustManagerArr;
        this.e = sSLEngine;
        this.v = str;
        this.u = i2;
        this.e.setUseClientMode(z);
        this.c = new k(jVar);
        this.c.setWriteableCallback(new g() {
            public final void onWriteable() {
                if (f.this.j != null) {
                    f.this.j.onWriteable();
                }
            }
        });
        this.f4527b.setEndCallback(new com.koushikdutta.async.a.a() {
            public final void onCompleted(Exception exc) {
                if (!f.this.n) {
                    f fVar = f.this;
                    fVar.n = true;
                    fVar.o = exc;
                    if (!fVar.p.hasRemaining() && f.this.s != null) {
                        f.this.s.onCompleted(exc);
                    }
                }
            }
        });
        this.f4527b.setDataCallback(this.q);
    }

    public void onDataAvailable() {
        af.emitAllData(this, this.p);
        if (this.n && !this.p.hasRemaining()) {
            com.koushikdutta.async.a.a aVar = this.s;
            if (aVar != null) {
                aVar.onCompleted(this.o);
            }
        }
    }

    public SSLEngine getSSLEngine() {
        return this.e;
    }

    static void a(l lVar, ByteBuffer byteBuffer) {
        byteBuffer.flip();
        if (byteBuffer.hasRemaining()) {
            lVar.add(byteBuffer);
        } else {
            l.reclaim(byteBuffer);
        }
    }

    public void end() {
        this.f4527b.end();
    }

    public String getHost() {
        return this.v;
    }

    public int getPort() {
        return this.u;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00ff, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0100, code lost:
        a((java.lang.Exception) r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0103, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0104, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0105, code lost:
        a((java.lang.Exception) r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0108, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0109, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0110, code lost:
        throw new java.lang.RuntimeException(r11);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ff A[ExcHandler: d (r11v3 'e' com.koushikdutta.async.d A[CUSTOM_DECLARE]), Splitter:B:9:0x0024] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0109 A[ExcHandler: NoSuchAlgorithmException (r11v1 'e' java.security.NoSuchAlgorithmException A[CUSTOM_DECLARE]), Splitter:B:9:0x0024] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(javax.net.ssl.SSLEngineResult.HandshakeStatus r11) {
        /*
            r10 = this;
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_TASK
            if (r11 != r0) goto L_0x000d
            javax.net.ssl.SSLEngine r0 = r10.e
            java.lang.Runnable r0 = r0.getDelegatedTask()
            r0.run()
        L_0x000d:
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_WRAP
            if (r11 != r0) goto L_0x0016
            com.koushikdutta.async.l r0 = r10.r
            r10.write(r0)
        L_0x0016:
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_UNWRAP
            if (r11 != r0) goto L_0x0024
            com.koushikdutta.async.a.d r11 = r10.q
            com.koushikdutta.async.l r0 = new com.koushikdutta.async.l
            r0.<init>()
            r11.onDataAvailable(r10, r0)
        L_0x0024:
            boolean r11 = r10.f     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            if (r11 != 0) goto L_0x00fe
            javax.net.ssl.SSLEngine r11 = r10.e     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            javax.net.ssl.SSLEngineResult$HandshakeStatus r11 = r11.getHandshakeStatus()     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            if (r11 == r0) goto L_0x003c
            javax.net.ssl.SSLEngine r11 = r10.e     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            javax.net.ssl.SSLEngineResult$HandshakeStatus r11 = r11.getHandshakeStatus()     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.FINISHED     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            if (r11 != r0) goto L_0x00fe
        L_0x003c:
            boolean r11 = r10.m     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r0 = 1
            r1 = 0
            if (r11 == 0) goto L_0x00e1
            javax.net.ssl.TrustManager[] r11 = r10.l     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            if (r11 != 0) goto L_0x0055
            java.lang.String r11 = javax.net.ssl.TrustManagerFactory.getDefaultAlgorithm()     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            javax.net.ssl.TrustManagerFactory r11 = javax.net.ssl.TrustManagerFactory.getInstance(r11)     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r11.init(r1)     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            javax.net.ssl.TrustManager[] r11 = r11.getTrustManagers()     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
        L_0x0055:
            int r2 = r11.length     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r3 = 0
            r5 = r1
            r4 = 0
        L_0x0059:
            if (r4 >= r2) goto L_0x00cd
            r6 = r11[r4]     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            javax.net.ssl.X509TrustManager r6 = (javax.net.ssl.X509TrustManager) r6     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            javax.net.ssl.SSLEngine r7 = r10.e     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            javax.net.ssl.SSLSession r7 = r7.getSession()     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.security.cert.Certificate[] r7 = r7.getPeerCertificates()     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.security.cert.X509Certificate[] r7 = (java.security.cert.X509Certificate[]) r7     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.security.cert.X509Certificate[] r7 = (java.security.cert.X509Certificate[]) r7     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            r10.i = r7     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.security.cert.X509Certificate[] r7 = r10.i     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String r8 = "SSL"
            r6.checkServerTrusted(r7, r8)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String r6 = r10.v     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            if (r6 == 0) goto L_0x00c5
            javax.net.ssl.HostnameVerifier r6 = r10.g     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            if (r6 != 0) goto L_0x0099
            org.apache.http.conn.ssl.StrictHostnameVerifier r6 = new org.apache.http.conn.ssl.StrictHostnameVerifier     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            r6.<init>()     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String r7 = r10.v     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.security.cert.X509Certificate[] r8 = r10.i     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            r8 = r8[r3]     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String[] r8 = org.apache.http.conn.ssl.StrictHostnameVerifier.getCNs(r8)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.security.cert.X509Certificate[] r9 = r10.i     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            r9 = r9[r3]     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String[] r9 = org.apache.http.conn.ssl.StrictHostnameVerifier.getDNSSubjectAlts(r9)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            r6.verify(r7, r8, r9)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            goto L_0x00c5
        L_0x0099:
            javax.net.ssl.HostnameVerifier r6 = r10.g     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String r7 = r10.v     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            javax.net.ssl.SSLEngine r8 = r10.e     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            javax.net.ssl.SSLSession r8 = r8.getSession()     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            boolean r6 = r6.verify(r7, r8)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            if (r6 == 0) goto L_0x00aa
            goto L_0x00c5
        L_0x00aa:
            javax.net.ssl.SSLException r5 = new javax.net.ssl.SSLException     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String r7 = "hostname <"
            r6.<init>(r7)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String r7 = r10.v     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            r6.append(r7)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String r7 = "> has been denied"
            r6.append(r7)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            java.lang.String r6 = r6.toString()     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            r5.<init>(r6)     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
            throw r5     // Catch:{ GeneralSecurityException -> 0x00c9, SSLException -> 0x00c7, NoSuchAlgorithmException -> 0x0109, d -> 0x00ff }
        L_0x00c5:
            r3 = 1
            goto L_0x00cd
        L_0x00c7:
            r5 = move-exception
            goto L_0x00ca
        L_0x00c9:
            r5 = move-exception
        L_0x00ca:
            int r4 = r4 + 1
            goto L_0x0059
        L_0x00cd:
            r10.f = r0     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            if (r3 != 0) goto L_0x00e3
            com.koushikdutta.async.d r11 = new com.koushikdutta.async.d     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r11.<init>(r5)     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r10.a((java.lang.Exception) r11)     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            boolean r0 = r11.getIgnore()     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            if (r0 == 0) goto L_0x00e0
            goto L_0x00e3
        L_0x00e0:
            throw r11     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
        L_0x00e1:
            r10.f = r0     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
        L_0x00e3:
            com.koushikdutta.async.f$a r11 = r10.h     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r11.onHandshakeCompleted(r1, r10)     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r10.h = r1     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            com.koushikdutta.async.j r11 = r10.f4527b     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r11.setClosedCallback(r1)     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            com.koushikdutta.async.h r11 = r10.getServer()     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            com.koushikdutta.async.f$6 r0 = new com.koushikdutta.async.f$6     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r0.<init>()     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r11.post(r0)     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
            r10.onDataAvailable()     // Catch:{ NoSuchAlgorithmException -> 0x0109, GeneralSecurityException -> 0x0104, d -> 0x00ff }
        L_0x00fe:
            return
        L_0x00ff:
            r11 = move-exception
            r10.a((java.lang.Exception) r11)
            return
        L_0x0104:
            r11 = move-exception
            r10.a((java.lang.Exception) r11)
            return
        L_0x0109:
            r11 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>(r11)
            goto L_0x0111
        L_0x0110:
            throw r0
        L_0x0111:
            goto L_0x0110
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.f.a(javax.net.ssl.SSLEngineResult$HandshakeStatus):void");
    }

    private static int a(int i2) {
        int i3 = (i2 * 3) / 2;
        if (i3 == 0) {
            return 8192;
        }
        return i3;
    }

    public void write(l lVar) {
        if (!this.w && this.c.remaining() <= 0) {
            this.w = true;
            ByteBuffer obtain = l.obtain(a(lVar.remaining()));
            SSLEngineResult sSLEngineResult = null;
            do {
                if (this.f && lVar.remaining() == 0) {
                    break;
                }
                int remaining = lVar.remaining();
                try {
                    ByteBuffer[] allArray = lVar.getAllArray();
                    sSLEngineResult = this.e.wrap(allArray, obtain);
                    lVar.addAll(allArray);
                    obtain.flip();
                    this.r.add(obtain);
                    if (!t) {
                        if (this.r.hasRemaining()) {
                            throw new AssertionError();
                        }
                    }
                    if (this.r.remaining() > 0) {
                        this.c.write(this.r);
                    }
                    int capacity = obtain.capacity();
                    try {
                        if (sSLEngineResult.getStatus() == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                            obtain = l.obtain(capacity * 2);
                            remaining = -1;
                        } else {
                            obtain = l.obtain(a(lVar.remaining()));
                            a(sSLEngineResult.getHandshakeStatus());
                        }
                    } catch (SSLException e2) {
                        e = e2;
                        obtain = null;
                        a((Exception) e);
                        if (this.c.remaining() != 0) {
                            this.w = false;
                            l.reclaim(obtain);
                        }
                    }
                } catch (SSLException e3) {
                    e = e3;
                }
                if (remaining == lVar.remaining() && (sSLEngineResult == null || sSLEngineResult.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NEED_WRAP)) {
                    break;
                }
            } while (this.c.remaining() != 0);
            this.w = false;
            l.reclaim(obtain);
        }
    }

    public void setWriteableCallback(g gVar) {
        this.j = gVar;
    }

    public g getWriteableCallback() {
        return this.j;
    }

    /* access modifiers changed from: private */
    public void a(Exception exc) {
        a aVar = this.h;
        if (aVar != null) {
            this.h = null;
            this.f4527b.setDataCallback(new d.a());
            this.f4527b.end();
            this.f4527b.setClosedCallback(null);
            this.f4527b.close();
            aVar.onHandshakeCompleted(exc, null);
            return;
        }
        com.koushikdutta.async.a.a endCallback = getEndCallback();
        if (endCallback != null) {
            endCallback.onCompleted(exc);
        }
    }

    public void setDataCallback(d dVar) {
        this.k = dVar;
    }

    public d getDataCallback() {
        return this.k;
    }

    public boolean isChunked() {
        return this.f4527b.isChunked();
    }

    public boolean isOpen() {
        return this.f4527b.isOpen();
    }

    public void close() {
        this.f4527b.close();
    }

    public void setClosedCallback(com.koushikdutta.async.a.a aVar) {
        this.f4527b.setClosedCallback(aVar);
    }

    public com.koushikdutta.async.a.a getClosedCallback() {
        return this.f4527b.getClosedCallback();
    }

    public void setEndCallback(com.koushikdutta.async.a.a aVar) {
        this.s = aVar;
    }

    public com.koushikdutta.async.a.a getEndCallback() {
        return this.s;
    }

    public void pause() {
        this.f4527b.pause();
    }

    public void resume() {
        this.f4527b.resume();
        onDataAvailable();
    }

    public boolean isPaused() {
        return this.f4527b.isPaused();
    }

    public h getServer() {
        return this.f4527b.getServer();
    }

    public j getSocket() {
        return this.f4527b;
    }

    public n getDataEmitter() {
        return this.f4527b;
    }

    public X509Certificate[] getPeerCertificates() {
        return this.i;
    }
}
