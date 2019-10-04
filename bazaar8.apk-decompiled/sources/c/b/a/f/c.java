package c.b.a.f;

import b.f.C0243b;
import c.b.a.c.b.A;
import c.b.a.c.b.j;
import c.b.a.c.d.f.g;
import c.b.a.i.h;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: LoadPathCache */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final A<?, ?, ?> f4338a;

    /* renamed from: b  reason: collision with root package name */
    public final C0243b<h, A<?, ?, ?>> f4339b = new C0243b<>();

    /* renamed from: c  reason: collision with root package name */
    public final AtomicReference<h> f4340c = new AtomicReference<>();

    static {
        j jVar = new j(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null);
        A a2 = new A(Object.class, Object.class, Object.class, Collections.singletonList(jVar), null);
        f4338a = a2;
    }

    public boolean a(A<?, ?, ?> a2) {
        return f4338a.equals(a2);
    }

    public final h b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        h andSet = this.f4340c.getAndSet(null);
        if (andSet == null) {
            andSet = new h();
        }
        andSet.a(cls, cls2, cls3);
        return andSet;
    }

    public <Data, TResource, Transcode> A<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        A<Data, TResource, Transcode> a2;
        h b2 = b(cls, cls2, cls3);
        synchronized (this.f4339b) {
            a2 = this.f4339b.get(b2);
        }
        this.f4340c.set(b2);
        return a2;
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3, A<?, ?, ?> a2) {
        synchronized (this.f4339b) {
            C0243b<h, A<?, ?, ?>> bVar = this.f4339b;
            h hVar = new h(cls, cls2, cls3);
            if (a2 == null) {
                a2 = f4338a;
            }
            bVar.put(hVar, a2);
        }
    }
}
