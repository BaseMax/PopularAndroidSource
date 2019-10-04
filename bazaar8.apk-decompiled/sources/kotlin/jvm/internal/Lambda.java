package kotlin.jvm.internal;

import h.f.b.h;
import h.f.b.j;
import h.f.b.k;
import java.io.Serializable;

/* compiled from: Lambda.kt */
public abstract class Lambda<R> implements h<R>, Serializable {
    public final int arity;

    public Lambda(int i2) {
        this.arity = i2;
    }

    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String a2 = k.a(this);
        j.a((Object) a2, "Reflection.renderLambdaToString(this)");
        return a2;
    }
}
