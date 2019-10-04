package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class m extends b {
    public m(byte b2, byte[] bArr) throws IOException {
        super((byte) 5);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f8741b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    public m(o oVar) {
        super((byte) 5);
        this.f8741b = oVar.getMessageId();
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return c();
    }
}
