package com.pusher.java_websocket.drafts;

import com.pusher.java_websocket.WebSocket;
import com.pusher.java_websocket.b.d;
import com.pusher.java_websocket.b.e;
import com.pusher.java_websocket.c.a;
import com.pusher.java_websocket.c.c;
import com.pusher.java_websocket.c.f;
import com.pusher.java_websocket.c.h;
import com.pusher.java_websocket.c.i;
import com.pusher.java_websocket.e.b;
import com.pusher.java_websocket.framing.Framedata;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public abstract class Draft {
    public static final byte[] FLASH_POLICY_REQUEST = b.utf8Bytes("<policy-file-request/>\u0000");
    public static int INITIAL_FAMESIZE = 64;
    public static int MAX_FAME_SIZE = 1000;

    /* renamed from: a  reason: collision with root package name */
    protected WebSocket.Role f5077a = null;

    /* renamed from: b  reason: collision with root package name */
    protected Framedata.Opcode f5078b = null;

    public enum CloseHandshakeType {
        NONE,
        ONEWAY,
        TWOWAY
    }

    public enum HandshakeState {
        MATCHED,
        NOT_MATCHED
    }

    public abstract HandshakeState acceptHandshakeAsClient(a aVar, h hVar) throws d;

    public abstract HandshakeState acceptHandshakeAsServer(a aVar) throws d;

    public abstract Draft copyInstance();

    public abstract ByteBuffer createBinaryFrame(Framedata framedata);

    public abstract List<Framedata> createFrames(String str, boolean z);

    public abstract List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z);

    public abstract CloseHandshakeType getCloseHandshakeType();

    public abstract com.pusher.java_websocket.c.b postProcessHandshakeRequestAsClient(com.pusher.java_websocket.c.b bVar) throws d;

    public abstract c postProcessHandshakeResponseAsServer(a aVar, i iVar) throws d;

    public abstract void reset();

    public abstract List<Framedata> translateFrame(ByteBuffer byteBuffer) throws com.pusher.java_websocket.b.b;

    public static ByteBuffer readLine(ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        byte b2 = 48;
        while (byteBuffer.hasRemaining()) {
            byte b3 = byteBuffer.get();
            allocate.put(b3);
            if (b2 == 13 && b3 == 10) {
                allocate.limit(allocate.position() - 2);
                allocate.position(0);
                return allocate;
            }
            b2 = b3;
        }
        byteBuffer.position(byteBuffer.position() - allocate.position());
        return null;
    }

    public static String readStringLine(ByteBuffer byteBuffer) {
        ByteBuffer readLine = readLine(byteBuffer);
        if (readLine == null) {
            return null;
        }
        return b.stringAscii(readLine.array(), 0, readLine.limit());
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0067 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0068  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.pusher.java_websocket.c.c translateHandshakeHttp(java.nio.ByteBuffer r6, com.pusher.java_websocket.WebSocket.Role r7) throws com.pusher.java_websocket.b.d, com.pusher.java_websocket.b.a {
        /*
            java.lang.String r0 = readStringLine(r6)
            if (r0 == 0) goto L_0x0074
            r1 = 3
            java.lang.String r2 = " "
            java.lang.String[] r0 = r0.split(r2, r1)
            int r2 = r0.length
            if (r2 != r1) goto L_0x006e
            com.pusher.java_websocket.WebSocket$Role r1 = com.pusher.java_websocket.WebSocket.Role.CLIENT
            r2 = 2
            r3 = 1
            if (r7 != r1) goto L_0x002d
            com.pusher.java_websocket.c.e r7 = new com.pusher.java_websocket.c.e
            r7.<init>()
            r1 = r7
            com.pusher.java_websocket.c.i r1 = (com.pusher.java_websocket.c.i) r1
            r4 = r0[r3]
            short r4 = java.lang.Short.parseShort(r4)
            r1.setHttpStatus(r4)
            r0 = r0[r2]
            r1.setHttpStatusMessage(r0)
            goto L_0x0037
        L_0x002d:
            com.pusher.java_websocket.c.d r7 = new com.pusher.java_websocket.c.d
            r7.<init>()
            r0 = r0[r3]
            r7.setResourceDescriptor(r0)
        L_0x0037:
            java.lang.String r0 = readStringLine(r6)
            if (r0 == 0) goto L_0x0065
            int r1 = r0.length()
            if (r1 <= 0) goto L_0x0065
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1, r2)
            int r1 = r0.length
            if (r1 != r2) goto L_0x005d
            r1 = 0
            r1 = r0[r1]
            r0 = r0[r3]
            java.lang.String r4 = "^ +"
            java.lang.String r5 = ""
            java.lang.String r0 = r0.replaceFirst(r4, r5)
            r7.put(r1, r0)
            goto L_0x0037
        L_0x005d:
            com.pusher.java_websocket.b.d r6 = new com.pusher.java_websocket.b.d
            java.lang.String r7 = "not an http header"
            r6.<init>((java.lang.String) r7)
            throw r6
        L_0x0065:
            if (r0 == 0) goto L_0x0068
            return r7
        L_0x0068:
            com.pusher.java_websocket.b.a r6 = new com.pusher.java_websocket.b.a
            r6.<init>()
            throw r6
        L_0x006e:
            com.pusher.java_websocket.b.d r6 = new com.pusher.java_websocket.b.d
            r6.<init>()
            throw r6
        L_0x0074:
            com.pusher.java_websocket.b.a r7 = new com.pusher.java_websocket.b.a
            int r6 = r6.capacity()
            int r6 = r6 + 128
            r7.<init>(r6)
            goto L_0x0081
        L_0x0080:
            throw r7
        L_0x0081:
            goto L_0x0080
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.java_websocket.drafts.Draft.translateHandshakeHttp(java.nio.ByteBuffer, com.pusher.java_websocket.WebSocket$Role):com.pusher.java_websocket.c.c");
    }

    protected static boolean a(f fVar) {
        return fVar.getFieldValue("Upgrade").equalsIgnoreCase("websocket") && fVar.getFieldValue("Connection").toLowerCase(Locale.ENGLISH).contains("upgrade");
    }

    public List<Framedata> continuousFrame(Framedata.Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        if (opcode == Framedata.Opcode.BINARY || opcode == Framedata.Opcode.TEXT || opcode == Framedata.Opcode.TEXT) {
            if (this.f5078b != null) {
                this.f5078b = Framedata.Opcode.CONTINUOUS;
            } else {
                this.f5078b = opcode;
            }
            com.pusher.java_websocket.framing.d dVar = new com.pusher.java_websocket.framing.d(this.f5078b);
            try {
                dVar.setPayload(byteBuffer);
                dVar.setFin(z);
                if (z) {
                    this.f5078b = null;
                } else {
                    this.f5078b = opcode;
                }
                return Collections.singletonList(dVar);
            } catch (com.pusher.java_websocket.b.b e) {
                throw new RuntimeException(e);
            }
        } else {
            throw new IllegalArgumentException("Only Opcode.BINARY or  Opcode.TEXT are allowed");
        }
    }

    public List<ByteBuffer> createHandshake(f fVar, WebSocket.Role role) {
        return createHandshake(fVar, role, true);
    }

    public List<ByteBuffer> createHandshake(f fVar, WebSocket.Role role, boolean z) {
        int i;
        StringBuilder sb = new StringBuilder(100);
        if (fVar instanceof a) {
            sb.append("GET ");
            sb.append(((a) fVar).getResourceDescriptor());
            sb.append(" HTTP/1.1");
        } else if (fVar instanceof h) {
            sb.append("HTTP/1.1 101 " + ((h) fVar).getHttpStatusMessage());
        } else {
            throw new RuntimeException("unknow role");
        }
        sb.append("\r\n");
        Iterator<String> iterateHttpFields = fVar.iterateHttpFields();
        while (iterateHttpFields.hasNext()) {
            String next = iterateHttpFields.next();
            String fieldValue = fVar.getFieldValue(next);
            sb.append(next);
            sb.append(": ");
            sb.append(fieldValue);
            sb.append("\r\n");
        }
        sb.append("\r\n");
        byte[] asciiBytes = b.asciiBytes(sb.toString());
        byte[] content = z ? fVar.getContent() : null;
        if (content == null) {
            i = 0;
        } else {
            i = content.length;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i + asciiBytes.length);
        allocate.put(asciiBytes);
        if (content != null) {
            allocate.put(content);
        }
        allocate.flip();
        return Collections.singletonList(allocate);
    }

    public f translateHandshake(ByteBuffer byteBuffer) throws d {
        return translateHandshakeHttp(byteBuffer, this.f5077a);
    }

    public int checkAlloc(int i) throws e, com.pusher.java_websocket.b.b {
        if (i >= 0) {
            return i;
        }
        throw new com.pusher.java_websocket.b.b(1002, "Negative count");
    }

    public void setParseMode(WebSocket.Role role) {
        this.f5077a = role;
    }

    public WebSocket.Role getRole() {
        return this.f5077a;
    }
}
