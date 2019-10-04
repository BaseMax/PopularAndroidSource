package kotlin.coroutines;

import h.c.e;
import h.f.a.c;
import h.f.b.f;
import h.f.b.j;
import h.h;
import java.io.Serializable;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: CoroutineContextImpl.kt */
public final class CombinedContext implements e, Serializable {
    public final e.b element;
    public final e left;

    /* compiled from: CoroutineContextImpl.kt */
    private static final class Serialized implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public static final a f15781a = new a(null);
        public static final long serialVersionUID = 0;
        public final e[] elements;

        /* compiled from: CoroutineContextImpl.kt */
        public static final class a {
            public a() {
            }

            public /* synthetic */ a(f fVar) {
                this();
            }
        }

        public Serialized(e[] eVarArr) {
            j.b(eVarArr, "elements");
            this.elements = eVarArr;
        }

        private final Object readResolve() {
            e[] eVarArr = this.elements;
            e eVar = EmptyCoroutineContext.f15784a;
            for (e plus : eVarArr) {
                eVar = eVar.plus(plus);
            }
            return eVar;
        }
    }

    public CombinedContext(e eVar, e.b bVar) {
        j.b(eVar, "left");
        j.b(bVar, "element");
        this.left = eVar;
        this.element = bVar;
    }

    private final Object writeReplace() {
        int a2 = a();
        e[] eVarArr = new e[a2];
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        boolean z = false;
        ref$IntRef.element = 0;
        fold(h.f14579a, new CombinedContext$writeReplace$1(eVarArr, ref$IntRef));
        if (ref$IntRef.element == a2) {
            z = true;
        }
        if (z) {
            return new Serialized(eVarArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    public final int a() {
        int i2 = 2;
        CombinedContext combinedContext = this;
        while (true) {
            e eVar = combinedContext.left;
            if (!(eVar instanceof CombinedContext)) {
                eVar = null;
            }
            combinedContext = (CombinedContext) eVar;
            if (combinedContext == null) {
                return i2;
            }
            i2++;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0016, code lost:
        if (r3.a(r2) != false) goto L_0x001b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001b
            boolean r0 = r3 instanceof kotlin.coroutines.CombinedContext
            if (r0 == 0) goto L_0x0019
            kotlin.coroutines.CombinedContext r3 = (kotlin.coroutines.CombinedContext) r3
            int r0 = r3.a()
            int r1 = r2.a()
            if (r0 != r1) goto L_0x0019
            boolean r3 = r3.a((kotlin.coroutines.CombinedContext) r2)
            if (r3 == 0) goto L_0x0019
            goto L_0x001b
        L_0x0019:
            r3 = 0
            goto L_0x001c
        L_0x001b:
            r3 = 1
        L_0x001c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.CombinedContext.equals(java.lang.Object):boolean");
    }

    public <R> R fold(R r, c<? super R, ? super e.b, ? extends R> cVar) {
        j.b(cVar, "operation");
        return cVar.b(this.left.fold(r, cVar), this.element);
    }

    public <E extends e.b> E get(e.c<E> cVar) {
        j.b(cVar, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e2 = combinedContext.element.get(cVar);
            if (e2 != null) {
                return e2;
            }
            e eVar = combinedContext.left;
            if (!(eVar instanceof CombinedContext)) {
                return eVar.get(cVar);
            }
            combinedContext = (CombinedContext) eVar;
        }
    }

    public int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    public e minusKey(e.c<?> cVar) {
        e eVar;
        j.b(cVar, "key");
        if (this.element.get(cVar) != null) {
            return this.left;
        }
        e minusKey = this.left.minusKey(cVar);
        if (minusKey == this.left) {
            eVar = this;
        } else if (minusKey == EmptyCoroutineContext.f15784a) {
            eVar = this.element;
        } else {
            eVar = new CombinedContext(minusKey, this.element);
        }
        return eVar;
    }

    public e plus(e eVar) {
        j.b(eVar, "context");
        return e.a.a(this, eVar);
    }

    public String toString() {
        return "[" + ((String) fold("", CombinedContext$toString$1.f15782a)) + "]";
    }

    public final boolean a(e.b bVar) {
        return j.a((Object) get(bVar.getKey()), (Object) bVar);
    }

    public final boolean a(CombinedContext combinedContext) {
        while (a(combinedContext.element)) {
            e eVar = combinedContext.left;
            if (eVar instanceof CombinedContext) {
                combinedContext = (CombinedContext) eVar;
            } else if (eVar != null) {
                return a((e.b) eVar);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
            }
        }
        return false;
    }
}
