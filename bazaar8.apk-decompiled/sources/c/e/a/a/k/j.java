package c.e.a.a.k;

import c.e.a.a.c.g;
import java.util.List;

/* compiled from: SubtitleOutputBuffer */
public abstract class j extends g implements e {

    /* renamed from: d  reason: collision with root package name */
    public e f9288d;

    /* renamed from: e  reason: collision with root package name */
    public long f9289e;

    public void a(long j2, e eVar, long j3) {
        this.f7548b = j2;
        this.f9288d = eVar;
        if (j3 == Long.MAX_VALUE) {
            j3 = this.f7548b;
        }
        this.f9289e = j3;
    }

    public List<b> b(long j2) {
        return this.f9288d.b(j2 - this.f9289e);
    }

    public int f() {
        return this.f9288d.f();
    }

    public void g() {
        super.g();
        this.f9288d = null;
    }

    public long a(int i2) {
        return this.f9288d.a(i2) + this.f9289e;
    }

    public int a(long j2) {
        return this.f9288d.a(j2 - this.f9289e);
    }
}
