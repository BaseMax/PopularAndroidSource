package com.pusher.java_websocket.framing;

import com.pusher.java_websocket.b.c;
import com.pusher.java_websocket.framing.Framedata;
import java.nio.ByteBuffer;

public final class b extends d implements a {

    /* renamed from: a  reason: collision with root package name */
    static final ByteBuffer f5088a = ByteBuffer.allocate(0);
    private int f;
    private String g;

    public b() {
        super(Framedata.Opcode.CLOSING);
        setFin(true);
    }

    public b(int i) throws com.pusher.java_websocket.b.b {
        super(Framedata.Opcode.CLOSING);
        setFin(true);
        a(i, "");
    }

    public b(int i, String str) throws com.pusher.java_websocket.b.b {
        super(Framedata.Opcode.CLOSING);
        setFin(true);
        a(i, str);
    }

    private void a(int i, String str) throws com.pusher.java_websocket.b.b {
        if (str == null) {
            str = "";
        }
        if (i == 1015) {
            str = "";
            i = 1005;
        }
        if (i != 1005) {
            byte[] utf8Bytes = com.pusher.java_websocket.e.b.utf8Bytes(str);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.putInt(i);
            allocate.position(2);
            ByteBuffer allocate2 = ByteBuffer.allocate(utf8Bytes.length + 2);
            allocate2.put(allocate);
            allocate2.put(utf8Bytes);
            allocate2.rewind();
            setPayload(allocate2);
        } else if (str.length() > 0) {
            throw new com.pusher.java_websocket.b.b(1002, "A close frame must have a closecode if it has a reason");
        }
    }

    public final int getCloseCode() {
        return this.f;
    }

    public final String getMessage() {
        return this.g;
    }

    public final String toString() {
        return super.toString() + "code: " + this.f;
    }

    public final void setPayload(ByteBuffer byteBuffer) throws com.pusher.java_websocket.b.b {
        super.setPayload(byteBuffer);
        this.f = 1005;
        ByteBuffer payloadData = super.getPayloadData();
        payloadData.mark();
        if (payloadData.remaining() >= 2) {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.position(2);
            allocate.putShort(payloadData.getShort());
            allocate.position(0);
            this.f = allocate.getInt();
            int i = this.f;
            if (i == 1006 || i == 1015 || i == 1005 || i > 4999 || i < 1000 || i == 1004) {
                throw new c("closecode must not be sent over the wire: " + this.f);
            }
        }
        payloadData.reset();
        if (this.f == 1005) {
            this.g = com.pusher.java_websocket.e.b.stringUtf8(super.getPayloadData());
            return;
        }
        ByteBuffer payloadData2 = super.getPayloadData();
        int position = payloadData2.position();
        try {
            payloadData2.position(payloadData2.position() + 2);
            this.g = com.pusher.java_websocket.e.b.stringUtf8(payloadData2);
            payloadData2.position(position);
        } catch (IllegalArgumentException e) {
            throw new c((Throwable) e);
        } catch (Throwable th) {
            payloadData2.position(position);
            throw th;
        }
    }

    public final ByteBuffer getPayloadData() {
        if (this.f == 1005) {
            return f5088a;
        }
        return super.getPayloadData();
    }
}
