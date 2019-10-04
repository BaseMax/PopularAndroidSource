package kotlin;

import h.c;
import h.f.a.a;
import h.f.b.f;
import h.f.b.j;
import h.g;
import java.io.Serializable;

/* compiled from: LazyJVM.kt */
public final class SynchronizedLazyImpl<T> implements c<T>, Serializable {
    public volatile Object _value;
    public a<? extends T> initializer;
    public final Object lock;

    public SynchronizedLazyImpl(a<? extends T> aVar, Object obj) {
        j.b(aVar, "initializer");
        this.initializer = aVar;
        this._value = g.f14576a;
        this.lock = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    public boolean a() {
        return this._value != g.f14576a;
    }

    public T getValue() {
        T t;
        T t2 = this._value;
        if (t2 != g.f14576a) {
            return t2;
        }
        synchronized (this.lock) {
            t = this._value;
            if (t == g.f14576a) {
                a aVar = this.initializer;
                if (aVar != null) {
                    t = aVar.invoke();
                    this._value = t;
                    this.initializer = null;
                } else {
                    j.a();
                    throw null;
                }
            }
        }
        return t;
    }

    public String toString() {
        return a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SynchronizedLazyImpl(a aVar, Object obj, int i2, f fVar) {
        this(aVar, (i2 & 2) != 0 ? null : obj);
    }
}
