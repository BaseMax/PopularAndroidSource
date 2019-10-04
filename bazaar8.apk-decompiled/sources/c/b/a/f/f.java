package c.b.a.f;

import c.b.a.c.h;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResourceEncoderRegistry */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public final List<a<?>> f4348a = new ArrayList();

    /* compiled from: ResourceEncoderRegistry */
    private static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<T> f4349a;

        /* renamed from: b  reason: collision with root package name */
        public final h<T> f4350b;

        public a(Class<T> cls, h<T> hVar) {
            this.f4349a = cls;
            this.f4350b = hVar;
        }

        public boolean a(Class<?> cls) {
            return this.f4349a.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void a(Class<Z> cls, h<Z> hVar) {
        this.f4348a.add(new a(cls, hVar));
    }

    public synchronized <Z> h<Z> a(Class<Z> cls) {
        int size = this.f4348a.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = this.f4348a.get(i2);
            if (aVar.a(cls)) {
                return aVar.f4350b;
            }
        }
        return null;
    }
}
