package org.eclipse.paho.a.a.a.a;

import java.io.IOException;
import org.eclipse.paho.a.a.p;

public final class i extends u {
    public static final String KEY = "Ping";

    /* access modifiers changed from: protected */
    public final byte a() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        return new byte[0];
    }

    public final String getKey() {
        return "Ping";
    }

    public final boolean isMessageIdRequired() {
        return false;
    }

    public i() {
        super(u.MESSAGE_TYPE_PINGREQ);
    }

    public i(byte b2, byte[] bArr) throws IOException {
        super(u.MESSAGE_TYPE_PINGREQ);
    }
}
