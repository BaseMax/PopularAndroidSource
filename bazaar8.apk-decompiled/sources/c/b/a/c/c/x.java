package c.b.a.c.c;

import b.i.j.e;
import c.b.a.c.a.d;
import c.b.a.c.c;
import c.b.a.c.c.u;
import c.b.a.c.f;
import c.b.a.i.i;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: MultiModelLoader */
public class x<Model, Data> implements u<Model, Data> {

    /* renamed from: a  reason: collision with root package name */
    public final List<u<Model, Data>> f4126a;

    /* renamed from: b  reason: collision with root package name */
    public final e<List<Throwable>> f4127b;

    /* compiled from: MultiModelLoader */
    static class a<Data> implements d<Data>, d.a<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final List<d<Data>> f4128a;

        /* renamed from: b  reason: collision with root package name */
        public final e<List<Throwable>> f4129b;

        /* renamed from: c  reason: collision with root package name */
        public int f4130c = 0;

        /* renamed from: d  reason: collision with root package name */
        public Priority f4131d;

        /* renamed from: e  reason: collision with root package name */
        public d.a<? super Data> f4132e;

        /* renamed from: f  reason: collision with root package name */
        public List<Throwable> f4133f;

        public a(List<d<Data>> list, e<List<Throwable>> eVar) {
            this.f4129b = eVar;
            i.a(list);
            this.f4128a = list;
        }

        public void a(Priority priority, d.a<? super Data> aVar) {
            this.f4131d = priority;
            this.f4132e = aVar;
            this.f4133f = this.f4129b.a();
            this.f4128a.get(this.f4130c).a(priority, this);
        }

        public void b() {
            List<Throwable> list = this.f4133f;
            if (list != null) {
                this.f4129b.a(list);
            }
            this.f4133f = null;
            for (d<Data> b2 : this.f4128a) {
                b2.b();
            }
        }

        public DataSource c() {
            return this.f4128a.get(0).c();
        }

        public void cancel() {
            for (d<Data> cancel : this.f4128a) {
                cancel.cancel();
            }
        }

        public final void d() {
            if (this.f4130c < this.f4128a.size() - 1) {
                this.f4130c++;
                a(this.f4131d, this.f4132e);
                return;
            }
            i.a(this.f4133f);
            this.f4132e.a((Exception) new GlideException("Fetch failed", (List<Throwable>) new ArrayList(this.f4133f)));
        }

        public Class<Data> a() {
            return this.f4128a.get(0).a();
        }

        public void a(Data data) {
            if (data != null) {
                this.f4132e.a(data);
            } else {
                d();
            }
        }

        public void a(Exception exc) {
            List<Throwable> list = this.f4133f;
            i.a(list);
            list.add(exc);
            d();
        }
    }

    public x(List<u<Model, Data>> list, e<List<Throwable>> eVar) {
        this.f4126a = list;
        this.f4127b = eVar;
    }

    public u.a<Data> a(Model model, int i2, int i3, f fVar) {
        int size = this.f4126a.size();
        ArrayList arrayList = new ArrayList(size);
        c cVar = null;
        for (int i4 = 0; i4 < size; i4++) {
            u uVar = this.f4126a.get(i4);
            if (uVar.a(model)) {
                u.a a2 = uVar.a(model, i2, i3, fVar);
                if (a2 != null) {
                    cVar = a2.f4119a;
                    arrayList.add(a2.f4121c);
                }
            }
        }
        if (arrayList.isEmpty() || cVar == null) {
            return null;
        }
        return new u.a<>(cVar, new a(arrayList, this.f4127b));
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f4126a.toArray()) + '}';
    }

    public boolean a(Model model) {
        for (u<Model, Data> a2 : this.f4126a) {
            if (a2.a(model)) {
                return true;
            }
        }
        return false;
    }
}
