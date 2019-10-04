package org.eclipse.paho.a.a.a.a;

import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class e extends u {
    public static final String KEY = "Disc";

    /* access modifiers changed from: protected */
    public final byte a() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return new byte[0];
    }

    public final String getKey() {
        return KEY;
    }

    public final boolean isMessageIdRequired() {
        return false;
    }

    public e() {
        super(u.MESSAGE_TYPE_DISCONNECT);
    }

    public e(byte b2, byte[] bArr) throws IOException {
        super(u.MESSAGE_TYPE_DISCONNECT);
    }
}
