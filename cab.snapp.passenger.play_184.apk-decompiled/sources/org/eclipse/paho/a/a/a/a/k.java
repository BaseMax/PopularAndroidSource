package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class k extends b {
    public k(byte b2, byte[] bArr) throws IOException {
        super((byte) 4);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f8741b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    public k(o oVar) {
        super((byte) 4);
        this.f8741b = oVar.getMessageId();
    }

    public k(int i) {
        super((byte) 4);
        this.f8741b = i;
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return c();
    }
}
