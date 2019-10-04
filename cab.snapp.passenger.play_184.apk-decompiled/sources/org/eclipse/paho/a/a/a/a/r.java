package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;

public final class r extends u {
    private String[] d;
    private int[] e;
    private int f;

    public final boolean isRetryable() {
        return true;
    }

    public r(byte b2, byte[] bArr) throws IOException {
        super((byte) 8);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f8741b = dataInputStream.readUnsignedShort();
        boolean z = false;
        this.f = 0;
        this.d = new String[10];
        this.e = new int[10];
        while (!z) {
            try {
                this.d[this.f] = decodeUTF8(dataInputStream);
                int[] iArr = this.e;
                int i = this.f;
                this.f = i + 1;
                iArr[i] = dataInputStream.readByte();
            } catch (Exception unused) {
                z = true;
            }
        }
        dataInputStream.close();
    }

    public r(String[] strArr, int[] iArr) {
        super((byte) 8);
        if (strArr == null || iArr == null) {
            throw new IllegalArgumentException();
        }
        this.d = (String[]) strArr.clone();
        this.e = (int[]) iArr.clone();
        if (this.d.length == this.e.length) {
            this.f = strArr.length;
            for (int validateQos : iArr) {
                q.validateQos(validateQos);
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        stringBuffer.append(" names:[");
        for (int i = 0; i < this.f; i++) {
            if (i > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append("\"");
            stringBuffer.append(this.d[i]);
            stringBuffer.append("\"");
        }
        stringBuffer.append("] qos:[");
        for (int i2 = 0; i2 < this.f; i2++) {
            if (i2 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.e[i2]);
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    /* access modifiers changed from: protected */
    public final byte a() {
        return (byte) ((this.c ? 8 : 0) | 2);
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
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

    public final byte[] getPayload() throws p {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            for (int i = 0; i < this.d.length; i++) {
                encodeUTF8(dataOutputStream, this.d[i]);
                dataOutputStream.writeByte(this.e[i]);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }
}
