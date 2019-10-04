package kotlin.coroutines.jvm.internal;

import h.c.b;
import h.c.b.a.c;
import h.c.b.a.f;
import h.e;
import h.f.b.j;
import h.h;
import java.io.Serializable;
import kotlin.Result;

/* compiled from: ContinuationImpl.kt */
public abstract class BaseContinuationImpl implements b<Object>, c, Serializable {
    public final b<Object> completion;

    public BaseContinuationImpl(b<Object> bVar) {
        this.completion = bVar;
    }

    public b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public final void b(Object obj) {
        Object obj2 = obj;
        BaseContinuationImpl baseContinuationImpl = this;
        while (true) {
            f.b(baseContinuationImpl);
            b bVar = baseContinuationImpl.completion;
            if (bVar != null) {
                try {
                    obj2 = baseContinuationImpl.d(obj2);
                    if (obj2 != h.c.a.b.a()) {
                        Result.a aVar = Result.f15776a;
                        Result.a(obj2);
                        baseContinuationImpl.f();
                        if (bVar instanceof BaseContinuationImpl) {
                            baseContinuationImpl = (BaseContinuationImpl) bVar;
                        } else {
                            bVar.b(obj2);
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    Result.a aVar2 = Result.f15776a;
                    obj2 = e.a(th);
                    Result.a(obj2);
                }
            } else {
                j.a();
                throw null;
            }
        }
    }

    public c c() {
        b<Object> bVar = this.completion;
        if (!(bVar instanceof c)) {
            bVar = null;
        }
        return (c) bVar;
    }

    public abstract Object d(Object obj);

    public StackTraceElement d() {
        return h.c.b.a.e.c(this);
    }

    public final b<Object> e() {
        return this.completion;
    }

    public void f() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object d2 = d();
        if (d2 == null) {
            d2 = getClass().getName();
        }
        sb.append(d2);
        return sb.toString();
    }
}
