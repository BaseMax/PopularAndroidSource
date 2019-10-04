package org.eclipse.paho.a.a.a.a;

import cab.snapp.d.a.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;

public final class d extends u {
    public static final String KEY = "Con";
    private String d;
    private boolean e;
    private q f;
    private String g;
    private char[] h;
    private int i;
    private String j;
    private int k;

    /* access modifiers changed from: protected */
    public final byte a() {
        return 0;
    }

    public final String getKey() {
        return "Con";
    }

    public final boolean isMessageIdRequired() {
        return false;
    }

    public d(byte b2, byte[] bArr) throws IOException, p {
        super((byte) 1);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        decodeUTF8(dataInputStream);
        dataInputStream.readByte();
        dataInputStream.readByte();
        this.i = dataInputStream.readUnsignedShort();
        this.d = decodeUTF8(dataInputStream);
        dataInputStream.close();
    }

    public d(String str, int i2, boolean z, int i3, String str2, char[] cArr, q qVar, String str3) {
        super((byte) 1);
        this.d = str;
        this.e = z;
        this.i = i3;
        this.g = str2;
        if (cArr != null) {
            this.h = (char[]) cArr.clone();
        }
        this.f = qVar;
        this.j = str3;
        this.k = i2;
    }

    public final String toString() {
        return String.valueOf(super.toString()) + " clientId " + this.d + " keepAliveInterval " + this.i;
    }

    public final boolean isCleanSession() {
        return this.e;
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (this.k == 3) {
                encodeUTF8(dataOutputStream, "MQIsdp");
            } else if (this.k == 4) {
                encodeUTF8(dataOutputStream, c.TAG);
            }
            dataOutputStream.write(this.k);
            byte b2 = 0;
            if (this.e) {
                b2 = 2;
            }
            if (this.f != null) {
                b2 = (byte) (((byte) (b2 | 4)) | (this.f.getQos() << 3));
                if (this.f.isRetained()) {
                    b2 = (byte) (b2 | 32);
                }
            }
            if (this.g != null) {
                b2 = (byte) (b2 | 128);
                if (this.h != null) {
                    b2 = (byte) (b2 | 64);
                }
            }
            dataOutputStream.write(b2);
            dataOutputStream.writeShort(this.i);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }

    public final byte[] getPayload() throws p {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            encodeUTF8(dataOutputStream, this.d);
            if (this.f != null) {
                encodeUTF8(dataOutputStream, this.j);
                dataOutputStream.writeShort(this.f.getPayload().length);
                dataOutputStream.write(this.f.getPayload());
            }
            if (this.g != null) {
                encodeUTF8(dataOutputStream, this.g);
                if (this.h != null) {
                    encodeUTF8(dataOutputStream, new String(this.h));
                }
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }
}
