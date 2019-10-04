package kotlin.coroutines.jvm.internal;

import h.c.b;
import h.c.c;
import h.c.e;
import h.f.b.j;

/* compiled from: ContinuationImpl.kt */
public abstract class ContinuationImpl extends BaseContinuationImpl {
    public final e _context;

    /* renamed from: a  reason: collision with root package name */
    public transient b<Object> f15786a;

    public ContinuationImpl(b<Object> bVar, e eVar) {
        super(bVar);
        this._context = eVar;
    }

    public e b() {
        e eVar = this._context;
        if (eVar != null) {
            return eVar;
        }
        j.a();
        throw null;
    }

    public void f() {
        b<Object> bVar = this.f15786a;
        if (!(bVar == null || bVar == this)) {
            e.b bVar2 = b().get(c.f14536c);
            if (bVar2 != null) {
                ((c) bVar2).b(bVar);
            } else {
                j.a();
                throw null;
            }
        }
        this.f15786a = h.c.b.a.b.f14529a;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r0 != null) goto L_0x001b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final h.c.b<java.lang.Object> g() {
        /*
            r2 = this;
            h.c.b<java.lang.Object> r0 = r2.f15786a
            if (r0 == 0) goto L_0x0005
            goto L_0x001d
        L_0x0005:
            h.c.e r0 = r2.b()
            h.c.c$b r1 = h.c.c.f14536c
            h.c.e$b r0 = r0.get(r1)
            h.c.c r0 = (h.c.c) r0
            if (r0 == 0) goto L_0x001a
            h.c.b r0 = r0.c(r2)
            if (r0 == 0) goto L_0x001a
            goto L_0x001b
        L_0x001a:
            r0 = r2
        L_0x001b:
            r2.f15786a = r0
        L_0x001d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.jvm.internal.ContinuationImpl.g():h.c.b");
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public ContinuationImpl(b<Object> bVar) {
        this(bVar, bVar != null ? bVar.b() : null);
    }
}
