package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class q extends b {
    private int[] d;

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return new byte[0];
    }

    public q(byte b2, byte[] bArr) throws IOException {
        super((byte) 9);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f8741b = dataInputStream.readUnsignedShort();
        this.d = new int[(bArr.length - 2)];
        int i = 0;
        for (int read = dataInputStream.read(); read != -1; read = dataInputStream.read()) {
            this.d[i] = read;
            i++;
        }
        dataInputStream.close();
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        stringBuffer.append(" granted Qos");
        for (int append : this.d) {
            stringBuffer.append(" ");
            stringBuffer.append(append);
        }
        return stringBuffer.toString();
    }

    public final int[] getGrantedQos() {
        return this.d;
    }
}
