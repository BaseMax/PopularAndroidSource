package com.facebook.a.a.a;

import java.security.SecureRandom;

public final class b extends SecureRandom {
    public final synchronized void nextBytes(byte[] bArr) {
        c.tryApplyFixes();
        super.nextBytes(bArr);
    }
}
