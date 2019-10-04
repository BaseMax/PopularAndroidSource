package c.e.a.a;

import c.e.a.a.o.C0737e;

/* compiled from: PlaybackParameters */
public final class K {

    /* renamed from: a  reason: collision with root package name */
    public static final K f7299a = new K(1.0f);

    /* renamed from: b  reason: collision with root package name */
    public final float f7300b;

    /* renamed from: c  reason: collision with root package name */
    public final float f7301c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f7302d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7303e;

    public K(float f2) {
        this(f2, 1.0f, false);
    }

    public long a(long j2) {
        return j2 * ((long) this.f7303e);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || K.class != obj.getClass()) {
            return false;
        }
        K k2 = (K) obj;
        if (!(this.f7300b == k2.f7300b && this.f7301c == k2.f7301c && this.f7302d == k2.f7302d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + Float.floatToRawIntBits(this.f7300b)) * 31) + Float.floatToRawIntBits(this.f7301c)) * 31) + (this.f7302d ? 1 : 0);
    }

    public K(float f2, float f3, boolean z) {
        boolean z2 = true;
        C0737e.a(f2 > 0.0f);
        C0737e.a(f3 <= 0.0f ? false : z2);
        this.f7300b = f2;
        this.f7301c = f3;
        this.f7302d = z;
        this.f7303e = Math.round(f2 * 1000.0f);
    }
}
