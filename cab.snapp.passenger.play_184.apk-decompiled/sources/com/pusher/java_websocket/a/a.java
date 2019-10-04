package com.pusher.java_websocket.a;

import com.pusher.java_websocket.WebSocket;
import com.pusher.java_websocket.b;
import com.pusher.java_websocket.c.f;
import com.pusher.java_websocket.c.h;
import com.pusher.java_websocket.d;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.e;
import com.pusher.java_websocket.framing.Framedata;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.channels.NotYetConnectedException;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.eclipse.paho.a.a.w;

public abstract class a extends b implements WebSocket, Runnable {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f5059b = (!a.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    protected URI f5060a;
    /* access modifiers changed from: private */
    public d c;
    private Socket d;
    private InputStream e;
    /* access modifiers changed from: private */
    public OutputStream f;
    private Proxy g;
    private Thread h;
    private Draft i;
    private Map<String, String> j;
    private CountDownLatch k;
    private CountDownLatch l;
    private int m;

    /* renamed from: com.pusher.java_websocket.a.a$a  reason: collision with other inner class name */
    class C0097a implements Runnable {
        private C0097a() {
        }

        /* synthetic */ C0097a(a aVar, byte b2) {
            this();
        }

        public final void run() {
            Thread.currentThread().setName("WebsocketWriteThread");
            while (!Thread.interrupted()) {
                try {
                    ByteBuffer take = a.this.c.outQueue.take();
                    a.this.f.write(take.array(), 0, take.limit());
                    a.this.f.flush();
                } catch (IOException unused) {
                    a.this.c.eot();
                    return;
                } catch (InterruptedException unused2) {
                }
            }
        }
    }

    public abstract void onClose(int i2, String str, boolean z);

    public void onCloseInitiated(int i2, String str) {
    }

    public void onClosing(int i2, String str, boolean z) {
    }

    public abstract void onError(Exception exc);

    public void onFragment(Framedata framedata) {
    }

    public abstract void onMessage(String str);

    public void onMessage(ByteBuffer byteBuffer) {
    }

    public abstract void onOpen(h hVar);

    public final void onWriteDemand(WebSocket webSocket) {
    }

    public a(URI uri) {
        this(uri, new com.pusher.java_websocket.drafts.b());
    }

    public a(URI uri, Draft draft) {
        this(uri, draft, null, 0);
    }

    public a(URI uri, Draft draft, Map<String, String> map, int i2) {
        this.f5060a = null;
        this.c = null;
        this.d = null;
        this.g = Proxy.NO_PROXY;
        this.k = new CountDownLatch(1);
        this.l = new CountDownLatch(1);
        this.m = 0;
        if (uri == null) {
            throw new IllegalArgumentException();
        } else if (draft != null) {
            this.f5060a = uri;
            this.i = draft;
            this.j = map;
            this.m = i2;
            this.c = new d((e) this, draft);
        } else {
            throw new IllegalArgumentException("null as draft is permitted for `WebSocketServer` only!");
        }
    }

    public URI getURI() {
        return this.f5060a;
    }

    public Draft getDraft() {
        return this.i;
    }

    public void connect() {
        if (this.h == null) {
            this.h = new Thread(this);
            this.h.start();
            return;
        }
        throw new IllegalStateException("WebSocketClient objects are not reuseable");
    }

    public boolean connectBlocking() throws InterruptedException {
        connect();
        this.k.await();
        return this.c.isOpen();
    }

    public void close() {
        if (this.h != null) {
            this.c.close(1000);
        }
    }

    public void closeBlocking() throws InterruptedException {
        close();
        this.l.await();
    }

    public void send(String str) throws NotYetConnectedException {
        this.c.send(str);
    }

    public void send(byte[] bArr) throws NotYetConnectedException {
        this.c.send(bArr);
    }

    public void run() {
        try {
            if (this.d == null) {
                this.d = new Socket(this.g);
            } else if (this.d.isClosed()) {
                throw new IOException();
            }
            if (!this.d.isBound()) {
                this.d.connect(new InetSocketAddress(this.f5060a.getHost(), a()), this.m);
            }
            this.e = this.d.getInputStream();
            this.f = this.d.getOutputStream();
            b();
            this.h = new Thread(new C0097a(this, (byte) 0));
            this.h.start();
            byte[] bArr = new byte[d.RCVBUF];
            while (!isClosed()) {
                try {
                    int read = this.e.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    this.c.decode(ByteBuffer.wrap(bArr, 0, read));
                } catch (IOException unused) {
                    this.c.eot();
                } catch (RuntimeException e2) {
                    onError(e2);
                    this.c.closeConnection(1006, e2.getMessage());
                }
            }
            this.c.eot();
            if (!f5059b && !this.d.isClosed()) {
                throw new AssertionError();
            }
        } catch (Exception e3) {
            onWebsocketError(this.c, e3);
            this.c.closeConnection(-1, e3.getMessage());
        }
    }

    private int a() {
        int port = this.f5060a.getPort();
        if (port != -1) {
            return port;
        }
        String scheme = this.f5060a.getScheme();
        if (scheme.equals("wss")) {
            return WebSocket.DEFAULT_WSS_PORT;
        }
        if (scheme.equals("ws")) {
            return 80;
        }
        throw new RuntimeException("unkonow scheme".concat(String.valueOf(scheme)));
    }

    private void b() throws com.pusher.java_websocket.b.d {
        String path = this.f5060a.getPath();
        String query = this.f5060a.getQuery();
        if (path == null || path.length() == 0) {
            path = w.TOPIC_LEVEL_SEPARATOR;
        }
        if (query != null) {
            path = path + "?" + query;
        }
        int a2 = a();
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5060a.getHost());
        sb.append(a2 != 80 ? ":".concat(String.valueOf(a2)) : "");
        String sb2 = sb.toString();
        com.pusher.java_websocket.c.d dVar = new com.pusher.java_websocket.c.d();
        dVar.setResourceDescriptor(path);
        dVar.put("Host", sb2);
        Map<String, String> map = this.j;
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                dVar.put((String) next.getKey(), (String) next.getValue());
            }
        }
        this.c.startHandshake(dVar);
    }

    public WebSocket.READYSTATE getReadyState() {
        return this.c.getReadyState();
    }

    public final void onWebsocketMessage(WebSocket webSocket, String str) {
        onMessage(str);
    }

    public final void onWebsocketMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
        onMessage(byteBuffer);
    }

    public void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata) {
        onFragment(framedata);
    }

    public final void onWebsocketOpen(WebSocket webSocket, f fVar) {
        this.k.countDown();
        onOpen((h) fVar);
    }

    public final void onWebsocketClose(WebSocket webSocket, int i2, String str, boolean z) {
        this.k.countDown();
        this.l.countDown();
        Thread thread = this.h;
        if (thread != null) {
            thread.interrupt();
        }
        try {
            if (this.d != null) {
                this.d.close();
            }
        } catch (IOException e2) {
            onWebsocketError(this, e2);
        }
        onClose(i2, str, z);
    }

    public final void onWebsocketError(WebSocket webSocket, Exception exc) {
        onError(exc);
    }

    public void onWebsocketCloseInitiated(WebSocket webSocket, int i2, String str) {
        onCloseInitiated(i2, str);
    }

    public void onWebsocketClosing(WebSocket webSocket, int i2, String str, boolean z) {
        onClosing(i2, str, z);
    }

    public WebSocket getConnection() {
        return this.c;
    }

    public InetSocketAddress getLocalSocketAddress(WebSocket webSocket) {
        Socket socket = this.d;
        if (socket != null) {
            return (InetSocketAddress) socket.getLocalSocketAddress();
        }
        return null;
    }

    public InetSocketAddress getRemoteSocketAddress(WebSocket webSocket) {
        Socket socket = this.d;
        if (socket != null) {
            return (InetSocketAddress) socket.getRemoteSocketAddress();
        }
        return null;
    }

    public void setProxy(Proxy proxy) {
        if (proxy != null) {
            this.g = proxy;
            return;
        }
        throw new IllegalArgumentException();
    }

    public void setSocket(Socket socket) {
        if (this.d == null) {
            this.d = socket;
            return;
        }
        throw new IllegalStateException("socket has already been set");
    }

    public void sendFragmentedFrame(Framedata.Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        this.c.sendFragmentedFrame(opcode, byteBuffer, z);
    }

    public boolean isOpen() {
        return this.c.isOpen();
    }

    public boolean isFlushAndClose() {
        return this.c.isFlushAndClose();
    }

    public boolean isClosed() {
        return this.c.isClosed();
    }

    public boolean isClosing() {
        return this.c.isClosing();
    }

    public boolean isConnecting() {
        return this.c.isConnecting();
    }

    public boolean hasBufferedData() {
        return this.c.hasBufferedData();
    }

    public void close(int i2) {
        this.c.close();
    }

    public void close(int i2, String str) {
        this.c.close(i2, str);
    }

    public void closeConnection(int i2, String str) {
        this.c.closeConnection(i2, str);
    }

    public void send(ByteBuffer byteBuffer) throws IllegalArgumentException, NotYetConnectedException {
        this.c.send(byteBuffer);
    }

    public void sendFrame(Framedata framedata) {
        this.c.sendFrame(framedata);
    }

    public InetSocketAddress getLocalSocketAddress() {
        return this.c.getLocalSocketAddress();
    }

    public InetSocketAddress getRemoteSocketAddress() {
        return this.c.getRemoteSocketAddress();
    }

    public String getResourceDescriptor() {
        return this.f5060a.getPath();
    }
}
