package c.e.a.a;

import c.e.a.a.o.C0737e;

/* compiled from: SeekParameters */
public final class V {

    /* renamed from: a  reason: collision with root package name */
    public static final V f7318a = new V(0, 0);

    /* renamed from: b  reason: collision with root package name */
    public static final V f7319b = new V(Long.MAX_VALUE, Long.MAX_VALUE);

    /* renamed from: c  reason: collision with root package name */
    public static final V f7320c = new V(Long.MAX_VALUE, 0);

    /* renamed from: d  reason: collision with root package name */
    public static final V f7321d = new V(0, Long.MAX_VALUE);

    /* renamed from: e  reason: collision with root package name */
    public static final V f7322e = f7318a;

    /* renamed from: f  reason: collision with root package name */
    public final long f7323f;

    /* renamed from: g  reason: collision with root package name */
    public final long f7324g;

    public V(long j2, long j3) {
        boolean z = true;
        C0737e.a(j2 >= 0);
        C0737e.a(j3 < 0 ? false : z);
        this.f7323f = j2;
        this.f7324g = j3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || V.class != obj.getClass()) {
            return false;
        }
        V v = (V) obj;
        if (!(this.f7323f == v.f7323f && this.f7324g == v.f7324g)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f7323f) * 31) + ((int) this.f7324g);
    }
}
