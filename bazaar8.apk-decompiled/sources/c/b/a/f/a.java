package c.b.a.f;

import java.util.ArrayList;
import java.util.List;

/* compiled from: EncoderRegistry */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final List<C0062a<?>> f4334a = new ArrayList();

    /* renamed from: c.b.a.f.a$a  reason: collision with other inner class name */
    /* compiled from: EncoderRegistry */
    private static final class C0062a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<T> f4335a;

        /* renamed from: b  reason: collision with root package name */
        public final c.b.a.c.a<T> f4336b;

        public C0062a(Class<T> cls, c.b.a.c.a<T> aVar) {
            this.f4335a = cls;
            this.f4336b = aVar;
        }

        public boolean a(Class<?> cls) {
            return this.f4335a.isAssignableFrom(cls);
        }
    }

    public synchronized <T> c.b.a.c.a<T> a(Class<T> cls) {
        for (C0062a next : this.f4334a) {
            if (next.a(cls)) {
                return next.f4336b;
            }
        }
        return null;
    }

    public synchronized <T> void a(Class<T> cls, c.b.a.c.a<T> aVar) {
        this.f4334a.add(new C0062a(cls, aVar));
    }
}
