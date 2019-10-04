package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class t extends u {
    private String[] d;
    private int e;

    public final boolean isRetryable() {
        return true;
    }

    public t(String[] strArr) {
        super((byte) 10);
        if (strArr != null) {
            this.d = (String[]) strArr.clone();
        }
    }

    public t(byte b2, byte[] bArr) throws IOException {
        super((byte) 10);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f8741b = dataInputStream.readUnsignedShort();
        boolean z = false;
        this.e = 0;
        this.d = new String[10];
        while (!z) {
            try {
                this.d[this.e] = decodeUTF8(dataInputStream);
            } catch (Exception unused) {
                z = true;
            }
        }
        dataInputStream.close();
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        stringBuffer.append(" names:[");
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append("\"" + this.d[i] + "\"");
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
            for (String encodeUTF8 : this.d) {
                encodeUTF8(dataOutputStream, encodeUTF8);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }
}
