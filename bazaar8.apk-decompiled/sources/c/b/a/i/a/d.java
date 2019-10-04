package c.b.a.i.a;

import android.util.Log;
import b.i.j.e;
import b.i.j.f;
import b.i.j.g;
import java.util.List;

/* compiled from: FactoryPools */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final C0066d<Object> f4420a = new a();

    /* compiled from: FactoryPools */
    public interface a<T> {
        T a();
    }

    /* compiled from: FactoryPools */
    private static final class b<T> implements e<T> {

        /* renamed from: a  reason: collision with root package name */
        public final a<T> f4421a;

        /* renamed from: b  reason: collision with root package name */
        public final C0066d<T> f4422b;

        /* renamed from: c  reason: collision with root package name */
        public final e<T> f4423c;

        public b(e<T> eVar, a<T> aVar, C0066d<T> dVar) {
            this.f4423c = eVar;
            this.f4421a = aVar;
            this.f4422b = dVar;
        }

        public T a() {
            T a2 = this.f4423c.a();
            if (a2 == null) {
                a2 = this.f4421a.a();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + a2.getClass());
                }
            }
            if (a2 instanceof c) {
                ((c) a2).f().a(false);
            }
            return a2;
        }

        public boolean a(T t) {
            if (t instanceof c) {
                ((c) t).f().a(true);
            }
            this.f4422b.a(t);
            return this.f4423c.a(t);
        }
    }

    /* compiled from: FactoryPools */
    public interface c {
        g f();
    }

    /* renamed from: c.b.a.i.a.d$d  reason: collision with other inner class name */
    /* compiled from: FactoryPools */
    public interface C0066d<T> {
        void a(T t);
    }

    public static <T extends c> e<T> a(int i2, a<T> aVar) {
        return a(new f(i2), aVar);
    }

    public static <T extends c> e<T> b(int i2, a<T> aVar) {
        return a(new g(i2), aVar);
    }

    public static <T> e<List<T>> a(int i2) {
        return a(new g(i2), new b(), new c());
    }

    public static <T> e<List<T>> b() {
        return a(20);
    }

    public static <T extends c> e<T> a(e<T> eVar, a<T> aVar) {
        return a(eVar, aVar, a());
    }

    public static <T> e<T> a(e<T> eVar, a<T> aVar, C0066d<T> dVar) {
        return new b(eVar, aVar, dVar);
    }

    public static <T> C0066d<T> a() {
        return f4420a;
    }
}
