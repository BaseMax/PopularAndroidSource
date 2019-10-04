package kotlin.coroutines.jvm.internal;

import h.c.b;
import h.f.b.h;
import h.f.b.j;
import h.f.b.k;

/* compiled from: ContinuationImpl.kt */
public abstract class SuspendLambda extends ContinuationImpl implements h<Object>, h.c.b.a.h {
    public final int arity;

    public SuspendLambda(int i2, b<Object> bVar) {
        super(bVar);
        this.arity = i2;
    }

    public int getArity() {
        return this.arity;
    }

    public String toString() {
        if (e() != null) {
            return super.toString();
        }
        String a2 = k.a((h) this);
        j.a((Object) a2, "Reflection.renderLambdaToString(this)");
        return a2;
    }
}
