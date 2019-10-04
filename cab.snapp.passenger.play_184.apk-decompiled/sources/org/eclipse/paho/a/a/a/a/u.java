package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import org.eclipse.paho.a.a.a.i;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.r;
import org.eclipse.paho.a.a.v;

public abstract class u {
    public static final byte MESSAGE_TYPE_CONNACK = 2;
    public static final byte MESSAGE_TYPE_CONNECT = 1;
    public static final byte MESSAGE_TYPE_DISCONNECT = 14;
    public static final byte MESSAGE_TYPE_PINGREQ = 12;
    public static final byte MESSAGE_TYPE_PINGRESP = 13;
    public static final byte MESSAGE_TYPE_PUBACK = 4;
    public static final byte MESSAGE_TYPE_PUBCOMP = 7;
    public static final byte MESSAGE_TYPE_PUBLISH = 3;
    public static final byte MESSAGE_TYPE_PUBREC = 5;
    public static final byte MESSAGE_TYPE_PUBREL = 6;
    public static final byte MESSAGE_TYPE_SUBACK = 9;
    public static final byte MESSAGE_TYPE_SUBSCRIBE = 8;
    public static final byte MESSAGE_TYPE_UNSUBACK = 11;
    public static final byte MESSAGE_TYPE_UNSUBSCRIBE = 10;

    /* renamed from: a  reason: collision with root package name */
    protected static final Charset f8740a = StandardCharsets.UTF_8;
    private static final String[] d = {"reserved", "CONNECT", "CONNACK", "PUBLISH", "PUBACK", "PUBREC", "PUBREL", "PUBCOMP", "SUBSCRIBE", "SUBACK", "UNSUBSCRIBE", "UNSUBACK", "PINGREQ", "PINGRESP", "DISCONNECT"};

    /* renamed from: b  reason: collision with root package name */
    protected int f8741b;
    protected boolean c = false;
    private byte e;
    private v f;

    /* access modifiers changed from: protected */
    public abstract byte a();

    /* access modifiers changed from: protected */
    public abstract byte[] b() throws p;

    public byte[] getPayload() throws p {
        return new byte[0];
    }

    public boolean isMessageIdRequired() {
        return true;
    }

    public boolean isRetryable() {
        return false;
    }

    public u(byte b2) {
        this.e = b2;
        this.f8741b = 0;
    }

    public byte getType() {
        return this.e;
    }

    public int getMessageId() {
        return this.f8741b;
    }

    public void setMessageId(int i) {
        this.f8741b = i;
    }

    public String getKey() {
        return Integer.toString(getMessageId());
    }

