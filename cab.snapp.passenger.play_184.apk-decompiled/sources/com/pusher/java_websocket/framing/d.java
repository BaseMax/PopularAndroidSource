package com.pusher.java_websocket.framing;

import com.pusher.java_websocket.b.b;
import com.pusher.java_websocket.b.c;
import com.pusher.java_websocket.framing.Framedata;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class d implements c {

    /* renamed from: b  reason: collision with root package name */
    protected static byte[] f5089b = new byte[0];

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f5090a;
    protected boolean c;
    protected Framedata.Opcode d;
    protected boolean e;

    public d() {
    }

    public d(Framedata.Opcode opcode) {
        this.d = opcode;
        this.f5090a = ByteBuffer.wrap(f5089b);
    }

    public d(Framedata framedata) {
        this.c = framedata.isFin();
        this.d = framedata.getOpcode();
        this.f5090a = framedata.getPayloadData();
        this.e = framedata.getTransfereMasked();
    }

    public boolean isFin() {
        return this.c;
    }

    public Framedata.Opcode getOpcode() {
        return this.d;
    }

    public boolean getTransfereMasked() {
        return this.e;
    }

    public ByteBuffer getPayloadData() {
        return this.f5090a;
    }

    public void setFin(boolean z) {
        this.c = z;
    }

    public void setOptcode(Framedata.Opcode opcode) {
        this.d = opcode;
    }

    public void setPayload(ByteBuffer byteBuffer) throws b {
        this.f5090a = byteBuffer;
    }

    public void setTransferemasked(boolean z) {
        this.e = z;
    }

    public void append(Framedata framedata) throws c {
        ByteBuffer payloadData = framedata.getPayloadData();
        if (this.f5090a == null) {
            this.f5090a = ByteBuffer.allocate(payloadData.remaining());
            payloadData.mark();
            this.f5090a.put(payloadData);
            payloadData.reset();
        } else {
            payloadData.mark();
            ByteBuffer byteBuffer = this.f5090a;
            byteBuffer.position(byteBuffer.limit());
            ByteBuffer byteBuffer2 = this.f5090a;
            byteBuffer2.limit(byteBuffer2.capacity());
            if (payloadData.remaining() > this.f5090a.remaining()) {
                ByteBuffer allocate = ByteBuffer.allocate(payloadData.remaining() + this.f5090a.capacity());
                this.f5090a.flip();
                allocate.put(this.f5090a);
                allocate.put(payloadData);
                this.f5090a = allocate;
            } else {
                this.f5090a.put(payloadData);
            }
            this.f5090a.rewind();
            payloadData.reset();
        }
        this.c = framedata.isFin();
    }

    public String toString() {
        return "Framedata{ optcode:" + getOpcode() + ", fin:" + isFin() + ", payloadlength:[pos:" + this.f5090a.position() + ", len:" + this.f5090a.remaining() + "], payload:" + Arrays.toString(com.pusher.java_websocket.e.b.utf8Bytes(new String(this.f5090a.array()))) + "}";
    }
}
