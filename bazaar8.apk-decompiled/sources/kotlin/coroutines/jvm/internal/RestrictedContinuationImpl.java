package kotlin.coroutines.jvm.internal;

import h.c.b;
import h.c.e;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: ContinuationImpl.kt */
public abstract class RestrictedContinuationImpl extends BaseContinuationImpl {
    public RestrictedContinuationImpl(b<Object> bVar) {
        super(bVar);
        if (bVar != null) {
            if (!(bVar.b() == EmptyCoroutineContext.f15784a)) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
            }
        }
    }

    public e b() {
        return EmptyCoroutineContext.f15784a;
    }
}
