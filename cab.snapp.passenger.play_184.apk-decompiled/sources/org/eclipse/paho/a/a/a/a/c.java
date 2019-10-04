package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class c extends b {
    public static final String KEY = "Con";
    private int d;
    private boolean e;

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return new byte[0];
    }

    public final String getKey() {
        return "Con";
    }

    public final boolean isMessageIdRequired() {
        return false;
    }

    public c(byte b2, byte[] bArr) throws IOException {
        super((byte) 2);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.e = (dataInputStream.readUnsignedByte() & 1) != 1 ? false : true;
        this.d = dataInputStream.readUnsignedByte();
        dataInputStream.close();
    }

    public final int getReturnCode() {
        return this.d;
    }

    public final String toString() {
        return String.valueOf(super.toString()) + " session present:" + this.e + " return code: " + this.d;
    }

    public final boolean getSessionPresent() {
        return this.e;
    }
}
