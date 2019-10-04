package c.b.a.c.c;

import b.i.j.e;
import c.b.a.c.c.u;
import c.b.a.c.f;
import c.b.a.i.i;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: MultiModelLoaderFactory */
public class y {

    /* renamed from: a  reason: collision with root package name */
    public static final c f4134a = new c();

    /* renamed from: b  reason: collision with root package name */
    public static final u<Object, Object> f4135b = new a();

    /* renamed from: c  reason: collision with root package name */
    public final List<b<?, ?>> f4136c;

    /* renamed from: d  reason: collision with root package name */
    public final c f4137d;

    /* renamed from: e  reason: collision with root package name */
    public final Set<b<?, ?>> f4138e;

    /* renamed from: f  reason: collision with root package name */
    public final e<List<Throwable>> f4139f;

    /* compiled from: MultiModelLoaderFactory */
    private static class a implements u<Object, Object> {
        public u.a<Object> a(Object obj, int i2, int i3, f fVar) {
            return null;
        }

        public boolean a(Object obj) {
            return false;
        }
    }

    /* compiled from: MultiModelLoaderFactory */
    private static class b<Model, Data> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<Model> f4140a;

        /* renamed from: b  reason: collision with root package name */
        public final Class<Data> f4141b;

        /* renamed from: c  reason: collision with root package name */
        public final v<? extends Model, ? extends Data> f4142c;

        public b(Class<Model> cls, Class<Data> cls2, v<? extends Model, ? extends Data> vVar) {
            this.f4140a = cls;
            this.f4141b = cls2;
            this.f4142c = vVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return a(cls) && this.f4141b.isAssignableFrom(cls2);
        }

        public boolean a(Class<?> cls) {
            return this.f4140a.isAssignableFrom(cls);
        }
    }

    /* compiled from: MultiModelLoaderFactory */
    static class c {
        public <Model, Data> x<Model, Data> a(List<u<Model, Data>> list, e<List<Throwable>> eVar) {
            return new x<>(list, eVar);
        }
    }

    public y(e<List<Throwable>> eVar) {
        this(eVar, f4134a);
    }

    public synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, v<? extends Model, ? extends Data> vVar) {
        a(cls, cls2, vVar, true);
    }

    public synchronized List<Class<?>> b(Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b next : this.f4136c) {
            if (!arrayList.contains(next.f4141b) && next.a(cls)) {
                arrayList.add(next.f4141b);
            }
        }
        return arrayList;
    }

    public y(e<List<Throwable>> eVar, c cVar) {
        this.f4136c = new ArrayList();
        this.f4138e = new HashSet();
        this.f4139f = eVar;
        this.f4137d = cVar;
    }

    public final <Model, Data> void a(Class<Model> cls, Class<Data> cls2, v<? extends Model, ? extends Data> vVar, boolean z) {
        b bVar = new b(cls, cls2, vVar);
        List<b<?, ?>> list = this.f4136c;
        list.add(z ? list.size() : 0, bVar);
    }

    public synchronized <Model> List<u<Model, ?>> a(Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b next : this.f4136c) {
                if (!this.f4138e.contains(next)) {
                    if (next.a(cls)) {
                        this.f4138e.add(next);
                        arrayList.add(a((b<?, ?>) next));
                        this.f4138e.remove(next);
                    }
                }
            }
        } catch (Throwable th) {
            this.f4138e.clear();
            throw th;
        }
        return arrayList;
    }

    public synchronized <Model, Data> u<Model, Data> a(Class<Model> cls, Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (b next : this.f4136c) {
                if (this.f4138e.contains(next)) {
                    z = true;
                } else if (next.a(cls, cls2)) {
                    this.f4138e.add(next);
                    arrayList.add(a((b<?, ?>) next));
                    this.f4138e.remove(next);
                }
            }
            if (arrayList.size() > 1) {
                return this.f4137d.a(arrayList, this.f4139f);
            } else if (arrayList.size() == 1) {
                return (u) arrayList.get(0);
            } else if (z) {
                return a();
            } else {
                throw new Registry.NoModelLoaderAvailableException(cls, cls2);
            }
        } catch (Throwable th) {
            this.f4138e.clear();
            throw th;
        }
    }

    public final <Model, Data> u<Model, Data> a(b<?, ?> bVar) {
        u<? extends Model, ? extends Data> a2 = bVar.f4142c.a(this);
        i.a(a2);
        return a2;
    }

    public static <Model, Data> u<Model, Data> a() {
        return f4135b;
    }
}
