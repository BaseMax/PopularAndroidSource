package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class l extends b {
    public l(byte b2, byte[] bArr) throws IOException {
        super((byte) 7);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f8741b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    public l(o oVar) {
        super((byte) 7);
        this.f8741b = oVar.getMessageId();
    }

    public l(int i) {
        super((byte) 7);
        this.f8741b = i;
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return c();
    }
}
