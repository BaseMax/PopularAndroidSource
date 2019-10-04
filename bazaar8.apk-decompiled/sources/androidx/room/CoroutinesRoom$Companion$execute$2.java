package androidx.room;

import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.concurrent.Callable;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "androidx.room.CoroutinesRoom$Companion$execute$2", f = "CoroutinesRoom.kt", l = {}, m = "invokeSuspend")
/* compiled from: CoroutinesRoom.kt */
final class CoroutinesRoom$Companion$execute$2 extends SuspendLambda implements c<H, b<? super R>, Object> {
    public final /* synthetic */ Callable $callable;
    public int label;
    public H p$;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CoroutinesRoom$Companion$execute$2(Callable callable, b bVar) {
        super(2, bVar);
        this.$callable = callable;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CoroutinesRoom$Companion$execute$2 coroutinesRoom$Companion$execute$2 = new CoroutinesRoom$Companion$execute$2(this.$callable, bVar);
        coroutinesRoom$Companion$execute$2.p$ = (H) obj;
        return coroutinesRoom$Companion$execute$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CoroutinesRoom$Companion$execute$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            H h2 = this.p$;
            return this.$callable.call();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
