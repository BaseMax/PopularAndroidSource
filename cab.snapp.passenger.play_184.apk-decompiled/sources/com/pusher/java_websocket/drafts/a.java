package com.pusher.java_websocket.drafts;

import com.pusher.java_websocket.WebSocket;
import com.pusher.java_websocket.b.b;
import com.pusher.java_websocket.b.d;
import com.pusher.java_websocket.b.e;
import com.pusher.java_websocket.c.c;
import com.pusher.java_websocket.c.f;
import com.pusher.java_websocket.c.h;
import com.pusher.java_websocket.c.i;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.framing.Framedata;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public class a extends Draft {
    static final /* synthetic */ boolean c = (!a.class.desiredAssertionStatus());
    private ByteBuffer d;
    private Framedata e = null;
    private final Random f = new Random();

    /* renamed from: com.pusher.java_websocket.drafts.a$a  reason: collision with other inner class name */
    class C0099a extends Throwable {

        /* renamed from: b  reason: collision with root package name */
        private int f5080b;

        public C0099a(int i) {
            this.f5080b = i;
        }

        public final int getPreferedSize() {
            return this.f5080b;
        }
    }

    public static int readVersion(f fVar) {
        String fieldValue = fVar.getFieldValue("Sec-WebSocket-Version");
        if (fieldValue.length() > 0) {
            try {
                return new Integer(fieldValue.trim()).intValue();
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    public Draft.HandshakeState acceptHandshakeAsClient(com.pusher.java_websocket.c.a aVar, h hVar) throws d {
        if (!aVar.hasFieldValue("Sec-WebSocket-Key") || !hVar.hasFieldValue("Sec-WebSocket-Accept")) {
            return Draft.HandshakeState.NOT_MATCHED;
        }
        if (a(aVar.getFieldValue("Sec-WebSocket-Key")).equals(hVar.getFieldValue("Sec-WebSocket-Accept"))) {
            return Draft.HandshakeState.MATCHED;
        }
        return Draft.HandshakeState.NOT_MATCHED;
    }

    public Draft.HandshakeState acceptHandshakeAsServer(com.pusher.java_websocket.c.a aVar) throws d {
        int readVersion = readVersion(aVar);
        if (readVersion == 7 || readVersion == 8) {
            return a(aVar) ? Draft.HandshakeState.MATCHED : Draft.HandshakeState.NOT_MATCHED;
        }
        return Draft.HandshakeState.NOT_MATCHED;
    }

    public ByteBuffer createBinaryFrame(Framedata framedata) {
        byte b2;
        ByteBuffer payloadData = framedata.getPayloadData();
        int i = 0;
        boolean z = this.f5077a == WebSocket.Role.CLIENT;
        int i2 = payloadData.remaining() <= 125 ? 1 : payloadData.remaining() <= 65535 ? 2 : 8;
        ByteBuffer allocate = ByteBuffer.allocate((i2 > 1 ? i2 + 1 : i2) + 1 + (z ? 4 : 0) + payloadData.remaining());
        Framedata.Opcode opcode = framedata.getOpcode();
        if (opcode == Framedata.Opcode.CONTINUOUS) {
            b2 = 0;
        } else if (opcode == Framedata.Opcode.TEXT) {
            b2 = 1;
        } else if (opcode == Framedata.Opcode.BINARY) {
            b2 = 2;
        } else if (opcode == Framedata.Opcode.CLOSING) {
            b2 = 8;
        } else if (opcode == Framedata.Opcode.PING) {
            b2 = 9;
        } else if (opcode == Framedata.Opcode.PONG) {
            b2 = 10;
        } else {
            throw new RuntimeException("Don't know how to handle " + opcode.toString());
        }
        byte b3 = Byte.MIN_VALUE;
        allocate.put((byte) (((byte) (framedata.isFin() ? -128 : 0)) | b2));
        byte[] a2 = a((long) payloadData.remaining(), i2);
        if (c || a2.length == i2) {
            if (i2 == 1) {
                byte b4 = a2[0];
                if (!z) {
                    b3 = 0;
                }
                allocate.put((byte) (b4 | b3));
            } else if (i2 == 2) {
                if (!z) {
                    b3 = 0;
                }
                allocate.put((byte) (b3 | 126));
                allocate.put(a2);
            } else if (i2 == 8) {
                if (!z) {
                    b3 = 0;
                }
                allocate.put((byte) (b3 | Byte.MAX_VALUE));
                allocate.put(a2);
            } else {
                throw new RuntimeException("Size representation not supported/specified");
            }
            if (z) {
                ByteBuffer allocate2 = ByteBuffer.allocate(4);
                allocate2.putInt(this.f.nextInt());
                allocate.put(allocate2.array());
                while (payloadData.hasRemaining()) {
                    allocate.put((byte) (payloadData.get() ^ allocate2.get(i % 4)));
                    i++;
                }
            } else {
                allocate.put(payloadData);
            }
            if (c || allocate.remaining() == 0) {
                allocate.flip();
                return allocate;
            }
            throw new AssertionError(allocate.remaining());
        }
        throw new AssertionError();
    }

    public List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z) {
        com.pusher.java_websocket.framing.d dVar = new com.pusher.java_websocket.framing.d();
        try {
            dVar.setPayload(byteBuffer);
            dVar.setFin(true);
            dVar.setOptcode(Framedata.Opcode.BINARY);
            dVar.setTransferemasked(z);
            return Collections.singletonList(dVar);
        } catch (b e2) {
            throw new com.pusher.java_websocket.b.f((Throwable) e2);
        }
    }

    public List<Framedata> createFrames(String str, boolean z) {
        com.pusher.java_websocket.framing.d dVar = new com.pusher.java_websocket.framing.d();
        try {
            dVar.setPayload(ByteBuffer.wrap(com.pusher.java_websocket.e.b.utf8Bytes(str)));
            dVar.setFin(true);
            dVar.setOptcode(Framedata.Opcode.TEXT);
            dVar.setTransferemasked(z);
            return Collections.singletonList(dVar);
        } catch (b e2) {
            throw new com.pusher.java_websocket.b.f((Throwable) e2);
        }
    }

    private static String a(String str) {
        String trim = str.trim();
        try {
            return com.pusher.java_websocket.e.a.encodeBytes(MessageDigest.getInstance("SHA1").digest((trim + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").getBytes()));
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }

    public com.pusher.java_websocket.c.b postProcessHandshakeRequestAsClient(com.pusher.java_websocket.c.b bVar) {
        bVar.put("Upgrade", "websocket");
        bVar.put("Connection", "Upgrade");
        bVar.put("Sec-WebSocket-Version", "8");
        byte[] bArr = new byte[16];
        this.f.nextBytes(bArr);
        bVar.put("Sec-WebSocket-Key", com.pusher.java_websocket.e.a.encodeBytes(bArr));
        return bVar;
    }

    public c postProcessHandshakeResponseAsServer(com.pusher.java_websocket.c.a aVar, i iVar) throws d {
        iVar.put("Upgrade", "websocket");
        iVar.put("Connection", aVar.getFieldValue("Connection"));
        iVar.setHttpStatusMessage("Switching Protocols");
        String fieldValue = aVar.getFieldValue("Sec-WebSocket-Key");
        if (fieldValue != null) {
            iVar.put("Sec-WebSocket-Accept", a(fieldValue));
            return iVar;
        }
        throw new d("missing Sec-WebSocket-Key");
    }

    private static byte[] a(long j, int i) {
        byte[] bArr = new byte[i];
        int i2 = (i * 8) - 8;
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) ((int) (j >>> (i2 - (i3 * 8))));
        }
        return bArr;
    }

    public List<Framedata> translateFrame(ByteBuffer byteBuffer) throws e, b {
        LinkedList linkedList = new LinkedList();
        if (this.d != null) {
            try {
                byteBuffer.mark();
                int remaining = byteBuffer.remaining();
                int remaining2 = this.d.remaining();
                if (remaining2 > remaining) {
                    this.d.put(byteBuffer.array(), byteBuffer.position(), remaining);
                    byteBuffer.position(byteBuffer.position() + remaining);
                    return Collections.emptyList();
                }
                this.d.put(byteBuffer.array(), byteBuffer.position(), remaining2);
                byteBuffer.position(byteBuffer.position() + remaining2);
                linkedList.add(translateSingleFrame((ByteBuffer) this.d.duplicate().position(0)));
                this.d = null;
            } catch (C0099a e2) {
                this.d.limit();
                ByteBuffer allocate = ByteBuffer.allocate(checkAlloc(e2.getPreferedSize()));
                if (c || allocate.limit() > this.d.limit()) {
                    this.d.rewind();
                    allocate.put(this.d);
                    this.d = allocate;
                    return translateFrame(byteBuffer);
                }
                throw new AssertionError();
            }
        }
        while (byteBuffer.hasRemaining()) {
            byteBuffer.mark();
            try {
                linkedList.add(translateSingleFrame(byteBuffer));
            } catch (C0099a e3) {
                byteBuffer.reset();
                this.d = ByteBuffer.allocate(checkAlloc(e3.getPreferedSize()));
                this.d.put(byteBuffer);
            }
        }
        return linkedList;
    }

    public Framedata translateSingleFrame(ByteBuffer byteBuffer) throws C0099a, b {
        Framedata.Opcode opcode;
        com.pusher.java_websocket.framing.c cVar;
        int remaining = byteBuffer.remaining();
        int i = 2;
        if (remaining >= 2) {
            byte b2 = byteBuffer.get();
            boolean z = (b2 >> 8) != 0;
            byte b3 = (byte) ((b2 & Byte.MAX_VALUE) >> 4);
            if (b3 == 0) {
                byte b4 = byteBuffer.get();
                boolean z2 = (b4 & Byte.MIN_VALUE) != 0;
                int i2 = (byte) (b4 & Byte.MAX_VALUE);
                byte b5 = (byte) (b2 & 15);
                if (b5 == 0) {
                    opcode = Framedata.Opcode.CONTINUOUS;
                } else if (b5 == 1) {
                    opcode = Framedata.Opcode.TEXT;
                } else if (b5 != 2) {
                    switch (b5) {
                        case 8:
                            opcode = Framedata.Opcode.CLOSING;
                            break;
                        case 9:
                            opcode = Framedata.Opcode.PING;
                            break;
                        case 10:
                            opcode = Framedata.Opcode.PONG;
                            break;
                        default:
                            throw new com.pusher.java_websocket.b.c("unknow optcode " + ((short) b5));
                    }
                } else {
                    opcode = Framedata.Opcode.BINARY;
                }
                if (z || !(opcode == Framedata.Opcode.PING || opcode == Framedata.Opcode.PONG || opcode == Framedata.Opcode.CLOSING)) {
                    if (i2 < 0 || i2 > 125) {
                        if (opcode == Framedata.Opcode.PING || opcode == Framedata.Opcode.PONG || opcode == Framedata.Opcode.CLOSING) {
                            throw new com.pusher.java_websocket.b.c("more than 125 octets");
                        } else if (i2 == 126) {
                            if (remaining >= 4) {
                                byte[] bArr = new byte[3];
                                bArr[1] = byteBuffer.get();
                                bArr[2] = byteBuffer.get();
                                i2 = new BigInteger(bArr).intValue();
                                i = 4;
                            } else {
                                throw new C0099a(4);
                            }
                        } else if (remaining >= 10) {
                            byte[] bArr2 = new byte[8];
                            for (int i3 = 0; i3 < 8; i3++) {
                                bArr2[i3] = byteBuffer.get();
                            }
                            long longValue = new BigInteger(bArr2).longValue();
                            if (longValue <= 2147483647L) {
                                i2 = (int) longValue;
                                i = 10;
                            } else {
                                throw new e("Payloadsize is to big...");
                            }
                        } else {
                            throw new C0099a(10);
                        }
                    }
                    int i4 = i + (z2 ? 4 : 0) + i2;
                    if (remaining >= i4) {
                        ByteBuffer allocate = ByteBuffer.allocate(checkAlloc(i2));
                        if (z2) {
                            byte[] bArr3 = new byte[4];
                            byteBuffer.get(bArr3);
                            for (int i5 = 0; i5 < i2; i5++) {
                                allocate.put((byte) (byteBuffer.get() ^ bArr3[i5 % 4]));
                            }
                        } else {
                            allocate.put(byteBuffer.array(), byteBuffer.position(), allocate.limit());
                            byteBuffer.position(byteBuffer.position() + allocate.limit());
                        }
                        if (opcode == Framedata.Opcode.CLOSING) {
                            cVar = new com.pusher.java_websocket.framing.b();
                        } else {
                            cVar = new com.pusher.java_websocket.framing.d();
                            cVar.setFin(z);
                            cVar.setOptcode(opcode);
                        }
                        allocate.flip();
                        cVar.setPayload(allocate);
                        return cVar;
                    }
                    throw new C0099a(i4);
                }
                throw new com.pusher.java_websocket.b.c("control frames may no be fragmented");
            }
            throw new com.pusher.java_websocket.b.c("bad rsv ".concat(String.valueOf(b3)));
        }
        throw new C0099a(2);
    }

    public void reset() {
        this.d = null;
    }

    public Draft copyInstance() {
        return new a();
    }

    public Draft.CloseHandshakeType getCloseHandshakeType() {
        return Draft.CloseHandshakeType.TWOWAY;
    }
}
