package c.e.d;

import c.e.d.d.b;
import c.e.d.d.c;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Gson */
class h extends x<AtomicLong> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f11844a;

    public h(x xVar) {
        this.f11844a = xVar;
    }

    public void a(c cVar, AtomicLong atomicLong) {
        this.f11844a.a(cVar, Long.valueOf(atomicLong.get()));
    }

    public AtomicLong a(b bVar) {
        return new AtomicLong(((Number) this.f11844a.a(bVar)).longValue());
    }
}
