package com.bumptech.glide.load.c;

import androidx.core.util.Pools;
import com.bumptech.glide.f;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final c f2302a = new c();

    /* renamed from: b  reason: collision with root package name */
    private static final n<Object, Object> f2303b = new a();
    private final List<b<?, ?>> c;
    private final c d;
    private final Set<b<?, ?>> e;
    private final Pools.Pool<List<Throwable>> f;

    static class a implements n<Object, Object> {
        public final n.a<Object> buildLoadData(Object obj, int i, int i2, g gVar) {
            return null;
        }

        public final boolean handles(Object obj) {
            return false;
        }

        a() {
        }
    }

    static class b<Model, Data> {

        /* renamed from: a  reason: collision with root package name */
        final Class<Data> f2304a;

        /* renamed from: b  reason: collision with root package name */
        final o<? extends Model, ? extends Data> f2305b;
        private final Class<Model> c;

        public b(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
            this.c = cls;
            this.f2304a = cls2;
            this.f2305b = oVar;
        }

        public final boolean handles(Class<?> cls, Class<?> cls2) {
            return handles(cls) && this.f2304a.isAssignableFrom(cls2);
        }

        public final boolean handles(Class<?> cls) {
            return this.c.isAssignableFrom(cls);
        }
    }

    static class c {
        c() {
        }

        public final <Model, Data> q<Model, Data> build(List<n<Model, Data>> list, Pools.Pool<List<Throwable>> pool) {
            return new q<>(list, pool);
        }
    }

    public r(Pools.Pool<List<Throwable>> pool) {
        this(pool, f2302a);
    }

    private r(Pools.Pool<List<Throwable>> pool, c cVar) {
        this.c = new ArrayList();
        this.e = new HashSet();
        this.f = pool;
        this.d = cVar;
    }

    /* access modifiers changed from: package-private */
    public final synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        a(cls, cls2, oVar, true);
    }

    /* access modifiers changed from: package-private */
    public final synchronized <Model, Data> void b(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        a(cls, cls2, oVar, false);
    }

    private <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar, boolean z) {
        b bVar = new b(cls, cls2, oVar);
        List<b<?, ?>> list = this.c;
        list.add(z ? list.size() : 0, bVar);
    }

    /* access modifiers changed from: package-private */
    public final synchronized <Model, Data> List<o<? extends Model, ? extends Data>> c(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        List<o<? extends Model, ? extends Data>> a2;
        a2 = a(cls, cls2);
        a(cls, cls2, oVar);
        return a2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized <Model, Data> List<o<? extends Model, ? extends Data>> a(Class<Model> cls, Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<b<?, ?>> it = this.c.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.handles(cls, cls2)) {
                it.remove();
                arrayList.add(next.f2305b);
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public final synchronized <Model> List<n<Model, ?>> a(Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b next : this.c) {
                if (!this.e.contains(next) && next.handles(cls)) {
                    this.e.add(next);
                    arrayList.add(a((b<?, ?>) next));
                    this.e.remove(next);
                }
            }
        } catch (Throwable th) {
            this.e.clear();
            throw th;
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public final synchronized List<Class<?>> b(Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b next : this.c) {
            if (!arrayList.contains(next.f2304a) && next.handles(cls)) {
                arrayList.add(next.f2304a);
            }
        }
        return arrayList;
    }

    public final synchronized <Model, Data> n<Model, Data> build(Class<Model> cls, Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (b next : this.c) {
                if (this.e.contains(next)) {
                    z = true;
                } else if (next.handles(cls, cls2)) {
                    this.e.add(next);
                    arrayList.add(a((b<?, ?>) next));
                    this.e.remove(next);
                }
            }
            if (arrayList.size() > 1) {
                return this.d.build(arrayList, this.f);
            } else if (arrayList.size() == 1) {
                return (n) arrayList.get(0);
            } else if (z) {
                return f2303b;
            } else {
                throw new f.c(cls, cls2);
            }
        } catch (Throwable th) {
            this.e.clear();
            throw th;
        }
    }

    private <Model, Data> n<Model, Data> a(b<?, ?> bVar) {
        return (n) j.checkNotNull(bVar.f2305b.build(this));
    }
}
