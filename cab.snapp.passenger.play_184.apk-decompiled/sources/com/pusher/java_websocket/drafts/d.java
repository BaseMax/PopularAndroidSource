package com.pusher.java_websocket.drafts;

import com.pusher.java_websocket.WebSocket;
import com.pusher.java_websocket.c.a;
import com.pusher.java_websocket.c.b;
import com.pusher.java_websocket.c.c;
import com.pusher.java_websocket.c.f;
import com.pusher.java_websocket.c.h;
import com.pusher.java_websocket.c.i;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.framing.Framedata;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public final class d extends c {
    private static final byte[] g = {-1, 0};
    private boolean f = false;
    private final Random h = new Random();

    public static byte[] createChallenge(String str, String str2, byte[] bArr) throws com.pusher.java_websocket.b.d {
        byte[] a2 = a(str);
        byte[] a3 = a(str2);
        try {
            return MessageDigest.getInstance("MD5").digest(new byte[]{a2[0], a2[1], a2[2], a2[3], a3[0], a3[1], a3[2], a3[3], bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]});
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    private static String a() {
        Random random = new Random();
        long nextInt = (long) (random.nextInt(12) + 1);
        String l = Long.toString(((long) (random.nextInt(Math.abs(new Long(4294967295L / nextInt).intValue())) + 1)) * nextInt);
        int nextInt2 = random.nextInt(12) + 1;
        String str = l;
        for (int i = 0; i < nextInt2; i++) {
            int abs = Math.abs(random.nextInt(str.length()));
            char nextInt3 = (char) (random.nextInt(95) + 33);
            if (nextInt3 >= '0' && nextInt3 <= '9') {
                nextInt3 = (char) (nextInt3 - 15);
            }
            str = new StringBuilder(str).insert(abs, nextInt3).toString();
        }
        for (int i2 = 0; ((long) i2) < nextInt; i2++) {
            str = new StringBuilder(str).insert(Math.abs(random.nextInt(str.length() - 1) + 1), " ").toString();
        }
        return str;
    }

    private static byte[] a(String str) throws com.pusher.java_websocket.b.d {
        try {
            long parseLong = Long.parseLong(str.replaceAll("[^0-9]", ""));
            long length = (long) (str.split(" ").length - 1);
            if (length != 0) {
                long longValue = new Long(parseLong / length).longValue();
                return new byte[]{(byte) ((int) (longValue >> 24)), (byte) ((int) ((longValue << 8) >> 24)), (byte) ((int) ((longValue << 16) >> 24)), (byte) ((int) ((longValue << 24) >> 24))};
            }
            throw new com.pusher.java_websocket.b.d("invalid Sec-WebSocket-Key (/key2/)");
        } catch (NumberFormatException unused) {
            throw new com.pusher.java_websocket.b.d("invalid Sec-WebSocket-Key (/key1/ or /key2/)");
        }
    }

    public final Draft.HandshakeState acceptHandshakeAsClient(a aVar, h hVar) {
        if (this.f) {
            return Draft.HandshakeState.NOT_MATCHED;
        }
        try {
            if (hVar.getFieldValue("Sec-WebSocket-Origin").equals(aVar.getFieldValue("Origin"))) {
                if (a(hVar)) {
                    byte[] content = hVar.getContent();
                    if (content == null || content.length == 0) {
                        throw new com.pusher.java_websocket.b.a();
                    } else if (Arrays.equals(content, createChallenge(aVar.getFieldValue("Sec-WebSocket-Key1"), aVar.getFieldValue("Sec-WebSocket-Key2"), aVar.getContent()))) {
                        return Draft.HandshakeState.MATCHED;
                    } else {
                        return Draft.HandshakeState.NOT_MATCHED;
                    }
                }
            }
            return Draft.HandshakeState.NOT_MATCHED;
        } catch (com.pusher.java_websocket.b.d e) {
            throw new RuntimeException("bad handshakerequest", e);
        }
    }

    public final Draft.HandshakeState acceptHandshakeAsServer(a aVar) {
        if (!aVar.getFieldValue("Upgrade").equals("WebSocket") || !aVar.getFieldValue("Connection").contains("Upgrade") || aVar.getFieldValue("Sec-WebSocket-Key1").length() <= 0 || aVar.getFieldValue("Sec-WebSocket-Key2").isEmpty() || !aVar.hasFieldValue("Origin")) {
            return Draft.HandshakeState.NOT_MATCHED;
        }
        return Draft.HandshakeState.MATCHED;
    }

    public final b postProcessHandshakeRequestAsClient(b bVar) {
        bVar.put("Upgrade", "WebSocket");
        bVar.put("Connection", "Upgrade");
        bVar.put("Sec-WebSocket-Key1", a());
        bVar.put("Sec-WebSocket-Key2", a());
        if (!bVar.hasFieldValue("Origin")) {
            bVar.put("Origin", "random" + this.h.nextInt());
        }
        byte[] bArr = new byte[8];
        this.h.nextBytes(bArr);
        bVar.setContent(bArr);
        return bVar;
    }

    public final c postProcessHandshakeResponseAsServer(a aVar, i iVar) throws com.pusher.java_websocket.b.d {
        iVar.setHttpStatusMessage("WebSocket Protocol Handshake");
        iVar.put("Upgrade", "WebSocket");
        iVar.put("Connection", aVar.getFieldValue("Connection"));
        iVar.put("Sec-WebSocket-Origin", aVar.getFieldValue("Origin"));
        iVar.put("Sec-WebSocket-Location", "ws://" + aVar.getFieldValue("Host") + aVar.getResourceDescriptor());
        String fieldValue = aVar.getFieldValue("Sec-WebSocket-Key1");
        String fieldValue2 = aVar.getFieldValue("Sec-WebSocket-Key2");
        byte[] content = aVar.getContent();
        if (fieldValue == null || fieldValue2 == null || content == null || content.length != 8) {
            throw new com.pusher.java_websocket.b.d("Bad keys");
        }
        iVar.setContent(createChallenge(fieldValue, fieldValue2, content));
        return iVar;
    }

    public final f translateHandshake(ByteBuffer byteBuffer) throws com.pusher.java_websocket.b.d {
        c translateHandshakeHttp = translateHandshakeHttp(byteBuffer, this.f5077a);
        if ((translateHandshakeHttp.hasFieldValue("Sec-WebSocket-Key1") || this.f5077a == WebSocket.Role.CLIENT) && !translateHandshakeHttp.hasFieldValue("Sec-WebSocket-Version")) {
            byte[] bArr = new byte[(this.f5077a == WebSocket.Role.SERVER ? 8 : 16)];
            try {
                byteBuffer.get(bArr);
                translateHandshakeHttp.setContent(bArr);
            } catch (BufferUnderflowException unused) {
                throw new com.pusher.java_websocket.b.a(byteBuffer.capacity() + 16);
            }
        }
        return translateHandshakeHttp;
    }

    public final List<Framedata> translateFrame(ByteBuffer byteBuffer) throws com.pusher.java_websocket.b.b {
        byteBuffer.mark();
        List<Framedata> a2 = super.a(byteBuffer);
        if (a2 != null) {
            return a2;
        }
        byteBuffer.reset();
        List<Framedata> list = this.d;
        this.c = true;
        if (this.e == null) {
            this.e = ByteBuffer.allocate(2);
            if (byteBuffer.remaining() <= this.e.remaining()) {
                this.e.put(byteBuffer);
                if (this.e.hasRemaining()) {
                    this.d = new LinkedList();
                    return list;
                } else if (Arrays.equals(this.e.array(), g)) {
                    list.add(new com.pusher.java_websocket.framing.b(1000));
                    return list;
                } else {
                    throw new com.pusher.java_websocket.b.c();
                }
            } else {
                throw new com.pusher.java_websocket.b.c();
            }
        } else {
            throw new com.pusher.java_websocket.b.c();
        }
    }

    public final ByteBuffer createBinaryFrame(Framedata framedata) {
        if (framedata.getOpcode() == Framedata.Opcode.CLOSING) {
            return ByteBuffer.wrap(g);
        }
        return super.createBinaryFrame(framedata);
    }

    public final Draft.CloseHandshakeType getCloseHandshakeType() {
        return Draft.CloseHandshakeType.ONEWAY;
    }

    public final Draft copyInstance() {
        return new d();
    }
}
