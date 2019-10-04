package com.google.android.gms.internal;

import java.util.List;

public final class rt extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f3504a = null;

    public rt(qr qrVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final py zzczt() {
        return new py(getMessage());
    }
}
