package i.a;

import h.c.e;
import h.f.b.j;
import java.util.concurrent.locks.LockSupport;

/* renamed from: i.a.c  reason: case insensitive filesystem */
/* compiled from: Builders.kt */
public final class C1092c<T> extends C1088a<T> {

    /* renamed from: d  reason: collision with root package name */
    public final Thread f14736d;

    /* renamed from: e  reason: collision with root package name */
    public final C1089aa f14737e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1092c(e eVar, Thread thread, C1089aa aaVar) {
        super(eVar, true);
        j.b(eVar, "parentContext");
        j.b(thread, "blockedThread");
        this.f14736d = thread;
        this.f14737e = aaVar;
    }

    public void a(Object obj, int i2) {
        if (!j.a((Object) Thread.currentThread(), (Object) this.f14736d)) {
            LockSupport.unpark(this.f14736d);
        }
    }

    public boolean j() {
        return true;
    }

    public final T q() {
        Na a2 = Oa.a();
        if (a2 != null) {
            a2.a();
        }
        try {
            C1089aa aaVar = this.f14737e;
            T t = null;
            if (aaVar != null) {
                C1089aa.b(aaVar, false, 1, null);
            }
            while (!Thread.interrupted()) {
                C1089aa aaVar2 = this.f14737e;
                long A = aaVar2 != null ? aaVar2.A() : Long.MAX_VALUE;
                if (i()) {
                    C1089aa aaVar3 = this.f14737e;
                    if (aaVar3 != null) {
                        C1089aa.a(aaVar3, false, 1, null);
                    }
                    Na a3 = Oa.a();
                    if (a3 != null) {
                        a3.d();
                    }
                    T b2 = za.b(h());
                    if (b2 instanceof C1129v) {
                        t = b2;
                    }
                    C1129v vVar = (C1129v) t;
                    if (vVar == null) {
                        return b2;
                    }
                    throw vVar.f14867b;
                }
                Na a4 = Oa.a();
                if (a4 != null) {
                    a4.a(this, A);
                } else {
                    LockSupport.parkNanos(this, A);
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            b((Throwable) interruptedException);
            throw interruptedException;
        } catch (Throwable th) {
            Na a5 = Oa.a();
            if (a5 != null) {
                a5.d();
            }
            throw th;
        }
    }
}
