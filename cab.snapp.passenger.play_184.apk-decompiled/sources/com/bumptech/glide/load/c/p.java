package com.bumptech.glide.load.c;

import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class p {

    /* renamed from: a  reason: collision with root package name */
    private final r f2294a;

    /* renamed from: b  reason: collision with root package name */
    private final a f2295b;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Map<Class<?>, C0046a<?>> f2296a = new HashMap();

        /* renamed from: com.bumptech.glide.load.c.p$a$a  reason: collision with other inner class name */
        static class C0046a<Model> {

            /* renamed from: a  reason: collision with root package name */
            final List<n<Model, ?>> f2297a;

            public C0046a(List<n<Model, ?>> list) {
                this.f2297a = list;
            }
        }

        a() {
        }

        public final void clear() {
            this.f2296a.clear();
        }

        public final <Model> void put(Class<Model> cls, List<n<Model, ?>> list) {
            if (this.f2296a.put(cls, new C0046a(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: ".concat(String.valueOf(cls)));
            }
        }

        public final <Model> List<n<Model, ?>> get(Class<Model> cls) {
            C0046a aVar = this.f2296a.get(cls);
            if (aVar == null) {
                return null;
            }
            return aVar.f2297a;
        }
    }

    public p(Pools.Pool<List<Throwable>> pool) {
        this(new r(pool));
    }

    private p(r rVar) {
        this.f2295b = new a();
        this.f2294a = rVar;
    }

    public final synchronized <Model, Data> void append(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        this.f2294a.a(cls, cls2, oVar);
        this.f2295b.clear();
    }

    public final synchronized <Model, Data> void prepend(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        this.f2294a.b(cls, cls2, oVar);
        this.f2295b.clear();
    }

    public final synchronized <Model, Data> void remove(Class<Model> cls, Class<Data> cls2) {
        a(this.f2294a.a(cls, cls2));
        this.f2295b.clear();
    }

    public final synchronized <Model, Data> void replace(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        a(this.f2294a.c(cls, cls2, oVar));
        this.f2295b.clear();
    }

    private static <Model, Data> void a(List<o<? extends Model, ? extends Data>> list) {
        for (o<? extends Model, ? extends Data> teardown : list) {
            teardown.teardown();
        }
    }

    public final synchronized <Model, Data> n<Model, Data> build(Class<Model> cls, Class<Data> cls2) {
        return this.f2294a.build(cls, cls2);
    }

    public final synchronized List<Class<?>> getDataClasses(Class<?> cls) {
        return this.f2294a.b(cls);
    }

    private synchronized <A> List<n<A, ?>> a(Class<A> cls) {
        List<n<A, ?>> list;
        list = this.f2295b.get(cls);
        if (list == null) {
            list = Collections.unmodifiableList(this.f2294a.a(cls));
            this.f2295b.put(cls, list);
        }
        return list;
    }

    public final <A> List<n<A, ?>> getModelLoaders(A a2) {
        List<n<A, ?>> a3 = a(a2.getClass());
        int size = a3.size();
        List<n<A, ?>> emptyList = Collections.emptyList();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            n nVar = a3.get(i);
            if (nVar.handles(a2)) {
                if (z) {
                    emptyList = new ArrayList<>(size - i);
                    z = false;
                }
                emptyList.add(nVar);
            }
        }
        return emptyList;
    }
}
