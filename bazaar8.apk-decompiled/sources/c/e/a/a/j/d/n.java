package c.e.a.a.j.d;

import c.e.a.a.E;
import c.e.a.a.c.f;
import c.e.a.a.j.C;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.source.hls.SampleQueueMappingException;

/* compiled from: HlsSampleStream */
public final class n implements C {

    /* renamed from: a  reason: collision with root package name */
    public final int f8835a;

    /* renamed from: b  reason: collision with root package name */
    public final o f8836b;

    /* renamed from: c  reason: collision with root package name */
    public int f8837c = -1;

    public n(o oVar, int i2) {
        this.f8836b = oVar;
        this.f8835a = i2;
    }

    public void a() {
        if (this.f8837c != -2) {
            this.f8836b.n();
            return;
        }
        throw new SampleQueueMappingException(this.f8836b.f().a(this.f8835a).a(0).f12514i);
    }

    public void b() {
        C0737e.a(this.f8837c == -1);
        this.f8837c = this.f8836b.a(this.f8835a);
    }

    public boolean c() {
        return this.f8837c == -3 || (d() && this.f8836b.c(this.f8837c));
    }

    public int d(long j2) {
        if (d()) {
            return this.f8836b.a(this.f8837c, j2);
        }
        return 0;
    }

    public void e() {
        if (this.f8837c != -1) {
            this.f8836b.d(this.f8835a);
            this.f8837c = -1;
        }
    }

    public final boolean d() {
        int i2 = this.f8837c;
        return (i2 == -1 || i2 == -3 || i2 == -2) ? false : true;
    }

    public int a(E e2, f fVar, boolean z) {
        int i2 = -3;
        if (this.f8837c == -3) {
            fVar.b(4);
            return -4;
        }
        if (d()) {
            i2 = this.f8836b.a(this.f8837c, e2, fVar, z);
        }
        return i2;
    }
}
