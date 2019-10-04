package com.bumptech.glide.e.a;

import com.bumptech.glide.g.k;

@Deprecated
public abstract class g<Z> extends a<Z> {

    /* renamed from: a  reason: collision with root package name */
    private final int f2024a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2025b;

    public void removeCallback(h hVar) {
    }

    public g() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public g(int i, int i2) {
        this.f2024a = i;
        this.f2025b = i2;
    }

    public final void getSize(h hVar) {
        if (k.isValidDimensions(this.f2024a, this.f2025b)) {
            hVar.onSizeReady(this.f2024a, this.f2025b);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f2024a + " and height: " + this.f2025b + ", either provide dimensions in the constructor or call override()");
    }
}
