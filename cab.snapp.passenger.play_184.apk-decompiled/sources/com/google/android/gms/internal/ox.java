package com.google.android.gms.internal;

final class ox extends pb {
    private final int c;
    private final int d;

    ox(byte[] bArr, int i, int i2) {
        super(bArr);
        b(i, i + i2, bArr.length);
        this.c = i;
        this.d = i2;
    }

    /* access modifiers changed from: protected */
    public final void a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f3434b, c() + i, bArr, i2, i3);
    }

    /* access modifiers changed from: protected */
    public final int c() {
        return this.c;
    }

    public final int size() {
        return this.d;
    }

    public final byte zzkn(int i) {
        a(i, size());
        return this.f3434b[this.c + i];
    }
}
