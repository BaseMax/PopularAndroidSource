package c.b.a.c.c;

import c.b.a.c.a.d;
import c.b.a.c.c.u;
import c.b.a.c.f;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

/* compiled from: UnitModelLoader */
public class C<Model> implements u<Model, Model> {

    /* renamed from: a  reason: collision with root package name */
    public static final C<?> f4049a = new C<>();

    /* compiled from: UnitModelLoader */
    public static class a<Model> implements v<Model, Model> {

        /* renamed from: a  reason: collision with root package name */
        public static final a<?> f4050a = new a<>();

        public static <T> a<T> a() {
            return f4050a;
        }

        public u<Model, Model> a(y yVar) {
            return C.a();
        }
    }

    /* compiled from: UnitModelLoader */
    private static class b<Model> implements d<Model> {

        /* renamed from: a  reason: collision with root package name */
        public final Model f4051a;

        public b(Model model) {
            this.f4051a = model;
        }

        public void a(Priority priority, d.a<? super Model> aVar) {
            aVar.a(this.f4051a);
        }

        public void b() {
        }

        public DataSource c() {
            return DataSource.LOCAL;
        }

        public void cancel() {
        }

        public Class<Model> a() {
            return this.f4051a.getClass();
        }
    }

    public static <T> C<T> a() {
        return f4049a;
    }

    public boolean a(Model model) {
        return true;
    }

    public u.a<Model> a(Model model, int i2, int i3, f fVar) {
        return new u.a<>(new c.b.a.h.b(model), new b(model));
    }
}
