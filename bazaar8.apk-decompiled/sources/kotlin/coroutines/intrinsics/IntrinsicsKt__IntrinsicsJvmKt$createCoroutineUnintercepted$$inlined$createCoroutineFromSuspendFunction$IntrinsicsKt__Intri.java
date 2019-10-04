package kotlin.coroutines.intrinsics;

import h.c.b;
import h.e;
import h.f.a.c;
import h.f.b.o;
import kotlin.TypeCastException;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;

/* compiled from: IntrinsicsJvm.kt */
public final class IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3 extends RestrictedContinuationImpl {
    public final /* synthetic */ b $completion;
    public final /* synthetic */ Object $receiver$inlined;
    public final /* synthetic */ c $this_createCoroutineUnintercepted$inlined;
    public int label;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3(b bVar, b bVar2, c cVar, Object obj) {
        super(bVar2);
        this.$completion = bVar;
        this.$this_createCoroutineUnintercepted$inlined = cVar;
        this.$receiver$inlined = obj;
    }

    public Object d(Object obj) {
        int i2 = this.label;
        if (i2 == 0) {
            this.label = 1;
            e.a(obj);
            c cVar = this.$this_createCoroutineUnintercepted$inlined;
            if (cVar != null) {
                o.a((Object) cVar, 2);
                return cVar.b(this.$receiver$inlined, this);
            }
            throw new TypeCastException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } else if (i2 == 1) {
            this.label = 2;
            e.a(obj);
            return obj;
        } else {
            throw new IllegalStateException("This coroutine had already completed");
        }
    }
}
w IllegalStateException("This coroutine had already completed");
        }
    }
}
