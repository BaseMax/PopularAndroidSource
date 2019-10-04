package com.google.zxing.c.a.a.a;

import io.fabric.sdk.android.services.common.a;

final class b extends f {
    /* access modifiers changed from: protected */
    public final int a(int i) {
        return i < 10000 ? i : i - a.DEFAULT_TIMEOUT;
    }

    b(com.google.zxing.common.a aVar) {
        super(aVar);
    }

    /* access modifiers changed from: protected */
    public final void a(StringBuilder sb, int i) {
        if (i < 10000) {
            sb.append("(3202)");
        } else {
            sb.append("(3203)");
        }
    }
}
