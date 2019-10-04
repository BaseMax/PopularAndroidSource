package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: TypeAdapters */
class Q extends x<AtomicInteger> {
    public AtomicInteger a(b bVar) {
        try {
            return new AtomicInteger(bVar.E());
        } catch (NumberFormatException e2) {
            throw new JsonSyntaxException((Throwable) e2);
        }
    }

    public void a(c cVar, AtomicInteger atomicInteger) {
        cVar.h((long) atomicInteger.get());
    }
}
