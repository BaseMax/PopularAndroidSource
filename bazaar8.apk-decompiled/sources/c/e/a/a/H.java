package c.e.a.a;

import c.e.a.a.j.v;
import c.e.a.a.o.I;

/* compiled from: MediaPeriodInfo */
public final class H {

    /* renamed from: a  reason: collision with root package name */
    public final v.a f7268a;

    /* renamed from: b  reason: collision with root package name */
    public final long f7269b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7270c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7271d;

    /* renamed from: e  reason: collision with root package name */
    public final long f7272e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f7273f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f7274g;

    public H(v.a aVar, long j2, long j3, long j4, long j5, boolean z, boolean z2) {
        this.f7268a = aVar;
        this.f7269b = j2;
        this.f7270c = j3;
        this.f7271d = j4;
        this.f7272e = j5;
        this.f7273f = z;
        this.f7274g = z2;
    }

    public H a(long j2) {
        if (j2 == this.f7270c) {
            return this;
        }
        H h2 = new H(this.f7268a, this.f7269b, j2, this.f7271d, this.f7272e, this.f7273f, this.f7274g);
        return h2;
    }

    public H b(long j2) {
        if (j2 == this.f7269b) {
            return this;
        }
        H h2 = new H(this.f7268a, j2, this.f7270c, this.f7271d, this.f7272e, this.f7273f, this.f7274g);
        return h2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || H.class != obj.getClass()) {
            return false;
        }
        H h2 = (H) obj;
        if (!(this.f7269b == h2.f7269b && this.f7270c == h2.f7270c && this.f7271d == h2.f7271d && this.f7272e == h2.f7272e && this.f7273f == h2.f7273f && this.f7274g == h2.f7274g && I.a((Object) this.f7268a, (Object) h2.f7268a))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((527 + this.f7268a.hashCode()) * 31) + ((int) this.f7269b)) * 31) + ((int) this.f7270c)) * 31) + ((int) this.f7271d)) * 31) + ((int) this.f7272e)) * 31) + (this.f7273f ? 1 : 0)) * 31) + (this.f7274g ? 1 : 0);
    }
}
