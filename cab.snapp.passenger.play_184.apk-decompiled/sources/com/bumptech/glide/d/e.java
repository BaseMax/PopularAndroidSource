package com.bumptech.glide.d;

import com.bumptech.glide.load.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f2010a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<a<?, ?>>> f2011b = new HashMap();

    static class a<T, R> {

        /* renamed from: a  reason: collision with root package name */
        final Class<R> f2012a;

        /* renamed from: b  reason: collision with root package name */
        final h<T, R> f2013b;
        private final Class<T> c;

        public a(Class<T> cls, Class<R> cls2, h<T, R> hVar) {
            this.c = cls;
            this.f2012a = cls2;
            this.f2013b = hVar;
        }

        public final boolean handles(Class<?> cls, Class<?> cls2) {
            return this.c.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f2012a);
        }
    }

    public final synchronized void setBucketPriorityList(List<String> list) {
        ArrayList<String> arrayList = new ArrayList<>(this.f2010a);
        this.f2010a.clear();
        this.f2010a.addAll(list);
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.f2010a.add(str);
            }
        }
    }

    public final synchronized <T, R> List<h<T, R>> getDecoders(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f2010a) {
            List<a> list = this.f2011b.get(str);
            if (list != null) {
                for (a aVar : list) {
                    if (aVar.handles(cls, cls2)) {
                        arrayList.add(aVar.f2013b);
                    }
                }
            }
        }
        return arrayList;
    }

    public final synchronized <T, R> List<Class<R>> getResourceClasses(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f2010a) {
            List<a> list = this.f2011b.get(str);
            if (list != null) {
                for (a aVar : list) {
                    if (aVar.handles(cls, cls2) && !arrayList.contains(aVar.f2012a)) {
                        arrayList.add(aVar.f2012a);
                    }
                }
            }
        }
        return arrayList;
    }

    public final synchronized <T, R> void append(String str, h<T, R> hVar, Class<T> cls, Class<R> cls2) {
        a(str).add(new a(cls, cls2, hVar));
    }

    public final synchronized <T, R> void prepend(String str, h<T, R> hVar, Class<T> cls, Class<R> cls2) {
        a(str).add(0, new a(cls, cls2, hVar));
    }

    private synchronized List<a<?, ?>> a(String str) {
        List<a<?, ?>> list;
        if (!this.f2010a.contains(str)) {
            this.f2010a.add(str);
        }
        list = this.f2011b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f2011b.put(str, list);
        }
        return list;
    }
}
