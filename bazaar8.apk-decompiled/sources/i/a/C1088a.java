package i.a;

import h.c.b;
import h.c.e;
import h.f.a.c;
import h.f.b.j;
import kotlinx.coroutines.CoroutineStart;

/* renamed from: i.a.a  reason: case insensitive filesystem */
/* compiled from: AbstractCoroutine.kt */
public abstract class C1088a<T> extends xa implements C1125ra, b<T>, H {

    /* renamed from: b  reason: collision with root package name */
    public final e f14668b = this.f14669c.plus(this);

    /* renamed from: c  reason: collision with root package name */
    public final e f14669c;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1088a(e eVar, boolean z) {
        super(z);
        j.b(eVar, "parentContext");
        this.f14669c = eVar;
    }

    public e a() {
        return this.f14668b;
    }

    public void a(Throwable th, boolean z) {
        j.b(th, "cause");
    }

    public final e b() {
        return this.f14668b;
    }

    public final void g(Throwable th) {
        j.b(th, "exception");
        E.a(this.f14668b, th);
    }

    public final void h(Object obj) {
        if (obj instanceof C1129v) {
            C1129v vVar = (C1129v) obj;
            a(vVar.f14867b, vVar.a());
            return;
        }
        k(obj);
    }

    public String k() {
        String a2 = B.a(this.f14668b);
        if (a2 == null) {
            return super.k();
        }
        return '\"' + a2 + "\":" + super.k();
    }

    public void k(T t) {
    }

    public final void l() {
        p();
    }

    public int n() {
        return 0;
    }

    public final void o() {
        a((C1125ra) this.f14669c.get(C1125ra.f14859c));
    }

    public void p() {
    }

    public boolean s() {
        return super.s();
    }

    public final <R> void a(CoroutineStart coroutineStart, R r, c<? super R, ? super b<? super T>, ? extends Object> cVar) {
        j.b(coroutineStart, "start");
        j.b(cVar, "block");
        o();
        coroutineStart.a(cVar, r, this);
    }

    public final void b(Object obj) {
        b(C1130w.a(obj), n());
    }
}
