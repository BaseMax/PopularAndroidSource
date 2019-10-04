package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: TypeAdapters */
class S extends x<AtomicBoolean> {
    public AtomicBoolean a(b bVar) {
        return new AtomicBoolean(bVar.C());
    }

    public void a(c cVar, AtomicBoolean atomicBoolean) {
        cVar.d(atomicBoolean.get());
    }
}
