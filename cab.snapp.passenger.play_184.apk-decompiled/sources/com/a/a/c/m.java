package com.a.a.c;

import io.fabric.sdk.android.services.network.f;
import java.io.InputStream;

final class m implements f {

    /* renamed from: a  reason: collision with root package name */
    private final ab f1812a;

    public final long getPinCreationTimeInMillis() {
        return -1;
    }

    public m(ab abVar) {
        this.f1812a = abVar;
    }

    public final InputStream getKeyStoreStream() {
        return this.f1812a.getKeyStoreStream();
    }

    public final String getKeyStorePassword() {
        return this.f1812a.getKeyStorePassword();
    }

    public final String[] getPins() {
        return this.f1812a.getPins();
    }
}
