package c.e.a.a.j.c;

import c.e.a.a.e.b;

/* compiled from: DashWrappingSegmentIndex */
public final class h implements g {

    /* renamed from: a  reason: collision with root package name */
    public final b f8651a;

    /* renamed from: b  reason: collision with root package name */
    public final long f8652b;

    public h(b bVar, long j2) {
        this.f8651a = bVar;
        this.f8652b = j2;
    }

    public long a(long j2) {
        return this.f8651a.f7629e[(int) j2] - this.f8652b;
    }

    public boolean a() {
        return true;
    }

    public long b() {
        return 0;
    }

    public c.e.a.a.j.c.a.h b(long j2) {
        b bVar = this.f8651a;
        int i2 = (int) j2;
        c.e.a.a.j.c.a.h hVar = new c.e.a.a.j.c.a.h(null, bVar.f7627c[i2], (long) bVar.f7626b[i2]);
        return hVar;
    }

    public int c(long j2) {
        return this.f8651a.f7625a;
    }

    public long a(long j2, long j3) {
        return this.f8651a.f7628d[(int) j2];
    }

    public long b(long j2, long j3) {
        return (long) this.f8651a.c(j2 + this.f8652b);
    }
}
