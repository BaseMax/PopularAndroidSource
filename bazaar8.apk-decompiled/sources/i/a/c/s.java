package i.a.c;

import h.c.b;
import h.c.b.a.c;
import h.c.e;
import h.f.b.j;
import i.a.C1088a;
import i.a.C1129v;
import i.a.Ja;

/* compiled from: Scopes.kt */
public class s<T> extends C1088a<T> implements c {

    /* renamed from: d  reason: collision with root package name */
    public final b<T> f14779d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public s(e eVar, b<? super T> bVar) {
        super(eVar, true);
        j.b(eVar, "context");
        j.b(bVar, "uCont");
        this.f14779d = bVar;
    }

    public void a(Object obj, int i2) {
        if (obj instanceof C1129v) {
            Ja.a(this.f14779d, i2 == 4 ? ((C1129v) obj).f14867b : u.a(((C1129v) obj).f14867b, (b<?>) this.f14779d), i2);
        } else {
            Ja.b(this.f14779d, obj, i2);
        }
    }

    public final c c() {
        return (c) this.f14779d;
    }

    public final StackTraceElement d() {
        return null;
    }

    public final boolean j() {
        return true;
    }

    public int n() {
        return 2;
    }
}
