package c.b.a.c.c;

import c.b.a.c.a.d;
import c.b.a.c.c;
import c.b.a.c.f;
import c.b.a.i.i;
import java.util.Collections;
import java.util.List;

/* compiled from: ModelLoader */
public interface u<Model, Data> {

    /* compiled from: ModelLoader */
    public static class a<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final c f4119a;

        /* renamed from: b  reason: collision with root package name */
        public final List<c> f4120b;

        /* renamed from: c  reason: collision with root package name */
        public final d<Data> f4121c;

        public a(c cVar, d<Data> dVar) {
            this(cVar, Collections.emptyList(), dVar);
        }

        public a(c cVar, List<c> list, d<Data> dVar) {
            i.a(cVar);
            this.f4119a = cVar;
            i.a(list);
            this.f4120b = list;
            i.a(dVar);
            this.f4121c = dVar;
        }
    }

    a<Data> a(Model model, int i2, int i3, f fVar);

    boolean a(Model model);
}
