package c.b.a.c.c;

import c.b.a.c.a.d;
import c.b.a.c.c.u;
import c.b.a.c.f;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: DataUrlLoader */
public final class g<Model, Data> implements u<Model, Data> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Data> f4080a;

    /* compiled from: DataUrlLoader */
    public interface a<Data> {
        Class<Data> a();

        void a(Data data);

        Data decode(String str);
    }

    /* compiled from: DataUrlLoader */
    private static final class b<Data> implements d<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final String f4081a;

        /* renamed from: b  reason: collision with root package name */
        public final a<Data> f4082b;

        /* renamed from: c  reason: collision with root package name */
        public Data f4083c;

        public b(String str, a<Data> aVar) {
            this.f4081a = str;
            this.f4082b = aVar;
        }

        public void a(Priority priority, d.a<? super Data> aVar) {
            try {
                this.f4083c = this.f4082b.decode(this.f4081a);
                aVar.a(this.f4083c);
            } catch (IllegalArgumentException e2) {
                aVar.a((Exception) e2);
            }
        }

        public void b() {
            try {
                this.f4082b.a(this.f4083c);
            } catch (IOException unused) {
            }
        }

        public DataSource c() {
            return DataSource.LOCAL;
        }

        public void cancel() {
        }

        public Class<Data> a() {
            return this.f4082b.a();
        }
    }

    /* compiled from: DataUrlLoader */
    public static final class c<Model> implements v<Model, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        public final a<InputStream> f4084a = new h(this);

        public u<Model, InputStream> a(y yVar) {
            return new g(this.f4084a);
        }
    }

    public g(a<Data> aVar) {
        this.f4080a = aVar;
    }

    public u.a<Data> a(Model model, int i2, int i3, f fVar) {
        return new u.a<>(new c.b.a.h.b(model), new b(model.toString(), this.f4080a));
    }

    public boolean a(Model model) {
        return model.toString().startsWith("data:image");
    }
}
