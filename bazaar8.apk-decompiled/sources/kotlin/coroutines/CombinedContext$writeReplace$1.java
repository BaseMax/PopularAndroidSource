package kotlin.coroutines;

import h.c.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: CoroutineContextImpl.kt */
final class CombinedContext$writeReplace$1 extends Lambda implements c<h, e.b, h> {
    public final /* synthetic */ e[] $elements;
    public final /* synthetic */ Ref$IntRef $index;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CombinedContext$writeReplace$1(e[] eVarArr, Ref$IntRef ref$IntRef) {
        super(2);
        this.$elements = eVarArr;
        this.$index = ref$IntRef;
    }

    public final void a(h hVar, e.b bVar) {
        j.b(hVar, "<anonymous parameter 0>");
        j.b(bVar, "element");
        e[] eVarArr = this.$elements;
        Ref$IntRef ref$IntRef = this.$index;
        int i2 = ref$IntRef.element;
        ref$IntRef.element = i2 + 1;
        eVarArr[i2] = bVar;
    }

    public /* bridge */ /* synthetic */ Object b(Object obj, Object obj2) {
        a((h) obj, (e.b) obj2);
        return h.f14579a;
    }
}
