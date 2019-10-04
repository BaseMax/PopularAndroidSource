package c.b.a.c.d.f;

import java.util.ArrayList;
import java.util.List;

/* compiled from: TranscoderRegistry */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public final List<a<?, ?>> f4268a = new ArrayList();

    /* compiled from: TranscoderRegistry */
    private static final class a<Z, R> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<Z> f4269a;

        /* renamed from: b  reason: collision with root package name */
        public final Class<R> f4270b;

        /* renamed from: c  reason: collision with root package name */
        public final e<Z, R> f4271c;

        public a(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
            this.f4269a = cls;
            this.f4270b = cls2;
            this.f4271c = eVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.f4269a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f4270b);
        }
    }

    public synchronized <Z, R> void a(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
        this.f4268a.add(new a(cls, cls2, eVar));
    }

    public synchronized <Z, R> List<Class<R>> b(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (a<?, ?> a2 : this.f4268a) {
            if (a2.a(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> e<Z, R> a(Class<Z> cls, Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.a();
        }
        for (a next : this.f4268a) {
            if (next.a(cls, cls2)) {
                return next.f4271c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }
}
