package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class s extends b {
    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return new byte[0];
    }

    public s(byte b2, byte[] bArr) throws IOException {
        super(u.MESSAGE_TYPE_UNSUBACK);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f8741b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }
}
