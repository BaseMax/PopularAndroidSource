package c.b.a.f;

import c.b.a.c.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ResourceDecoderRegistry */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f4343a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, List<a<?, ?>>> f4344b = new HashMap();

    /* compiled from: ResourceDecoderRegistry */
    private static class a<T, R> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<T> f4345a;

        /* renamed from: b  reason: collision with root package name */
        public final Class<R> f4346b;

        /* renamed from: c  reason: collision with root package name */
        public final g<T, R> f4347c;

        public a(Class<T> cls, Class<R> cls2, g<T, R> gVar) {
            this.f4345a = cls;
            this.f4346b = cls2;
            this.f4347c = gVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.f4345a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f4346b);
        }
    }

    public synchronized void a(List<String> list) {
        ArrayList<String> arrayList = new ArrayList<>(this.f4343a);
        this.f4343a.clear();
        this.f4343a.addAll(list);
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.f4343a.add(str);
            }
        }
    }

    public synchronized <T, R> List<Class<R>> b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f4343a) {
            List<a> list = this.f4344b.get(str);
            if (list != null) {
                for (a aVar : list) {
                    if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f4346b)) {
                        arrayList.add(aVar.f4346b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> List<g<T, R>> a(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f4343a) {
            List<a> list = this.f4344b.get(str);
            if (list != null) {
                for (a aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.f4347c);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> void a(String str, g<T, R> gVar, Class<T> cls, Class<R> cls2) {
        a(str).add(new a(cls, cls2, gVar));
    }

    public final synchronized List<a<?, ?>> a(String str) {
        List<a<?, ?>> list;
        if (!this.f4343a.contains(str)) {
            this.f4343a.add(str);
        }
        list = this.f4344b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f4344b.put(str, list);
        }
        return list;
    }
}
