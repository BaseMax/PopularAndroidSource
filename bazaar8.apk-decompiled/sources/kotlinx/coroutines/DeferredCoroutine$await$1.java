package kotlinx.coroutines;

import h.c.b;
import h.c.b.a.d;
import i.a.O;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "kotlinx.coroutines.DeferredCoroutine", f = "Builders.common.kt", l = {99}, m = "await$suspendImpl")
/* compiled from: Builders.common.kt */
final class DeferredCoroutine$await$1 extends ContinuationImpl {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ O this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DeferredCoroutine$await$1(O o, b bVar) {
        super(bVar);
        this.this$0 = o;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return O.a(this.this$0, this);
    }
}
