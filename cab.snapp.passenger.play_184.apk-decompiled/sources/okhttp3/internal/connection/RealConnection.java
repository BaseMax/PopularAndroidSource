package okhttp3.internal.connection;

import androidx.appcompat.widget.ActivityChooserView;
import b.d;
import b.e;
import b.n;
import b.v;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.ConnectionPool;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.Version;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http1.Http1Codec;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Codec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;

public final class RealConnection extends Http2Connection.Listener implements Connection {
    private static final int MAX_TUNNEL_ATTEMPTS = 21;
    private static final String NPE_THROW_WITH_NULL = "throw with null exception";
    public int allocationLimit = 1;
    public final List<Reference<StreamAllocation>> allocations = new ArrayList();
    private final ConnectionPool connectionPool;
    private Handshake handshake;
    private Http2Connection http2Connection;
    public long idleAtNanos = Long.MAX_VALUE;
    public boolean noNewStreams;
    private Protocol protocol;
    private Socket rawSocket;
    private final Route route;
    private d sink;
    private Socket socket;
    private e source;
    public int successCount;

    public RealConnection(ConnectionPool connectionPool2, Route route2) {
        this.connectionPool = connectionPool2;
        this.route = route2;
    }

    public static RealConnection testConnection(ConnectionPool connectionPool2, Route route2, Socket socket2, long j) {
        RealConnection realConnection = new RealConnection(connectionPool2, route2);
        realConnection.socket = socket2;
        realConnection.idleAtNanos = j;
        return realConnection;
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00f1 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0138  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0140 A[EDGE_INSN: B:63:0x0140->B:57:0x0140 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect(int r17, int r18, int r19, int r20, boolean r21, okhttp3.Call r22, okhttp3.EventListener r23) {
        /*
            r16 = this;
            r7 = r16
            r8 = r22
            r9 = r23
            okhttp3.Protocol r0 = r7.protocol
            if (r0 != 0) goto L_0x014e
            okhttp3.Route r0 = r7.route
            okhttp3.Address r0 = r0.address()
            java.util.List r0 = r0.connectionSpecs()
            okhttp3.internal.connection.ConnectionSpecSelector r10 = new okhttp3.internal.connection.ConnectionSpecSelector
            r10.<init>(r0)
            okhttp3.Route r1 = r7.route
            okhttp3.Address r1 = r1.address()
            javax.net.ssl.SSLSocketFactory r1 = r1.sslSocketFactory()
            if (r1 != 0) goto L_0x0071
            okhttp3.ConnectionSpec r1 = okhttp3.ConnectionSpec.CLEARTEXT
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0064
            okhttp3.Route r0 = r7.route
            okhttp3.Address r0 = r0.address()
            okhttp3.HttpUrl r0 = r0.url()
            java.lang.String r0 = r0.host()
            okhttp3.internal.platform.Platform r1 = okhttp3.internal.platform.Platform.get()
            boolean r1 = r1.isCleartextTrafficPermitted(r0)
            if (r1 == 0) goto L_0x0046
            goto L_0x0083
        L_0x0046:
            okhttp3.internal.connection.RouteException r1 = new okhttp3.internal.connection.RouteException
            java.net.UnknownServiceException r2 = new java.net.UnknownServiceException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "CLEARTEXT communication to "
            r3.<init>(r4)
            r3.append(r0)
            java.lang.String r0 = " not permitted by network security policy"
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            r1.<init>(r2)
            throw r1
        L_0x0064:
            okhttp3.internal.connection.RouteException r0 = new okhttp3.internal.connection.RouteException
            java.net.UnknownServiceException r1 = new java.net.UnknownServiceException
            java.lang.String r2 = "CLEARTEXT communication not enabled for client"
            r1.<init>(r2)
            r0.<init>(r1)
            throw r0
        L_0x0071:
            okhttp3.Route r0 = r7.route
            okhttp3.Address r0 = r0.address()
            java.util.List r0 = r0.protocols()
            okhttp3.Protocol r1 = okhttp3.Protocol.H2_PRIOR_KNOWLEDGE
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0141
        L_0x0083:
            r11 = 0
            r12 = r11
        L_0x0085:
            okhttp3.Route r0 = r7.route     // Catch:{ IOException -> 0x00f6 }
            boolean r0 = r0.requiresTunnel()     // Catch:{ IOException -> 0x00f6 }
            if (r0 == 0) goto L_0x00a6
            r1 = r16
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r22
            r6 = r23
            r1.connectTunnel(r2, r3, r4, r5, r6)     // Catch:{ IOException -> 0x00f6 }
            java.net.Socket r0 = r7.rawSocket     // Catch:{ IOException -> 0x00f6 }
            if (r0 != 0) goto L_0x00a1
            goto L_0x00c3
        L_0x00a1:
            r13 = r17
            r14 = r18
            goto L_0x00ad
        L_0x00a6:
            r13 = r17
            r14 = r18
            r7.connectSocket(r13, r14, r8, r9)     // Catch:{ IOException -> 0x00f4 }
        L_0x00ad:
            r15 = r20
            r7.establishProtocol(r10, r15, r8, r9)     // Catch:{ IOException -> 0x00f2 }
            okhttp3.Route r0 = r7.route     // Catch:{ IOException -> 0x00f2 }
            java.net.InetSocketAddress r0 = r0.socketAddress()     // Catch:{ IOException -> 0x00f2 }
            okhttp3.Route r1 = r7.route     // Catch:{ IOException -> 0x00f2 }
            java.net.Proxy r1 = r1.proxy()     // Catch:{ IOException -> 0x00f2 }
            okhttp3.Protocol r2 = r7.protocol     // Catch:{ IOException -> 0x00f2 }
            r9.connectEnd(r8, r0, r1, r2)     // Catch:{ IOException -> 0x00f2 }
        L_0x00c3:
            okhttp3.Route r0 = r7.route
            boolean r0 = r0.requiresTunnel()
            if (r0 == 0) goto L_0x00dd
            java.net.Socket r0 = r7.rawSocket
            if (r0 == 0) goto L_0x00d0
            goto L_0x00dd
        L_0x00d0:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r1 = "Too many tunnel connections attempted: 21"
            r0.<init>(r1)
            okhttp3.internal.connection.RouteException r1 = new okhttp3.internal.connection.RouteException
            r1.<init>(r0)
            throw r1
        L_0x00dd:
            okhttp3.internal.http2.Http2Connection r0 = r7.http2Connection
            if (r0 == 0) goto L_0x00f1
            okhttp3.ConnectionPool r1 = r7.connectionPool
            monitor-enter(r1)
            okhttp3.internal.http2.Http2Connection r0 = r7.http2Connection     // Catch:{ all -> 0x00ee }
            int r0 = r0.maxConcurrentStreams()     // Catch:{ all -> 0x00ee }
            r7.allocationLimit = r0     // Catch:{ all -> 0x00ee }
            monitor-exit(r1)     // Catch:{ all -> 0x00ee }
            return
        L_0x00ee:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00ee }
            throw r0
        L_0x00f1:
            return
        L_0x00f2:
            r0 = move-exception
            goto L_0x00fd
        L_0x00f4:
            r0 = move-exception
            goto L_0x00fb
        L_0x00f6:
            r0 = move-exception
            r13 = r17
            r14 = r18
        L_0x00fb:
            r15 = r20
        L_0x00fd:
            java.net.Socket r1 = r7.socket
            okhttp3.internal.Util.closeQuietly((java.net.Socket) r1)
            java.net.Socket r1 = r7.rawSocket
            okhttp3.internal.Util.closeQuietly((java.net.Socket) r1)
            r7.socket = r11
            r7.rawSocket = r11
            r7.source = r11
            r7.sink = r11
            r7.handshake = r11
            r7.protocol = r11
            r7.http2Connection = r11
            okhttp3.Route r1 = r7.route
            java.net.InetSocketAddress r3 = r1.socketAddress()
            okhttp3.Route r1 = r7.route
            java.net.Proxy r4 = r1.proxy()
            r5 = 0
            r1 = r23
            r2 = r22
            r6 = r0
            r1.connectFailed(r2, r3, r4, r5, r6)
            if (r12 != 0) goto L_0x0133
            okhttp3.internal.connection.RouteException r1 = new okhttp3.internal.connection.RouteException
            r1.<init>(r0)
            r12 = r1
            goto L_0x0136
        L_0x0133:
            r12.addConnectException(r0)
        L_0x0136:
            if (r21 == 0) goto L_0x0140
            boolean r0 = r10.connectionFailed(r0)
            if (r0 == 0) goto L_0x0140
            goto L_0x0085
        L_0x0140:
            throw r12
        L_0x0141:
            okhttp3.internal.connection.RouteException r0 = new okhttp3.internal.connection.RouteException
            java.net.UnknownServiceException r1 = new java.net.UnknownServiceException
            java.lang.String r2 = "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"
            r1.<init>(r2)
            r0.<init>(r1)
            throw r0
        L_0x014e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "already connected"
            r0.<init>(r1)
            goto L_0x0157
        L_0x0156:
            throw r0
        L_0x0157:
            goto L_0x0156
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.connect(int, int, int, int, boolean, okhttp3.Call, okhttp3.EventListener):void");
    }

    private void connectTunnel(int i, int i2, int i3, Call call, EventListener eventListener) throws IOException {
        Request createTunnelRequest = createTunnelRequest();
        HttpUrl url = createTunnelRequest.url();
        int i4 = 0;
        while (i4 < 21) {
            connectSocket(i, i2, call, eventListener);
            createTunnelRequest = createTunnel(i2, i3, createTunnelRequest, url);
            if (createTunnelRequest != null) {
                Util.closeQuietly(this.rawSocket);
                this.rawSocket = null;
                this.sink = null;
                this.source = null;
                eventListener.connectEnd(call, this.route.socketAddress(), this.route.proxy(), null);
                i4++;
            } else {
                return;
            }
        }
    }

    private void connectSocket(int i, int i2, Call call, EventListener eventListener) throws IOException {
        Socket socket2;
        Proxy proxy = this.route.proxy();
        Address address = this.route.address();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) {
            socket2 = address.socketFactory().createSocket();
        } else {
            socket2 = new Socket(proxy);
        }
        this.rawSocket = socket2;
        eventListener.connectStart(call, this.route.socketAddress(), proxy);
        this.rawSocket.setSoTimeout(i2);
        try {
            Platform.get().connectSocket(this.rawSocket, this.route.socketAddress(), i);
            try {
                this.source = n.buffer(n.source(this.rawSocket));
                this.sink = n.buffer(n.sink(this.rawSocket));
            } catch (NullPointerException e) {
                if (NPE_THROW_WITH_NULL.equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.route.socketAddress());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private void establishProtocol(ConnectionSpecSelector connectionSpecSelector, int i, Call call, EventListener eventListener) throws IOException {
        if (this.route.address().sslSocketFactory() != null) {
            eventListener.secureConnectStart(call);
            connectTls(connectionSpecSelector);
            eventListener.secureConnectEnd(call, this.handshake);
            if (this.protocol == Protocol.HTTP_2) {
                startHttp2(i);
            }
        } else if (this.route.address().protocols().contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            this.socket = this.rawSocket;
            this.protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            startHttp2(i);
        } else {
            this.socket = this.rawSocket;
            this.protocol = Protocol.HTTP_1_1;
        }
    }

    private void startHttp2(int i) throws IOException {
        this.socket.setSoTimeout(0);
        this.http2Connection = new Http2Connection.Builder(true).socket(this.socket, this.route.address().url().host(), this.source, this.sink).listener(this).pingIntervalMillis(i).build();
        this.http2Connection.start();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v0, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v1, resolved type: javax.net.ssl.SSLSocket} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v1, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: javax.net.ssl.SSLSocket} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v4, resolved type: javax.net.ssl.SSLSocket} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v4, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v5, resolved type: javax.net.ssl.SSLSocket} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0133 A[Catch:{ all -> 0x0129 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0139 A[Catch:{ all -> 0x0129 }] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x013c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void connectTls(okhttp3.internal.connection.ConnectionSpecSelector r8) throws java.io.IOException {
        /*
            r7 = this;
            okhttp3.Route r0 = r7.route
            okhttp3.Address r0 = r0.address()
            javax.net.ssl.SSLSocketFactory r1 = r0.sslSocketFactory()
            r2 = 0
            java.net.Socket r3 = r7.rawSocket     // Catch:{ AssertionError -> 0x012c }
            okhttp3.HttpUrl r4 = r0.url()     // Catch:{ AssertionError -> 0x012c }
            java.lang.String r4 = r4.host()     // Catch:{ AssertionError -> 0x012c }
            okhttp3.HttpUrl r5 = r0.url()     // Catch:{ AssertionError -> 0x012c }
            int r5 = r5.port()     // Catch:{ AssertionError -> 0x012c }
            r6 = 1
            java.net.Socket r1 = r1.createSocket(r3, r4, r5, r6)     // Catch:{ AssertionError -> 0x012c }
            javax.net.ssl.SSLSocket r1 = (javax.net.ssl.SSLSocket) r1     // Catch:{ AssertionError -> 0x012c }
            okhttp3.ConnectionSpec r8 = r8.configureSecureSocket(r1)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            boolean r3 = r8.supportsTlsExtensions()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            if (r3 == 0) goto L_0x0041
            okhttp3.internal.platform.Platform r3 = okhttp3.internal.platform.Platform.get()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            okhttp3.HttpUrl r4 = r0.url()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r4 = r4.host()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.util.List r5 = r0.protocols()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r3.configureTlsExtensions(r1, r4, r5)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
        L_0x0041:
            r1.startHandshake()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            javax.net.ssl.SSLSession r3 = r1.getSession()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            okhttp3.Handshake r4 = okhttp3.Handshake.get(r3)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            javax.net.ssl.HostnameVerifier r5 = r0.hostnameVerifier()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            okhttp3.HttpUrl r6 = r0.url()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r6 = r6.host()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            boolean r3 = r5.verify(r6, r3)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            if (r3 != 0) goto L_0x00d2
            java.util.List r8 = r4.peerCertificates()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            boolean r2 = r8.isEmpty()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r3 = "Hostname "
            if (r2 != 0) goto L_0x00b3
            r2 = 0
            java.lang.Object r8 = r8.get(r2)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.security.cert.X509Certificate r8 = (java.security.cert.X509Certificate) r8     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            javax.net.ssl.SSLPeerUnverifiedException r2 = new javax.net.ssl.SSLPeerUnverifiedException     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r4.<init>(r3)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            okhttp3.HttpUrl r0 = r0.url()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = r0.host()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r4.append(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = " not verified:\n    certificate: "
            r4.append(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = okhttp3.CertificatePinner.pin(r8)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r4.append(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = "\n    DN: "
            r4.append(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.security.Principal r0 = r8.getSubjectDN()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = r0.getName()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r4.append(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = "\n    subjectAltNames: "
            r4.append(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.util.List r8 = okhttp3.internal.tls.OkHostnameVerifier.allSubjectAltNames(r8)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r4.append(r8)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r8 = r4.toString()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r2.<init>(r8)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            throw r2     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
        L_0x00b3:
            javax.net.ssl.SSLPeerUnverifiedException r8 = new javax.net.ssl.SSLPeerUnverifiedException     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r2.<init>(r3)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            okhttp3.HttpUrl r0 = r0.url()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = r0.host()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r2.append(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = " not verified (no certificates)"
            r2.append(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = r2.toString()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r8.<init>(r0)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            throw r8     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
        L_0x00d2:
            okhttp3.CertificatePinner r3 = r0.certificatePinner()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            okhttp3.HttpUrl r0 = r0.url()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r0 = r0.host()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.util.List r5 = r4.peerCertificates()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r3.check((java.lang.String) r0, (java.util.List<java.security.cert.Certificate>) r5)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            boolean r8 = r8.supportsTlsExtensions()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            if (r8 == 0) goto L_0x00f3
            okhttp3.internal.platform.Platform r8 = okhttp3.internal.platform.Platform.get()     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.lang.String r2 = r8.getSelectedProtocol(r1)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
        L_0x00f3:
            r7.socket = r1     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.net.Socket r8 = r7.socket     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            b.v r8 = b.n.source((java.net.Socket) r8)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            b.e r8 = b.n.buffer((b.v) r8)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r7.source = r8     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            java.net.Socket r8 = r7.socket     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            b.u r8 = b.n.sink((java.net.Socket) r8)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            b.d r8 = b.n.buffer((b.u) r8)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r7.sink = r8     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            r7.handshake = r4     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            if (r2 == 0) goto L_0x0116
            okhttp3.Protocol r8 = okhttp3.Protocol.get(r2)     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            goto L_0x0118
        L_0x0116:
            okhttp3.Protocol r8 = okhttp3.Protocol.HTTP_1_1     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
        L_0x0118:
            r7.protocol = r8     // Catch:{ AssertionError -> 0x0126, all -> 0x0124 }
            if (r1 == 0) goto L_0x0123
            okhttp3.internal.platform.Platform r8 = okhttp3.internal.platform.Platform.get()
            r8.afterHandshake(r1)
        L_0x0123:
            return
        L_0x0124:
            r8 = move-exception
            goto L_0x013a
        L_0x0126:
            r8 = move-exception
            r2 = r1
            goto L_0x012d
        L_0x0129:
            r8 = move-exception
            r1 = r2
            goto L_0x013a
        L_0x012c:
            r8 = move-exception
        L_0x012d:
            boolean r0 = okhttp3.internal.Util.isAndroidGetsocknameError(r8)     // Catch:{ all -> 0x0129 }
            if (r0 == 0) goto L_0x0139
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0129 }
            r0.<init>(r8)     // Catch:{ all -> 0x0129 }
            throw r0     // Catch:{ all -> 0x0129 }
        L_0x0139:
            throw r8     // Catch:{ all -> 0x0129 }
        L_0x013a:
            if (r1 == 0) goto L_0x0143
            okhttp3.internal.platform.Platform r0 = okhttp3.internal.platform.Platform.get()
            r0.afterHandshake(r1)
        L_0x0143:
            okhttp3.internal.Util.closeQuietly((java.net.Socket) r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.connectTls(okhttp3.internal.connection.ConnectionSpecSelector):void");
    }

    private Request createTunnel(int i, int i2, Request request, HttpUrl httpUrl) throws IOException {
        String str = "CONNECT " + Util.hostHeader(httpUrl, true) + " HTTP/1.1";
        while (true) {
            Http1Codec http1Codec = new Http1Codec(null, null, this.source, this.sink);
            this.source.timeout().timeout((long) i, TimeUnit.MILLISECONDS);
            this.sink.timeout().timeout((long) i2, TimeUnit.MILLISECONDS);
            http1Codec.writeRequest(request.headers(), str);
            http1Codec.finishRequest();
            Response build = http1Codec.readResponseHeaders(false).request(request).build();
            long contentLength = HttpHeaders.contentLength(build);
            if (contentLength == -1) {
                contentLength = 0;
            }
            v newFixedLengthSource = http1Codec.newFixedLengthSource(contentLength);
            Util.skipAll(newFixedLengthSource, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, TimeUnit.MILLISECONDS);
            newFixedLengthSource.close();
            int code = build.code();
            if (code != 200) {
                if (code == 407) {
                    Request authenticate = this.route.address().proxyAuthenticator().authenticate(this.route, build);
                    if (authenticate == null) {
                        throw new IOException("Failed to authenticate with proxy");
                    } else if ("close".equalsIgnoreCase(build.header("Connection"))) {
                        return authenticate;
                    } else {
                        request = authenticate;
                    }
                } else {
                    throw new IOException("Unexpected response code for CONNECT: " + build.code());
                }
            } else if (this.source.buffer().exhausted() && this.sink.buffer().exhausted()) {
                return null;
            } else {
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
        }
    }

    private Request createTunnelRequest() throws IOException {
        Request build = new Request.Builder().url(this.route.address().url()).method("CONNECT", null).header("Host", Util.hostHeader(this.route.address().url(), true)).header("Proxy-Connection", "Keep-Alive").header("User-Agent", Version.userAgent()).build();
        Request authenticate = this.route.address().proxyAuthenticator().authenticate(this.route, new Response.Builder().request(build).protocol(Protocol.HTTP_1_1).code(407).message("Preemptive Authenticate").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1).receivedResponseAtMillis(-1).header("Proxy-Authenticate", "OkHttp-Preemptive").build());
        return authenticate != null ? authenticate : build;
    }

    public final boolean isEligible(Address address, @Nullable Route route2) {
        if (this.allocations.size() >= this.allocationLimit || this.noNewStreams || !Internal.instance.equalsNonHost(this.route.address(), address)) {
            return false;
        }
        if (address.url().host().equals(route().address().url().host())) {
            return true;
        }
        if (this.http2Connection == null || route2 == null || route2.proxy().type() != Proxy.Type.DIRECT || this.route.proxy().type() != Proxy.Type.DIRECT || !this.route.socketAddress().equals(route2.socketAddress()) || route2.address().hostnameVerifier() != OkHostnameVerifier.INSTANCE || !supportsUrl(address.url())) {
            return false;
        }
        try {
            address.certificatePinner().check(address.url().host(), handshake().peerCertificates());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public final boolean supportsUrl(HttpUrl httpUrl) {
        if (httpUrl.port() != this.route.address().url().port()) {
            return false;
        }
        if (httpUrl.host().equals(this.route.address().url().host())) {
            return true;
        }
        if (this.handshake == null || !OkHostnameVerifier.INSTANCE.verify(httpUrl.host(), (X509Certificate) this.handshake.peerCertificates().get(0))) {
            return false;
        }
        return true;
    }

    public final HttpCodec newCodec(OkHttpClient okHttpClient, Interceptor.Chain chain, StreamAllocation streamAllocation) throws SocketException {
        Http2Connection http2Connection2 = this.http2Connection;
        if (http2Connection2 != null) {
            return new Http2Codec(okHttpClient, chain, streamAllocation, http2Connection2);
        }
        this.socket.setSoTimeout(chain.readTimeoutMillis());
        this.source.timeout().timeout((long) chain.readTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.sink.timeout().timeout((long) chain.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
        return new Http1Codec(okHttpClient, streamAllocation, this.source, this.sink);
    }

    public final RealWebSocket.Streams newWebSocketStreams(StreamAllocation streamAllocation) {
        final StreamAllocation streamAllocation2 = streamAllocation;
        AnonymousClass1 r0 = new RealWebSocket.Streams(true, this.source, this.sink) {
            public void close() throws IOException {
                StreamAllocation streamAllocation = streamAllocation2;
                streamAllocation.streamFinished(true, streamAllocation.codec(), -1, null);
            }
        };
        return r0;
    }

    public final Route route() {
        return this.route;
    }

    public final void cancel() {
        Util.closeQuietly(this.rawSocket);
    }

    public final Socket socket() {
        return this.socket;
    }

    public final boolean isHealthy(boolean z) {
        int soTimeout;
        if (this.socket.isClosed() || this.socket.isInputShutdown() || this.socket.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection2 = this.http2Connection;
        if (http2Connection2 == null) {
            if (z) {
                try {
                    soTimeout = this.socket.getSoTimeout();
                    this.socket.setSoTimeout(1);
                    if (this.source.exhausted()) {
                        this.socket.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.socket.setSoTimeout(soTimeout);
                    return true;
                } catch (SocketTimeoutException unused) {
                } catch (IOException unused2) {
                    return false;
                } catch (Throwable th) {
                    this.socket.setSoTimeout(soTimeout);
                    throw th;
                }
            }
            return true;
        } else if (!http2Connection2.isShutdown()) {
            return true;
        } else {
            return false;
        }
    }

    public final void onStream(Http2Stream http2Stream) throws IOException {
        http2Stream.close(ErrorCode.REFUSED_STREAM);
    }

    public final void onSettings(Http2Connection http2Connection2) {
        synchronized (this.connectionPool) {
            this.allocationLimit = http2Connection2.maxConcurrentStreams();
        }
    }

    public final Handshake handshake() {
        return this.handshake;
    }

    public final boolean isMultiplexed() {
        return this.http2Connection != null;
    }

    public final Protocol protocol() {
        return this.protocol;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(this.route.address().url().host());
        sb.append(":");
        sb.append(this.route.address().url().port());
        sb.append(", proxy=");
        sb.append(this.route.proxy());
        sb.append(" hostAddress=");
        sb.append(this.route.socketAddress());
        sb.append(" cipherSuite=");
        Handshake handshake2 = this.handshake;
        sb.append(handshake2 != null ? handshake2.cipherSuite() : "none");
        sb.append(" protocol=");
        sb.append(this.protocol);
        sb.append('}');
        return sb.toString();
    }
}
