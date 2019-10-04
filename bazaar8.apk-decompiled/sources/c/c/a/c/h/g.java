package c.c.a.c.h;

import b.r.k;
import b.r.t;
import b.r.u;
import c.c.a.c.c.a;
import h.f.b.j;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: SingleLiveEvent.kt */
public final class g<T> extends t<T> {

    /* renamed from: k  reason: collision with root package name */
    public final AtomicBoolean f4734k = new AtomicBoolean(false);

    public void b(T t) {
        this.f4734k.set(true);
        super.b(t);
    }

    public void a(k kVar, u<? super T> uVar) {
        j.b(kVar, "owner");
        j.b(uVar, "observer");
        if (c()) {
            a.f4699b.b(new Throwable("Multiple observers registered but only one will be notified of changes."));
        }
        super.a(kVar, new f(this, uVar));
    }
}
