package com.google.zxing.c.a;

import com.google.zxing.m;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f4271a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f4272b;
    private final m[] c;

    public c(int i, int[] iArr, int i2, int i3, int i4) {
        this.f4271a = i;
        this.f4272b = iArr;
        float f = (float) i4;
        this.c = new m[]{new m((float) i2, f), new m((float) i3, f)};
    }

    public final int getValue() {
        return this.f4271a;
    }

    public final int[] getStartEnd() {
        return this.f4272b;
    }

    public final m[] getResultPoints() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof c) && this.f4271a == ((c) obj).f4271a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f4271a;
    }
}
