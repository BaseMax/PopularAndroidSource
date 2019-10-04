package c.b.a.f;

import b.f.C0243b;
import c.b.a.i.h;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ModelToResourceClassCache */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReference<h> f4341a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    public final C0243b<h, List<Class<?>>> f4342b = new C0243b<>();

    public List<Class<?>> a(Class<?> cls, Class<?> cls2) {
        List<Class<?>> list;
        h andSet = this.f4341a.getAndSet(null);
        if (andSet == null) {
            andSet = new h(cls, cls2);
        } else {
            andSet.a(cls, cls2);
        }
        synchronized (this.f4342b) {
            list = this.f4342b.get(andSet);
        }
        this.f4341a.set(andSet);
        return list;
    }

    public void a(Class<?> cls, Class<?> cls2, List<Class<?>> list) {
        synchronized (this.f4342b) {
            this.f4342b.put(new h(cls, cls2), list);
        }
    }
}
