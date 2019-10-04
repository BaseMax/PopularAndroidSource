package com.google.zxing.c.a;

public class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f4269a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4270b;

    public b(int i, int i2) {
        this.f4269a = i;
        this.f4270b = i2;
    }

    public final int getValue() {
        return this.f4269a;
    }

    public final int getChecksumPortion() {
        return this.f4270b;
    }

    public final String toString() {
        return this.f4269a + "(" + this.f4270b + ')';
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f4269a == bVar.f4269a && this.f4270b == bVar.f4270b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f4269a ^ this.f4270b;
    }
}
