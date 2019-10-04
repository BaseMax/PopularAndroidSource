package com.google.android.gms.internal;

import java.util.Arrays;

final class sz {

    /* renamed from: a  reason: collision with root package name */
    final int f3529a;

    /* renamed from: b  reason: collision with root package name */
    final byte[] f3530b;

    sz(int i, byte[] bArr) {
        this.f3529a = i;
        this.f3530b = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof sz)) {
            return false;
        }
        sz szVar = (sz) obj;
        return this.f3529a == szVar.f3529a && Arrays.equals(this.f3530b, szVar.f3530b);
    }

    public final int hashCode() {
        return ((this.f3529a + 527) * 31) + Arrays.hashCode(this.f3530b);
    }
}