    public byte[] getHeader() throws p {
        try {
            byte type = ((getType() & 15) << 4) ^ (a() & 15);
            byte[] b2 = b();
            int length = b2.length + getPayload().length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeByte(type);
            dataOutputStream.write(encodeMBI((long) length));
            dataOutputStream.write(b2);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }

    public static u createWireMessage(r rVar) throws p {
        byte[] payloadBytes = rVar.getPayloadBytes();
        if (payloadBytes == null) {
            payloadBytes = new byte[0];
        }
        v vVar = new v(rVar.getHeaderBytes(), rVar.getHeaderOffset(), rVar.getHeaderLength(), payloadBytes, rVar.getPayloadOffset(), rVar.getPayloadLength());
        return a((InputStream) vVar);
    }

    public static u createWireMessage(byte[] bArr) throws p {
        return a((InputStream) new ByteArrayInputStream(bArr));
    }

    private static u a(InputStream inputStream) throws p {
        try {
            a aVar = new a(inputStream);
            DataInputStream dataInputStream = new DataInputStream(aVar);
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            byte b2 = (byte) (readUnsignedByte >> 4);
            byte b3 = (byte) (readUnsignedByte & 15);
            long counter = (((long) aVar.getCounter()) + ((long) readMBI(dataInputStream).getValue())) - ((long) aVar.getCounter());
            byte[] bArr = new byte[0];
            if (counter > 0) {
                bArr = new byte[((int) counter)];
                dataInputStream.readFully(bArr, 0, bArr.length);
            }
            if (b2 == 1) {
                return new d(b3, bArr);
            }
            if (b2 == 3) {
                return new o(b3, bArr);
            }
            if (b2 == 4) {
                return new k(b3, bArr);
            }
            if (b2 == 7) {
                return new l(b3, bArr);
            }
            if (b2 == 2) {
                return new c(b3, bArr);
            }
            if (b2 == 12) {
                return new i(b3, bArr);
            }
            if (b2 == 13) {
                return new j(b3, bArr);
            }
            if (b2 == 8) {
                return new r(b3, bArr);
            }
            if (b2 == 9) {
                return new q(b3, bArr);
            }
            if (b2 == 10) {
                return new t(b3, bArr);
            }
            if (b2 == 11) {
                return new s(b3, bArr);
            }
            if (b2 == 6) {
                return new n(b3, bArr);
            }
            if (b2 == 5) {
                return new m(b3, bArr);
            }
            if (b2 == 14) {
                return new e(b3, bArr);
            }
            throw i.createMqttException(6);
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }

    public static byte[] encodeMBI(long j) {
        validateVariableByteInt((int) j);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        do {
            byte b2 = (byte) ((int) (j % 128));
            j /= 128;
            if (j > 0) {
                b2 = (byte) (b2 | 128);
            }
            byteArrayOutputStream.write(b2);
            i++;
            if (j <= 0) {
                break;
            }
        } while (i < 4);
        return byteArrayOutputStream.toByteArray();
    }

    public static w readMBI(DataInputStream dataInputStream) throws IOException {
        byte readByte;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        do {
            readByte = dataInputStream.readByte();
            i++;
            i2 += (readByte & Byte.MAX_VALUE) * i3;
            i3 *= 128;
        } while ((readByte & 128) != 0);
        if (i2 >= 0 && i2 <= 268435455) {
            return new w(i2, i);
        }
        throw new IOException("This property must be a number between 0 and 268435455. Read value was: ".concat(String.valueOf(i2)));
    }

    /* access modifiers changed from: protected */
    public final byte[] c() throws p {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeShort(this.f8741b);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }

    public void setDuplicate(boolean z) {
        this.c = z;
    }

    public static void encodeUTF8(DataOutputStream dataOutputStream, String str) throws p {
        a(str);
        try {
            byte[] bytes = str.getBytes(f8740a);
            dataOutputStream.write((byte) ((bytes.length >>> 8) & 255));
            dataOutputStream.write((byte) ((bytes.length >>> 0) & 255));
            dataOutputStream.write(bytes);
        } catch (UnsupportedEncodingException e2) {
            throw new p((Throwable) e2);
        } catch (IOException e3) {
            throw new p((Throwable) e3);
        }
    }

    public static String decodeUTF8(DataInputStream dataInputStream) throws p {
        try {
            byte[] bArr = new byte[dataInputStream.readUnsignedShort()];
            dataInputStream.readFully(bArr);
            String str = new String(bArr, f8740a);
            a(str);
            return str;
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r3 != 65534) goto L_0x0055;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0052, code lost:
        if (r2 > 64991) goto L_0x0055;
     */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x005c A[LOOP:0: B:1:0x0002->B:26:0x005c, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x005f A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(java.lang.String r7) throws java.lang.IllegalArgumentException {
        /*
            r0 = 0
            r1 = 0
        L_0x0002:
            int r2 = r7.length()
            if (r1 < r2) goto L_0x0009
            return
        L_0x0009:
            char r2 = r7.charAt(r1)
            boolean r3 = java.lang.Character.isHighSurrogate(r2)
            r4 = 65534(0xfffe, float:9.1833E-41)
            r5 = 1
            if (r3 == 0) goto L_0x0039
            int r1 = r1 + 1
            int r3 = r7.length()
            if (r1 == r3) goto L_0x0058
            char r3 = r7.charAt(r1)
            boolean r6 = java.lang.Character.isLowSurrogate(r3)
            if (r6 != 0) goto L_0x0058
            r6 = r2 & 1023(0x3ff, float:1.434E-42)
            int r6 = r6 << 10
            r3 = r3 & 1023(0x3ff, float:1.434E-42)
            r3 = r3 | r6
            r6 = 65535(0xffff, float:9.1834E-41)
            r3 = r3 & r6
            if (r3 == r6) goto L_0x0058
            if (r3 != r4) goto L_0x0055
            goto L_0x0058
        L_0x0039:
            boolean r3 = java.lang.Character.isISOControl(r2)
            if (r3 != 0) goto L_0x0058
            boolean r3 = java.lang.Character.isLowSurrogate(r2)
            if (r3 == 0) goto L_0x0046
            goto L_0x0058
        L_0x0046:
            r3 = 64976(0xfdd0, float:9.1051E-41)
            if (r2 < r3) goto L_0x0055
            if (r2 == r4) goto L_0x0058
            if (r2 >= r3) goto L_0x0058
            r3 = 64991(0xfddf, float:9.1072E-41)
            if (r2 > r3) goto L_0x0055
            goto L_0x0058
        L_0x0055:
            r3 = r1
            r1 = 0
            goto L_0x005a
        L_0x0058:
            r3 = r1
            r1 = 1
        L_0x005a:
            if (r1 != 0) goto L_0x005f
            int r1 = r3 + 1
            goto L_0x0002
        L_0x005f:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.Object[] r1 = new java.lang.Object[r5]
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r0] = r2
            java.lang.String r0 = "Invalid UTF-8 char: [%x]"
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r7.<init>(r0)
            goto L_0x0074
        L_0x0073:
            throw r7
        L_0x0074:
            goto L_0x0073
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.a.u.a(java.lang.String):void");
    }

    public static void validateVariableByteInt(int i) throws IllegalArgumentException {
        if (i < 0 || i > 268435455) {
            throw new IllegalArgumentException("This property must be a number between 0 and 268435455");
        }
    }

    public v getToken() {
        return this.f;
    }

    public void setToken(v vVar) {
        this.f = vVar;
    }

    public String toString() {
        return d[this.e];
    }
}
