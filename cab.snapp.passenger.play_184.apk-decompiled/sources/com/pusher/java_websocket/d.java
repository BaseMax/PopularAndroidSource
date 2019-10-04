package com.pusher.java_websocket;

import com.pusher.java_websocket.WebSocket;
import com.pusher.java_websocket.b.g;
import com.pusher.java_websocket.c.a;
import com.pusher.java_websocket.c.f;
import com.pusher.java_websocket.c.h;
import com.pusher.java_websocket.d.b;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.drafts.c;
import com.pusher.java_websocket.framing.Framedata;
import java.io.IOException;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class d implements WebSocket {
    public static boolean DEBUG = false;
    public static int RCVBUF = 16384;

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f5069a = (!d.class.desiredAssertionStatus());
    public static final List<Draft> defaultdraftlist;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f5070b;
    private WebSocket.READYSTATE c;
    public ByteChannel channel;
    private final e d;
    private List<Draft> e;
    private Draft f;
    private WebSocket.Role g;
    private Framedata.Opcode h;
    private ByteBuffer i;
    public final BlockingQueue<ByteBuffer> inQueue;
    private a j;
    private String k;
    public SelectionKey key;
    private Integer l;
    private Boolean m;
    private String n;
    public final BlockingQueue<ByteBuffer> outQueue;
    public volatile b.C0098b workerThread;

    static {
        ArrayList arrayList = new ArrayList(4);
        defaultdraftlist = arrayList;
        arrayList.add(new com.pusher.java_websocket.drafts.b());
        defaultdraftlist.add(new com.pusher.java_websocket.drafts.a());
        defaultdraftlist.add(new com.pusher.java_websocket.drafts.d());
        defaultdraftlist.add(new c());
    }

    public d(e eVar, List<Draft> list) {
        this(eVar, (Draft) null);
        this.g = WebSocket.Role.SERVER;
        if (list == null || list.isEmpty()) {
            this.e = defaultdraftlist;
        } else {
            this.e = list;
        }
    }

    public d(e eVar, Draft draft) {
        this.f5070b = false;
        this.c = WebSocket.READYSTATE.NOT_YET_CONNECTED;
        this.f = null;
        this.h = null;
        this.i = ByteBuffer.allocate(0);
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        if (eVar == null || (draft == null && this.g == WebSocket.Role.SERVER)) {
            throw new IllegalArgumentException("parameters must not be null");
        }
        this.outQueue = new LinkedBlockingQueue();
        this.inQueue = new LinkedBlockingQueue();
        this.d = eVar;
        this.g = WebSocket.Role.CLIENT;
        if (draft != null) {
            this.f = draft.copyInstance();
        }
    }

    @Deprecated
    public d(e eVar, Draft draft, Socket socket) {
        this(eVar, draft);
    }

    @Deprecated
    public d(e eVar, List<Draft> list, Socket socket) {
        this(eVar, list);
    }

    public void decode(ByteBuffer byteBuffer) {
        if (f5069a || byteBuffer.hasRemaining()) {
            if (DEBUG) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder("process(");
                sb.append(byteBuffer.remaining());
                sb.append("): {");
                sb.append(byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining()));
                sb.append("}");
                printStream.println(sb.toString());
            }
            if (this.c != WebSocket.READYSTATE.NOT_YET_CONNECTED) {
                b(byteBuffer);
            } else if (a(byteBuffer)) {
                if (!f5069a && this.i.hasRemaining() == byteBuffer.hasRemaining() && byteBuffer.hasRemaining()) {
                    throw new AssertionError();
                } else if (byteBuffer.hasRemaining()) {
                    b(byteBuffer);
                } else if (this.i.hasRemaining()) {
                    b(this.i);
                }
            }
            if (!f5069a && !isClosing() && !isFlushAndClose() && byteBuffer.hasRemaining()) {
                throw new AssertionError();
            }
            return;
        }
        throw new AssertionError();
    }

    private boolean a(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        Draft.HandshakeState handshakeState;
        if (this.i.capacity() == 0) {
            byteBuffer2 = byteBuffer;
        } else {
            if (this.i.remaining() < byteBuffer.remaining()) {
                ByteBuffer allocate = ByteBuffer.allocate(this.i.capacity() + byteBuffer.remaining());
                this.i.flip();
                allocate.put(this.i);
                this.i = allocate;
            }
            this.i.put(byteBuffer);
            this.i.flip();
            byteBuffer2 = this.i;
        }
        byteBuffer2.mark();
        try {
            if (this.f == null) {
                byteBuffer2.mark();
                if (byteBuffer2.limit() > Draft.FLASH_POLICY_REQUEST.length) {
                    handshakeState = Draft.HandshakeState.NOT_MATCHED;
                } else if (byteBuffer2.limit() >= Draft.FLASH_POLICY_REQUEST.length) {
                    int i2 = 0;
                    while (true) {
                        if (!byteBuffer2.hasRemaining()) {
                            handshakeState = Draft.HandshakeState.MATCHED;
                            break;
                        } else if (Draft.FLASH_POLICY_REQUEST[i2] != byteBuffer2.get()) {
                            byteBuffer2.reset();
                            handshakeState = Draft.HandshakeState.NOT_MATCHED;
                            break;
                        } else {
                            i2++;
                        }
                    }
                } else {
                    throw new com.pusher.java_websocket.b.a(Draft.FLASH_POLICY_REQUEST.length);
                }
                if (handshakeState == Draft.HandshakeState.MATCHED) {
                    try {
                        c(ByteBuffer.wrap(com.pusher.java_websocket.e.b.utf8Bytes(this.d.getFlashPolicy(this))));
                        close(-3, "");
                    } catch (com.pusher.java_websocket.b.b unused) {
                        a(1006, "remote peer closed connection before flashpolicy could be transmitted", true);
                    }
                    return false;
                }
            }
            try {
                if (this.g != WebSocket.Role.SERVER) {
                    if (this.g == WebSocket.Role.CLIENT) {
                        this.f.setParseMode(this.g);
                        f translateHandshake = this.f.translateHandshake(byteBuffer2);
                        if (!(translateHandshake instanceof h)) {
                            c(1002, "wrong http function", false);
                            return false;
                        }
                        h hVar = (h) translateHandshake;
                        if (this.f.acceptHandshakeAsClient(this.j, hVar) == Draft.HandshakeState.MATCHED) {
                            try {
                                this.d.onWebsocketHandshakeReceivedAsClient(this, this.j, hVar);
                                a((f) hVar);
                                return true;
                            } catch (com.pusher.java_websocket.b.b e2) {
                                c(e2.getCloseCode(), e2.getMessage(), false);
                                return false;
                            } catch (RuntimeException e3) {
                                this.d.onWebsocketError(this, e3);
                                c(-1, e3.getMessage(), false);
                                return false;
                            }
                        } else {
                            close(1002, "draft " + this.f + " refuses handshake");
                        }
                    }
                    return false;
                } else if (this.f == null) {
                    for (Draft copyInstance : this.e) {
                        Draft copyInstance2 = copyInstance.copyInstance();
                        try {
                            copyInstance2.setParseMode(this.g);
                            byteBuffer2.reset();
                            f translateHandshake2 = copyInstance2.translateHandshake(byteBuffer2);
                            if (!(translateHandshake2 instanceof a)) {
                                c(1002, "wrong http function", false);
                                return false;
                            }
                            a aVar = (a) translateHandshake2;
                            if (copyInstance2.acceptHandshakeAsServer(aVar) == Draft.HandshakeState.MATCHED) {
                                this.n = aVar.getResourceDescriptor();
                                try {
                                    a(copyInstance2.createHandshake(copyInstance2.postProcessHandshakeResponseAsServer(aVar, this.d.onWebsocketHandshakeReceivedAsServer(this, copyInstance2, aVar)), this.g));
                                    this.f = copyInstance2;
                                    a((f) aVar);
                                    return true;
                                } catch (com.pusher.java_websocket.b.b e4) {
                                    c(e4.getCloseCode(), e4.getMessage(), false);
                                    return false;
                                } catch (RuntimeException e5) {
                                    this.d.onWebsocketError(this, e5);
                                    c(-1, e5.getMessage(), false);
                                    return false;
                                }
                            } else {
                                continue;
                            }
                        } catch (com.pusher.java_websocket.b.d unused2) {
                        }
                    }
                    if (this.f == null) {
                        close(1002, "no draft matches");
                    }
                    return false;
                } else {
                    f translateHandshake3 = this.f.translateHandshake(byteBuffer2);
                    if (!(translateHandshake3 instanceof a)) {
                        c(1002, "wrong http function", false);
                        return false;
                    }
                    a aVar2 = (a) translateHandshake3;
                    if (this.f.acceptHandshakeAsServer(aVar2) == Draft.HandshakeState.MATCHED) {
                        a((f) aVar2);
                        return true;
                    }
                    close(1002, "the handshake did finaly not match");
                    return false;
                }
            } catch (com.pusher.java_websocket.b.d e6) {
                close((com.pusher.java_websocket.b.b) e6);
            }
        } catch (com.pusher.java_websocket.b.a e7) {
            if (this.i.capacity() == 0) {
                byteBuffer2.reset();
                int preferedSize = e7.getPreferedSize();
                if (preferedSize == 0) {
                    preferedSize = byteBuffer2.capacity() + 16;
                } else if (!f5069a && e7.getPreferedSize() < byteBuffer2.remaining()) {
                    throw new AssertionError();
                }
                this.i = ByteBuffer.allocate(preferedSize);
                this.i.put(byteBuffer);
            } else {
                ByteBuffer byteBuffer3 = this.i;
                byteBuffer3.position(byteBuffer3.limit());
                ByteBuffer byteBuffer4 = this.i;
                byteBuffer4.limit(byteBuffer4.capacity());
            }
        }
    }

    private void b(ByteBuffer byteBuffer) {
        try {
            for (Framedata next : this.f.translateFrame(byteBuffer)) {
                if (DEBUG) {
                    System.out.println("matched frame: ".concat(String.valueOf(next)));
                }
                Framedata.Opcode opcode = next.getOpcode();
                boolean isFin = next.isFin();
                if (opcode == Framedata.Opcode.CLOSING) {
                    int i2 = 1005;
                    String str = "";
                    if (next instanceof com.pusher.java_websocket.framing.a) {
                        com.pusher.java_websocket.framing.a aVar = (com.pusher.java_websocket.framing.a) next;
                        i2 = aVar.getCloseCode();
                        str = aVar.getMessage();
                    }
                    if (this.c == WebSocket.READYSTATE.CLOSING) {
                        b(i2, str, true);
                    } else if (this.f.getCloseHandshakeType() == Draft.CloseHandshakeType.TWOWAY) {
                        a(i2, str, true);
                    } else {
                        c(i2, str, false);
                    }
                } else if (opcode == Framedata.Opcode.PING) {
                    this.d.onWebsocketPing(this, next);
                } else if (opcode == Framedata.Opcode.PONG) {
                    this.d.onWebsocketPong(this, next);
                } else {
                    if (isFin) {
                        if (opcode != Framedata.Opcode.CONTINUOUS) {
                            if (this.h != null) {
                                throw new com.pusher.java_websocket.b.b(1002, "Continuous frame sequence not completed.");
                            } else if (opcode == Framedata.Opcode.TEXT) {
                                try {
                                    this.d.onWebsocketMessage((WebSocket) this, com.pusher.java_websocket.e.b.stringUtf8(next.getPayloadData()));
                                } catch (RuntimeException e2) {
                                    this.d.onWebsocketError(this, e2);
                                }
                            } else if (opcode == Framedata.Opcode.BINARY) {
                                try {
                                    this.d.onWebsocketMessage((WebSocket) this, next.getPayloadData());
                                } catch (RuntimeException e3) {
                                    this.d.onWebsocketError(this, e3);
                                }
                            } else {
                                throw new com.pusher.java_websocket.b.b(1002, "non control or continious frame expected");
                            }
                        }
                    }
                    if (opcode != Framedata.Opcode.CONTINUOUS) {
                        if (this.h == null) {
                            this.h = opcode;
                        } else {
                            throw new com.pusher.java_websocket.b.b(1002, "Previous continuous frame sequence not completed.");
                        }
                    } else if (isFin) {
                        if (this.h != null) {
                            this.h = null;
                        } else {
                            throw new com.pusher.java_websocket.b.b(1002, "Continuous frame sequence was not started.");
                        }
                    } else if (this.h == null) {
                        throw new com.pusher.java_websocket.b.b(1002, "Continuous frame sequence was not started.");
                    }
                    try {
                        this.d.onWebsocketMessageFragment(this, next);
                    } catch (RuntimeException e4) {
                        this.d.onWebsocketError(this, e4);
                    }
                }
            }
        } catch (com.pusher.java_websocket.b.b e5) {
            this.d.onWebsocketError(this, e5);
            close(e5);
        }
    }

    private void a(int i2, String str, boolean z) {
        if (!(this.c == WebSocket.READYSTATE.CLOSING || this.c == WebSocket.READYSTATE.CLOSED)) {
            if (this.c == WebSocket.READYSTATE.OPEN) {
                if (i2 != 1006) {
                    if (this.f.getCloseHandshakeType() != Draft.CloseHandshakeType.NONE) {
                        if (!z) {
                            try {
                                this.d.onWebsocketCloseInitiated(this, i2, str);
                            } catch (RuntimeException e2) {
                                try {
                                    this.d.onWebsocketError(this, e2);
                                } catch (com.pusher.java_websocket.b.b e3) {
                                    this.d.onWebsocketError(this, e3);
                                    c(1006, "generated frame is invalid", false);
                                }
                            }
                        }
                        sendFrame(new com.pusher.java_websocket.framing.b(i2, str));
                    }
                    c(i2, str, z);
                } else if (f5069a || !z) {
                    this.c = WebSocket.READYSTATE.CLOSING;
                    c(i2, str, false);
                    return;
                } else {
                    throw new AssertionError();
                }
            } else if (i2 != -3) {
                c(-1, str, false);
            } else if (f5069a || z) {
                c(-3, str, true);
            } else {
                throw new AssertionError();
            }
            if (i2 == 1002) {
                c(i2, str, z);
            }
            this.c = WebSocket.READYSTATE.CLOSING;
            this.i = null;
        }
    }

    public void close(int i2, String str) {
        a(i2, str, false);
    }

    private synchronized void b(int i2, String str, boolean z) {
        if (this.c != WebSocket.READYSTATE.CLOSED) {
            if (this.key != null) {
                this.key.cancel();
            }
            if (this.channel != null) {
                try {
                    this.channel.close();
                } catch (IOException e2) {
                    this.d.onWebsocketError(this, e2);
                }
            }
            try {
                this.d.onWebsocketClose(this, i2, str, z);
            } catch (RuntimeException e3) {
                this.d.onWebsocketError(this, e3);
            }
            if (this.f != null) {
                this.f.reset();
            }
            this.j = null;
            this.c = WebSocket.READYSTATE.CLOSED;
            this.outQueue.clear();
            return;
        }
        return;
    }

    private void a(int i2) {
        b(i2, "", true);
    }

    public void closeConnection() {
        if (this.m != null) {
            b(this.l.intValue(), this.k, this.m.booleanValue());
            return;
        }
        throw new IllegalStateException("this method must be used in conjuction with flushAndClose");
    }

    public void closeConnection(int i2, String str) {
        b(i2, str, false);
    }

    private synchronized void c(int i2, String str, boolean z) {
        if (!this.f5070b) {
            this.l = Integer.valueOf(i2);
            this.k = str;
            this.m = Boolean.valueOf(z);
            this.f5070b = true;
            this.d.onWriteDemand(this);
            try {
                this.d.onWebsocketClosing(this, i2, str, z);
            } catch (RuntimeException e2) {
                this.d.onWebsocketError(this, e2);
            }
            if (this.f != null) {
                this.f.reset();
            }
            this.j = null;
        }
    }

    public void eot() {
        if (getReadyState() == WebSocket.READYSTATE.NOT_YET_CONNECTED) {
            a(-1);
        } else if (this.f5070b) {
            b(this.l.intValue(), this.k, this.m.booleanValue());
        } else if (this.f.getCloseHandshakeType() == Draft.CloseHandshakeType.NONE) {
            a(1000);
        } else if (this.f.getCloseHandshakeType() != Draft.CloseHandshakeType.ONEWAY || this.g == WebSocket.Role.SERVER) {
            a(1006);
        } else {
            a(1000);
        }
    }

    public void close(int i2) {
        a(i2, "", false);
    }

    public void close(com.pusher.java_websocket.b.b bVar) {
        a(bVar.getCloseCode(), bVar.getMessage(), false);
    }

    public void send(String str) throws g {
        if (str != null) {
            a((Collection<Framedata>) this.f.createFrames(str, this.g == WebSocket.Role.CLIENT));
            return;
        }
        throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
    }

    public void send(ByteBuffer byteBuffer) throws IllegalArgumentException, g {
        if (byteBuffer != null) {
            a((Collection<Framedata>) this.f.createFrames(byteBuffer, this.g == WebSocket.Role.CLIENT));
            return;
        }
        throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
    }

    public void send(byte[] bArr) throws IllegalArgumentException, g {
        send(ByteBuffer.wrap(bArr));
    }

    private void a(Collection<Framedata> collection) {
        if (isOpen()) {
            for (Framedata sendFrame : collection) {
                sendFrame(sendFrame);
            }
            return;
        }
        throw new g();
    }

    public void sendFragmentedFrame(Framedata.Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        a((Collection<Framedata>) this.f.continuousFrame(opcode, byteBuffer, z));
    }

    public void sendFrame(Framedata framedata) {
        if (DEBUG) {
            System.out.println("send frame: ".concat(String.valueOf(framedata)));
        }
        c(this.f.createBinaryFrame(framedata));
    }

    public boolean hasBufferedData() {
        return !this.outQueue.isEmpty();
    }

    public void startHandshake(com.pusher.java_websocket.c.b bVar) throws com.pusher.java_websocket.b.d {
        if (f5069a || this.c != WebSocket.READYSTATE.CONNECTING) {
            this.j = this.f.postProcessHandshakeRequestAsClient(bVar);
            this.n = bVar.getResourceDescriptor();
            if (f5069a || this.n != null) {
                try {
                    this.d.onWebsocketHandshakeSentAsClient(this, this.j);
                    a(this.f.createHandshake(this.j, this.g));
                } catch (com.pusher.java_websocket.b.b unused) {
                    throw new com.pusher.java_websocket.b.d("Handshake data rejected by client.");
                } catch (RuntimeException e2) {
                    this.d.onWebsocketError(this, e2);
                    throw new com.pusher.java_websocket.b.d("rejected because of".concat(String.valueOf(e2)));
                }
            } else {
                throw new AssertionError();
            }
        } else {
            throw new AssertionError("shall only be called once");
        }
    }

    private void c(ByteBuffer byteBuffer) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder("write(");
            sb.append(byteBuffer.remaining());
            sb.append("): {");
            sb.append(byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array()));
            sb.append("}");
            printStream.println(sb.toString());
        }
        this.outQueue.add(byteBuffer);
        this.d.onWriteDemand(this);
    }

    private void a(List<ByteBuffer> list) {
        for (ByteBuffer c2 : list) {
            c(c2);
        }
    }

    private void a(f fVar) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.println("open using draft: " + this.f.getClass().getSimpleName());
        }
        this.c = WebSocket.READYSTATE.OPEN;
        try {
            this.d.onWebsocketOpen(this, fVar);
        } catch (RuntimeException e2) {
            this.d.onWebsocketError(this, e2);
        }
    }

    public boolean isConnecting() {
        if (f5069a || !this.f5070b || this.c == WebSocket.READYSTATE.CONNECTING) {
            return this.c == WebSocket.READYSTATE.CONNECTING;
        }
        throw new AssertionError();
    }

    public boolean isOpen() {
        if (f5069a || this.c != WebSocket.READYSTATE.OPEN || !this.f5070b) {
            return this.c == WebSocket.READYSTATE.OPEN;
        }
        throw new AssertionError();
    }

    public boolean isClosing() {
        return this.c == WebSocket.READYSTATE.CLOSING;
    }

    public boolean isFlushAndClose() {
        return this.f5070b;
    }

    public boolean isClosed() {
        return this.c == WebSocket.READYSTATE.CLOSED;
    }

    public WebSocket.READYSTATE getReadyState() {
        return this.c;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return super.toString();
    }

    public InetSocketAddress getRemoteSocketAddress() {
        return this.d.getRemoteSocketAddress(this);
    }

    public InetSocketAddress getLocalSocketAddress() {
        return this.d.getLocalSocketAddress(this);
    }

    public Draft getDraft() {
        return this.f;
    }

    public void close() {
        close(1000);
    }

    public String getResourceDescriptor() {
        return this.n;
    }
}
