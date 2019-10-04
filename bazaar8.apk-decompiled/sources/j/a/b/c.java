package j.a.b;

import e.a.a.a.a.b.C1046a;
import j.B;
import j.C1134a;
import j.C1142i;
import j.C1147n;
import j.C1149p;
import j.D;
import j.E;
import j.I;
import j.L;
import j.O;
import j.P;
import j.T;
import j.a.a;
import j.a.d.b;
import j.a.e;
import j.a.e.k;
import j.a.e.q;
import j.a.f;
import j.a.i.d;
import j.z;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import k.h;
import k.i;
import k.s;
import okhttp3.Protocol;
import okhttp3.internal.http2.ErrorCode;

/* compiled from: RealConnection */
public final class c extends k.b implements C1147n {

    /* renamed from: b  reason: collision with root package name */
    public final C1149p f15316b;

    /* renamed from: c  reason: collision with root package name */
    public final T f15317c;

    /* renamed from: d  reason: collision with root package name */
    public Socket f15318d;

    /* renamed from: e  reason: collision with root package name */
    public Socket f15319e;

    /* renamed from: f  reason: collision with root package name */
    public B f15320f;

    /* renamed from: g  reason: collision with root package name */
    public Protocol f15321g;

    /* renamed from: h  reason: collision with root package name */
    public k f15322h;

    /* renamed from: i  reason: collision with root package name */
    public i f15323i;

    /* renamed from: j  reason: collision with root package name */
    public h f15324j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f15325k;

    /* renamed from: l  reason: collision with root package name */
    public int f15326l;
    public int m = 1;
    public final List<Reference<f>> n = new ArrayList();
    public long o = Long.MAX_VALUE;

