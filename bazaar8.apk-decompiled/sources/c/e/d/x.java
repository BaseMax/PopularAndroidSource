package c.e.d;

import c.e.d.b.a.C1010d;
import c.e.d.b.a.C1012f;
import c.e.d.d.b;
import c.e.d.d.c;
import com.google.gson.JsonIOException;
import java.io.IOException;

/* compiled from: TypeAdapter */
public abstract class x<T> {
    public final x<T> a() {
        return new w(this);
    }

    public abstract T a(b bVar);

    public abstract void a(c cVar, T t);

    public final p a(T t) {
        try {
            C1012f fVar = new C1012f();
            a(fVar, t);
            return fVar.F();
        } catch (IOException e2) {
            throw new JsonIOException((Throwable) e2);
        }
    }

    public final T a(p pVar) {
        try {
            return a((b) new C1010d(pVar));
        } catch (IOException e2) {
            throw new JsonIOException((Throwable) e2);
        }
    }
}
