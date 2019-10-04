package c.b.a.c.c;

import b.i.j.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ModelLoaderRegistry */
public class w {

    /* renamed from: a  reason: collision with root package name */
    public final y f4122a;

    /* renamed from: b  reason: collision with root package name */
    public final a f4123b;

    /* compiled from: ModelLoaderRegistry */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Map<Class<?>, C0059a<?>> f4124a = new HashMap();

        /* renamed from: c.b.a.c.c.w$a$a  reason: collision with other inner class name */
        /* compiled from: ModelLoaderRegistry */
        private static class C0059a<Model> {

            /* renamed from: a  reason: collision with root package name */
            public final List<u<Model, ?>> f4125a;

            public C0059a(List<u<Model, ?>> list) {
                this.f4125a = list;
            }
        }

        public void a() {
            this.f4124a.clear();
        }

        public <Model> void a(Class<Model> cls, List<u<Model, ?>> list) {
            if (this.f4124a.put(cls, new C0059a(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }

        public <Model> List<u<Model, ?>> a(Class<Model> cls) {
            C0059a aVar = this.f4124a.get(cls);
            if (aVar == null) {
                return null;
            }
            return aVar.f4125a;
        }
    }

    public w(e<List<Throwable>> eVar) {
        this(new y(eVar));
    }

    public synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, v<? extends Model, ? extends Data> vVar) {
        this.f4122a.a(cls, cls2, vVar);
        this.f4123b.a();
    }

    public <A> List<u<A, ?>> b(A a2) {
        List b2 = b(a(a2));
        int size = b2.size();
        List<u<A, ?>> emptyList = Collections.emptyList();
        boolean z = true;
        for (int i2 = 0; i2 < size; i2++) {
            u uVar = (u) b2.get(i2);
            if (uVar.a(a2)) {
                if (z) {
                    emptyList = new ArrayList<>(size - i2);
                    z = false;
                }
                emptyList.add(uVar);
            }
        }
        return emptyList;
    }

    public w(y yVar) {
        this.f4123b = new a();
        this.f4122a = yVar;
    }

    public synchronized List<Class<?>> a(Class<?> cls) {
        return this.f4122a.b(cls);
    }

    public static <A> Class<A> a(A a2) {
        return a2.getClass();
    }

    public final synchronized <A> List<u<A, ?>> b(Class<A> cls) {
        List<u<A, ?>> a2;
        a2 = this.f4123b.a(cls);
        if (a2 == null) {
            a2 = Collections.unmodifiableList(this.f4122a.a(cls));
            this.f4123b.a(cls, a2);
        }
        return a2;
    }
}