    public c(C1149p pVar, T t) {
        this.f15316b = pVar;
        this.f15317c = t;
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x012f  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x013b  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0143 A[EDGE_INSN: B:63:0x0143->B:56:0x0143 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:65:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r17, int r18, int r19, int r20, boolean r21, j.C1142i r22, j.z r23) {
        /*
            r16 = this;
            r7 = r16
            r8 = r22
            r9 = r23
            okhttp3.Protocol r0 = r7.f15321g
            if (r0 != 0) goto L_0x0151
            j.T r0 = r7.f15317c
            j.a r0 = r0.a()
            java.util.List r0 = r0.b()
            j.a.b.b r10 = new j.a.b.b
            r10.<init>(r0)
            j.T r1 = r7.f15317c
            j.a r1 = r1.a()
            javax.net.ssl.SSLSocketFactory r1 = r1.j()
            if (r1 != 0) goto L_0x0074
            j.q r1 = j.C1150q.f15688f
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0067
            j.T r0 = r7.f15317c
            j.a r0 = r0.a()
            j.D r0 = r0.k()
            java.lang.String r0 = r0.g()
            j.a.g.f r1 = j.a.g.f.b()
            boolean r1 = r1.b((java.lang.String) r0)
            if (r1 == 0) goto L_0x0046
            goto L_0x0086
        L_0x0046:
            okhttp3.internal.connection.RouteException r1 = new okhttp3.internal.connection.RouteException
            java.net.UnknownServiceException r2 = new java.net.UnknownServiceException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "CLEARTEXT communication to "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = " not permitted by network security policy"
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            r1.<init>(r2)
            throw r1
        L_0x0067:
            okhttp3.internal.connection.RouteException r0 = new okhttp3.internal.connection.RouteException
            java.net.UnknownServiceException r1 = new java.net.UnknownServiceException
            java.lang.String r2 = "CLEARTEXT communication not enabled for client"
            r1.<init>(r2)
            r0.<init>(r1)
            throw r0
        L_0x0074:
            j.T r0 = r7.f15317c
            j.a r0 = r0.a()
            java.util.List r0 = r0.e()
            okhttp3.Protocol r1 = okhttp3.Protocol.H2_PRIOR_KNOWLEDGE
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0144
        L_0x0086:
            r11 = 0
            r12 = r11
        L_0x0088:
            j.T r0 = r7.f15317c     // Catch:{ IOException -> 0x00f9 }
            boolean r0 = r0.c()     // Catch:{ IOException -> 0x00f9 }
            if (r0 == 0) goto L_0x00a9
            r1 = r16
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r22
            r6 = r23
            r1.a(r2, r3, r4, r5, r6)     // Catch:{ IOException -> 0x00f9 }
            java.net.Socket r0 = r7.f15318d     // Catch:{ IOException -> 0x00f9 }
            if (r0 != 0) goto L_0x00a4
            goto L_0x00c6
        L_0x00a4:
            r13 = r17
            r14 = r18
            goto L_0x00b0
        L_0x00a9:
            r13 = r17
            r14 = r18
            r7.a((int) r13, (int) r14, (j.C1142i) r8, (j.z) r9)     // Catch:{ IOException -> 0x00f7 }
        L_0x00b0:
            r15 = r20
            r7.a((j.a.b.b) r10, (int) r15, (j.C1142i) r8, (j.z) r9)     // Catch:{ IOException -> 0x00f5 }
            j.T r0 = r7.f15317c     // Catch:{ IOException -> 0x00f5 }
            java.net.InetSocketAddress r0 = r0.d()     // Catch:{ IOException -> 0x00f5 }
            j.T r1 = r7.f15317c     // Catch:{ IOException -> 0x00f5 }
            java.net.Proxy r1 = r1.b()     // Catch:{ IOException -> 0x00f5 }
            okhttp3.Protocol r2 = r7.f15321g     // Catch:{ IOException -> 0x00f5 }
            r9.a(r8, r0, r1, r2)     // Catch:{ IOException -> 0x00f5 }
        L_0x00c6:
            j.T r0 = r7.f15317c
            boolean r0 = r0.c()
            if (r0 == 0) goto L_0x00e0
            java.net.Socket r0 = r7.f15318d
            if (r0 == 0) goto L_0x00d3
            goto L_0x00e0
        L_0x00d3:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r1 = "Too many tunnel connections attempted: 21"
            r0.<init>(r1)
            okhttp3.internal.connection.RouteException r1 = new okhttp3.internal.connection.RouteException
            r1.<init>(r0)
            throw r1
        L_0x00e0:
            j.a.e.k r0 = r7.f15322h
            if (r0 == 0) goto L_0x00f4
            j.p r1 = r7.f15316b
            monitor-enter(r1)
            j.a.e.k r0 = r7.f15322h     // Catch:{ all -> 0x00f1 }
            int r0 = r0.v()     // Catch:{ all -> 0x00f1 }
            r7.m = r0     // Catch:{ all -> 0x00f1 }
            monitor-exit(r1)     // Catch:{ all -> 0x00f1 }
            goto L_0x00f4
        L_0x00f1:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00f1 }
            throw r0
        L_0x00f4:
            return
        L_0x00f5:
            r0 = move-exception
            goto L_0x0100
        L_0x00f7:
            r0 = move-exception
            goto L_0x00fe
        L_0x00f9:
            r0 = move-exception
            r13 = r17
            r14 = r18
        L_0x00fe:
            r15 = r20
        L_0x0100:
            java.net.Socket r1 = r7.f15319e
            j.a.e.a((java.net.Socket) r1)
            java.net.Socket r1 = r7.f15318d
            j.a.e.a((java.net.Socket) r1)
            r7.f15319e = r11
            r7.f15318d = r11
            r7.f15323i = r11
            r7.f15324j = r11
            r7.f15320f = r11
            r7.f15321g = r11
            r7.f15322h = r11
            j.T r1 = r7.f15317c
            java.net.InetSocketAddress r3 = r1.d()
            j.T r1 = r7.f15317c
            java.net.Proxy r4 = r1.b()
            r5 = 0
            r1 = r23
            r2 = r22
            r6 = r0
            r1.a(r2, r3, r4, r5, r6)
            if (r12 != 0) goto L_0x0136
            okhttp3.internal.connection.RouteException r1 = new okhttp3.internal.connection.RouteException
            r1.<init>(r0)
            r12 = r1
            goto L_0x0139
        L_0x0136:
            r12.a(r0)
        L_0x0139:
            if (r21 == 0) goto L_0x0143
            boolean r0 = r10.a((java.io.IOException) r0)
            if (r0 == 0) goto L_0x0143
            goto L_0x0088
        L_0x0143:
            throw r12
        L_0x0144:
            okhttp3.internal.connection.RouteException r0 = new okhttp3.internal.connection.RouteException
            java.net.UnknownServiceException r1 = new java.net.UnknownServiceException
            java.lang.String r2 = "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"
            r1.<init>(r2)
            r0.<init>(r1)
            throw r0
        L_0x0151:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "already connected"
            r0.<init>(r1)
            goto L_0x015a
        L_0x0159:
            throw r0
        L_0x015a:
            goto L_0x0159
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.b.c.a(int, int, int, int, boolean, j.i, j.z):void");
    }

    public void b() {
        e.a(this.f15318d);
    }

    public final L c() {
        L.a aVar = new L.a();
        aVar.a(this.f15317c.a().k());
        aVar.a("CONNECT", (O) null);
        aVar.b("Host", e.a(this.f15317c.a().k(), true));
        aVar.b("Proxy-Connection", "Keep-Alive");
        aVar.b(C1046a.HEADER_USER_AGENT, f.a());
        L a2 = aVar.a();
        P.a aVar2 = new P.a();
        aVar2.a(a2);
        aVar2.a(Protocol.HTTP_1_1);
        aVar2.a(407);
        aVar2.a("Preemptive Authenticate");
        aVar2.a(e.f15411c);
        aVar2.b(-1);
        aVar2.a(-1);
        aVar2.b("Proxy-Authenticate", "OkHttp-Preemptive");
        L a3 = this.f15317c.a().g().a(this.f15317c, aVar2.a());
        return a3 != null ? a3 : a2;
    }

    public B d() {
        return this.f15320f;
    }

    public boolean e() {
        return this.f15322h != null;
    }

    public T f() {
        return this.f15317c;
    }

    public Socket g() {
        return this.f15319e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f15317c.a().k().g());
        sb.append(":");
        sb.append(this.f15317c.a().k().k());
        sb.append(", proxy=");
        sb.append(this.f15317c.b());
        sb.append(" hostAddress=");
        sb.append(this.f15317c.d());
        sb.append(" cipherSuite=");
        B b2 = this.f15320f;
        sb.append(b2 != null ? b2.a() : "none");
        sb.append(" protocol=");
        sb.append(this.f15321g);
        sb.append('}');
        return sb.toString();
    }

    public final void a(int i2, int i3, int i4, C1142i iVar, z zVar) {
        L c2 = c();
        D g2 = c2.g();
        int i5 = 0;
        while (i5 < 21) {
            a(i2, i3, iVar, zVar);
            c2 = a(i3, i4, c2, g2);
            if (c2 != null) {
                e.a(this.f15318d);
                this.f15318d = null;
                this.f15324j = null;
                this.f15323i = null;
                zVar.a(iVar, this.f15317c.d(), this.f15317c.b(), null);
                i5++;
            } else {
                return;
            }
        }
    }

    public final void a(int i2, int i3, C1142i iVar, z zVar) {
        Socket socket;
        Proxy b2 = this.f15317c.b();
        C1134a a2 = this.f15317c.a();
        if (b2.type() == Proxy.Type.DIRECT || b2.type() == Proxy.Type.HTTP) {
            socket = a2.i().createSocket();
        } else {
            socket = new Socket(b2);
        }
        this.f15318d = socket;
        zVar.a(iVar, this.f15317c.d(), b2);
        this.f15318d.setSoTimeout(i3);
        try {
            j.a.g.f.b().a(this.f15318d, this.f15317c.d(), i2);
            try {
                this.f15323i = s.a(s.b(this.f15318d));
                this.f15324j = s.a(s.a(this.f15318d));
            } catch (NullPointerException e2) {
                if ("throw with null exception".equals(e2.getMessage())) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f15317c.d());
            connectException.initCause(e3);
            throw connectException;
        }
    }

    public final void a(b bVar, int i2, C1142i iVar, z zVar) {
        if (this.f15317c.a().j() != null) {
            zVar.g(iVar);
            a(bVar);
            zVar.a(iVar, this.f15320f);
            if (this.f15321g == Protocol.HTTP_2) {
                a(i2);
            }
        } else if (this.f15317c.a().e().contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            this.f15319e = this.f15318d;
            this.f15321g = Protocol.H2_PRIOR_KNOWLEDGE;
            a(i2);
        } else {
            this.f15319e = this.f15318d;
            this.f15321g = Protocol.HTTP_1_1;
        }
    }

    public final void a(int i2) {
        this.f15319e.setSoTimeout(0);
        k.a aVar = new k.a(true);
        aVar.a(this.f15319e, this.f15317c.a().k().g(), this.f15323i, this.f15324j);
        aVar.a((k.b) this);
        aVar.a(i2);
        this.f15322h = aVar.a();
        this.f15322h.w();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v0, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v1, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v4, resolved type: javax.net.ssl.SSLSocket} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v4, resolved type: java.lang.String} */
    /* JADX WARNING: type inference failed for: r1v1, types: [java.net.Socket, javax.net.ssl.SSLSocket] */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0139 A[Catch:{ all -> 0x012f }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x013f A[Catch:{ all -> 0x012f }] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0142  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(j.a.b.b r8) {
        /*
            r7 = this;
            j.T r0 = r7.f15317c
            j.a r0 = r0.a()
            javax.net.ssl.SSLSocketFactory r1 = r0.j()
            r2 = 0
            java.net.Socket r3 = r7.f15318d     // Catch:{ AssertionError -> 0x0132 }
            j.D r4 = r0.k()     // Catch:{ AssertionError -> 0x0132 }
            java.lang.String r4 = r4.g()     // Catch:{ AssertionError -> 0x0132 }
            j.D r5 = r0.k()     // Catch:{ AssertionError -> 0x0132 }
            int r5 = r5.k()     // Catch:{ AssertionError -> 0x0132 }
            r6 = 1
            java.net.Socket r1 = r1.createSocket(r3, r4, r5, r6)     // Catch:{ AssertionError -> 0x0132 }
            javax.net.ssl.SSLSocket r1 = (javax.net.ssl.SSLSocket) r1     // Catch:{ AssertionError -> 0x0132 }
            j.q r8 = r8.a((javax.net.ssl.SSLSocket) r1)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            boolean r3 = r8.c()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            if (r3 == 0) goto L_0x0041
            j.a.g.f r3 = j.a.g.f.b()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            j.D r4 = r0.k()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r4 = r4.g()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.util.List r5 = r0.e()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r3.a((javax.net.ssl.SSLSocket) r1, (java.lang.String) r4, (java.util.List<okhttp3.Protocol>) r5)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
        L_0x0041:
            r1.startHandshake()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            javax.net.ssl.SSLSession r3 = r1.getSession()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            j.B r4 = j.B.a(r3)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            javax.net.ssl.HostnameVerifier r5 = r0.d()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            j.D r6 = r0.k()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r6 = r6.g()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            boolean r3 = r5.verify(r6, r3)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            if (r3 != 0) goto L_0x00d8
            java.util.List r8 = r4.c()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            boolean r2 = r8.isEmpty()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r3 = "Hostname "
            if (r2 != 0) goto L_0x00b6
            r2 = 0
            java.lang.Object r8 = r8.get(r2)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.security.cert.X509Certificate r8 = (java.security.cert.X509Certificate) r8     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            javax.net.ssl.SSLPeerUnverifiedException r2 = new javax.net.ssl.SSLPeerUnverifiedException     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r4.<init>()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r4.append(r3)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            j.D r0 = r0.k()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = r0.g()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r4.append(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = " not verified:\n    certificate: "
            r4.append(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = j.C1144k.a((java.security.cert.Certificate) r8)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r4.append(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = "\n    DN: "
            r4.append(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.security.Principal r0 = r8.getSubjectDN()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = r0.getName()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r4.append(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = "\n    subjectAltNames: "
            r4.append(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.util.List r8 = j.a.i.d.a(r8)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r4.append(r8)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r8 = r4.toString()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r2.<init>(r8)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            throw r2     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
        L_0x00b6:
            javax.net.ssl.SSLPeerUnverifiedException r8 = new javax.net.ssl.SSLPeerUnverifiedException     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r2.<init>()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r2.append(r3)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            j.D r0 = r0.k()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = r0.g()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r2.append(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = " not verified (no certificates)"
            r2.append(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = r2.toString()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r8.<init>(r0)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            throw r8     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
        L_0x00d8:
            j.k r3 = r0.a()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            j.D r0 = r0.k()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r0 = r0.g()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.util.List r5 = r4.c()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r3.a(r0, r5)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            boolean r8 = r8.c()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            if (r8 == 0) goto L_0x00f9
            j.a.g.f r8 = j.a.g.f.b()     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.lang.String r2 = r8.b((javax.net.ssl.SSLSocket) r1)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
        L_0x00f9:
            r7.f15319e = r1     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.net.Socket r8 = r7.f15319e     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            k.z r8 = k.s.b((java.net.Socket) r8)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            k.i r8 = k.s.a((k.z) r8)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r7.f15323i = r8     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            java.net.Socket r8 = r7.f15319e     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            k.y r8 = k.s.a((java.net.Socket) r8)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            k.h r8 = k.s.a((k.y) r8)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r7.f15324j = r8     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            r7.f15320f = r4     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            if (r2 == 0) goto L_0x011c
            okhttp3.Protocol r8 = okhttp3.Protocol.a(r2)     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            goto L_0x011e
        L_0x011c:
            okhttp3.Protocol r8 = okhttp3.Protocol.HTTP_1_1     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
        L_0x011e:
            r7.f15321g = r8     // Catch:{ AssertionError -> 0x012c, all -> 0x012a }
            if (r1 == 0) goto L_0x0129
            j.a.g.f r8 = j.a.g.f.b()
            r8.a((javax.net.ssl.SSLSocket) r1)
        L_0x0129:
            return
        L_0x012a:
            r8 = move-exception
            goto L_0x0140
        L_0x012c:
            r8 = move-exception
            r2 = r1
            goto L_0x0133
        L_0x012f:
            r8 = move-exception
            r1 = r2
            goto L_0x0140
        L_0x0132:
            r8 = move-exception
        L_0x0133:
            boolean r0 = j.a.e.a((java.lang.AssertionError) r8)     // Catch:{ all -> 0x012f }
            if (r0 == 0) goto L_0x013f
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x012f }
            r0.<init>(r8)     // Catch:{ all -> 0x012f }
            throw r0     // Catch:{ all -> 0x012f }
        L_0x013f:
            throw r8     // Catch:{ all -> 0x012f }
        L_0x0140:
            if (r1 == 0) goto L_0x0149
            j.a.g.f r0 = j.a.g.f.b()
            r0.a((javax.net.ssl.SSLSocket) r1)
        L_0x0149:
            j.a.e.a((java.net.Socket) r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.b.c.a(j.a.b.b):void");
    }

    public final L a(int i2, int i3, L l2, D d2) {
        String str = "CONNECT " + e.a(d2, true) + " HTTP/1.1";
        while (true) {
            b bVar = new b(null, null, this.f15323i, this.f15324j);
            this.f15323i.b().a((long) i2, TimeUnit.MILLISECONDS);
            this.f15324j.b().a((long) i3, TimeUnit.MILLISECONDS);
            bVar.a(l2.c(), str);
            bVar.a();
            P.a a2 = bVar.a(false);
            a2.a(l2);
            P a3 = a2.a();
            long a4 = j.a.c.f.a(a3);
            if (a4 == -1) {
                a4 = 0;
            }
            k.z b2 = bVar.b(a4);
            e.b(b2, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            b2.close();
            int v = a3.v();
            if (v != 200) {
                if (v == 407) {
                    L a5 = this.f15317c.a().g().a(this.f15317c, a3);
                    if (a5 == null) {
                        throw new IOException("Failed to authenticate with proxy");
                    } else if ("close".equalsIgnoreCase(a3.e("Connection"))) {
                        return a5;
                    } else {
                        l2 = a5;
                    }
                } else {
                    throw new IOException("Unexpected response code for CONNECT: " + a3.v());
                }
            } else if (this.f15323i.a().d() && this.f15324j.a().d()) {
                return null;
            } else {
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
        }
    }

    public boolean a(C1134a aVar, T t) {
        if (this.n.size() >= this.m || this.f15325k || !a.f15256a.a(this.f15317c.a(), aVar)) {
            return false;
        }
        if (aVar.k().g().equals(f().a().k().g())) {
            return true;
        }
        if (this.f15322h == null || t == null || t.b().type() != Proxy.Type.DIRECT || this.f15317c.b().type() != Proxy.Type.DIRECT || !this.f15317c.d().equals(t.d()) || t.a().d() != d.f15599a || !a(aVar.k())) {
            return false;
        }
        try {
            aVar.a().a(aVar.k().g(), d().c());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean a(D d2) {
        if (d2.k() != this.f15317c.a().k().k()) {
            return false;
        }
        boolean z = true;
        if (!d2.g().equals(this.f15317c.a().k().g()) && (this.f15320f == null || !d.f15599a.verify(d2.g(), (X509Certificate) this.f15320f.c().get(0)))) {
            z = false;
        }
        return z;
    }

    public j.a.c.c a(I i2, E.a aVar, f fVar) {
        k kVar = this.f15322h;
        if (kVar != null) {
            return new j.a.e.d(i2, aVar, fVar, kVar);
        }
        this.f15319e.setSoTimeout(aVar.a());
        this.f15323i.b().a((long) aVar.a(), TimeUnit.MILLISECONDS);
        this.f15324j.b().a((long) aVar.b(), TimeUnit.MILLISECONDS);
        return new b(i2, fVar, this.f15323i, this.f15324j);
    }

    public boolean a(boolean z) {
        int soTimeout;
        if (this.f15319e.isClosed() || this.f15319e.isInputShutdown() || this.f15319e.isOutputShutdown()) {
            return false;
        }
        k kVar = this.f15322h;
        if (kVar != null) {
            return !kVar.u();
        }
        if (z) {
            try {
                soTimeout = this.f15319e.getSoTimeout();
                this.f15319e.setSoTimeout(1);
                if (this.f15323i.d()) {
                    this.f15319e.setSoTimeout(soTimeout);
                    return false;
                }
                this.f15319e.setSoTimeout(soTimeout);
                return true;
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            } catch (Throwable th) {
                this.f15319e.setSoTimeout(soTimeout);
                throw th;
            }
        }
        return true;
    }

    public void a(q qVar) {
        qVar.a(ErrorCode.REFUSED_STREAM);
    }

    public void a(k kVar) {
        synchronized (this.f15316b) {
            this.m = kVar.v();
        }
    }

    public Protocol a() {
        return this.f15321g;
    }
}
