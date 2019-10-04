package h.c.a;

import h.c.b;
import h.c.b.a.f;
import h.c.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import kotlin.TypeCastException;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: IntrinsicsJvm.kt */
public class a {
    public static final <R, T> b<h> a(c<? super R, ? super b<? super T>, ? extends Object> cVar, R r, b<? super T> bVar) {
        j.b(cVar, "$this$createCoroutineUnintercepted");
        j.b(bVar, "completion");
        f.a(bVar);
        if (cVar instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) cVar).a(r, bVar);
        }
        e b2 = bVar.b();
        if (b2 == EmptyCoroutineContext.f15784a) {
            if (bVar != null) {
                return new IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3(bVar, bVar, cVar, r);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        } else if (bVar != null) {
            IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4 intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4 = new IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4(bVar, b2, bVar, b2, cVar, r);
            return intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;
        } else {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }
    }

    public static final <T> b<T> a(b<? super T> bVar) {
        j.b(bVar, "$this$intercepted");
        ContinuationImpl continuationImpl = (ContinuationImpl) (!(bVar instanceof ContinuationImpl) ? null : bVar);
        if (continuationImpl == null) {
            return bVar;
        }
        b<Object> g2 = continuationImpl.g();
        return g2 != null ? g2 : bVar;
    }
}
