package com.pusher.java_websocket.drafts;

import com.pusher.java_websocket.b.e;
import com.pusher.java_websocket.b.f;
import com.pusher.java_websocket.c.a;
import com.pusher.java_websocket.c.h;
import com.pusher.java_websocket.c.i;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.e.b;
import com.pusher.java_websocket.framing.Framedata;
import com.pusher.java_websocket.framing.d;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public class c extends Draft {
    public static final byte CR = 13;
    public static final byte END_OF_FRAME = -1;
    public static final byte LF = 10;
    public static final byte START_OF_FRAME = 0;
    protected boolean c = false;
    protected List<Framedata> d = new LinkedList();
    protected ByteBuffer e;
    private final Random f = new Random();

    public Draft.HandshakeState acceptHandshakeAsClient(a aVar, h hVar) {
        return (!aVar.getFieldValue("WebSocket-Origin").equals(hVar.getFieldValue("Origin")) || !a(hVar)) ? Draft.HandshakeState.NOT_MATCHED : Draft.HandshakeState.MATCHED;
    }

    public Draft.HandshakeState acceptHandshakeAsServer(a aVar) {
        if (!aVar.hasFieldValue("Origin") || !a(aVar)) {
            return Draft.HandshakeState.NOT_MATCHED;
        }
        return Draft.HandshakeState.MATCHED;
    }

    public ByteBuffer createBinaryFrame(Framedata framedata) {
        if (framedata.getOpcode() == Framedata.Opcode.TEXT) {
            ByteBuffer payloadData = framedata.getPayloadData();
            ByteBuffer allocate = ByteBuffer.allocate(payloadData.remaining() + 2);
            allocate.put((byte) 0);
            payloadData.mark();
            allocate.put(payloadData);
            payloadData.reset();
            allocate.put((byte) -1);
            allocate.flip();
            return allocate;
        }
        throw new RuntimeException("only text frames supported");
    }

    public List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z) {
        throw new RuntimeException("not yet implemented");
    }

    public List<Framedata> createFrames(String str, boolean z) {
        d dVar = new d();
        try {
            dVar.setPayload(ByteBuffer.wrap(b.utf8Bytes(str)));
            dVar.setFin(true);
            dVar.setOptcode(Framedata.Opcode.TEXT);
            dVar.setTransferemasked(z);
            return Collections.singletonList(dVar);
        } catch (com.pusher.java_websocket.b.b e2) {
            throw new f((Throwable) e2);
        }
    }

    public com.pusher.java_websocket.c.b postProcessHandshakeRequestAsClient(com.pusher.java_websocket.c.b bVar) throws com.pusher.java_websocket.b.d {
        bVar.put("Upgrade", "WebSocket");
        bVar.put("Connection", "Upgrade");
        if (!bVar.hasFieldValue("Origin")) {
            bVar.put("Origin", "random" + this.f.nextInt());
        }
        return bVar;
    }

    public com.pusher.java_websocket.c.c postProcessHandshakeResponseAsServer(a aVar, i iVar) throws com.pusher.java_websocket.b.d {
        iVar.setHttpStatusMessage("Web Socket Protocol Handshake");
        iVar.put("Upgrade", "WebSocket");
        iVar.put("Connection", aVar.getFieldValue("Connection"));
        iVar.put("WebSocket-Origin", aVar.getFieldValue("Origin"));
        iVar.put("WebSocket-Location", "ws://" + aVar.getFieldValue("Host") + aVar.getResourceDescriptor());
        return iVar;
    }

    /* access modifiers changed from: protected */
    public final List<Framedata> a(ByteBuffer byteBuffer) throws com.pusher.java_websocket.b.b {
        while (byteBuffer.hasRemaining()) {
            byte b2 = byteBuffer.get();
            if (b2 == 0) {
                if (!this.c) {
                    this.c = true;
                } else {
                    throw new com.pusher.java_websocket.b.c("unexpected START_OF_FRAME");
                }
            } else if (b2 == -1) {
                if (this.c) {
                    ByteBuffer byteBuffer2 = this.e;
                    if (byteBuffer2 != null) {
                        byteBuffer2.flip();
                        d dVar = new d();
                        dVar.setPayload(this.e);
                        dVar.setFin(true);
                        dVar.setOptcode(Framedata.Opcode.TEXT);
                        this.d.add(dVar);
                        this.e = null;
                        byteBuffer.mark();
                    }
                    this.c = false;
                } else {
                    throw new com.pusher.java_websocket.b.c("unexpected END_OF_FRAME");
                }
            } else if (!this.c) {
                return null;
            } else {
                ByteBuffer byteBuffer3 = this.e;
                if (byteBuffer3 == null) {
                    this.e = createBuffer();
                } else if (!byteBuffer3.hasRemaining()) {
                    this.e = increaseBuffer(this.e);
                }
                this.e.put(b2);
            }
        }
        List<Framedata> list = this.d;
        this.d = new LinkedList();
        return list;
    }

    public List<Framedata> translateFrame(ByteBuffer byteBuffer) throws com.pusher.java_websocket.b.b {
        List<Framedata> a2 = a(byteBuffer);
        if (a2 != null) {
            return a2;
        }
        throw new com.pusher.java_websocket.b.b(1002);
    }

    public void reset() {
        this.c = false;
        this.e = null;
    }

    public Draft.CloseHandshakeType getCloseHandshakeType() {
        return Draft.CloseHandshakeType.NONE;
    }

    public ByteBuffer createBuffer() {
        return ByteBuffer.allocate(INITIAL_FAMESIZE);
    }

    public ByteBuffer increaseBuffer(ByteBuffer byteBuffer) throws e, com.pusher.java_websocket.b.b {
        byteBuffer.flip();
        ByteBuffer allocate = ByteBuffer.allocate(checkAlloc(byteBuffer.capacity() * 2));
        allocate.put(byteBuffer);
        return allocate;
    }

    public Draft copyInstance() {
        return new c();
    }
}
