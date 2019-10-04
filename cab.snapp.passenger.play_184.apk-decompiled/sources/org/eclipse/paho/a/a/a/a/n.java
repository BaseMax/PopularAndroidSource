package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class n extends h {
    public n(m mVar) {
        super((byte) 6);
        setMessageId(mVar.getMessageId());
    }

    public n(byte b2, byte[] bArr) throws IOException {
        super((byte) 6);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f8741b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return c();
    }

    /* access modifiers changed from: protected */
    public final byte a() {
        return (byte) ((this.c ? 8 : 0) | 2);
    }

    public final String toString() {
        return String.valueOf(super.toString()) + " msgId " + this.f8741b;
    }
}
