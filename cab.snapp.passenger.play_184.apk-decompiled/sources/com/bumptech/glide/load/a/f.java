package com.bumptech.glide.load.a;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.a.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class f {

    /* renamed from: b  reason: collision with root package name */
    private static final e.a<?> f2105b = new e.a<Object>() {
        public final e<Object> build(Object obj) {
            return new a(obj);
        }

        public final Class<Object> getDataClass() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, e.a<?>> f2106a = new HashMap();

    static final class a implements e<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final Object f2107a;

        public final void cleanup() {
        }

        a(Object obj) {
            this.f2107a = obj;
        }

        public final Object rewindAndGet() {
            return this.f2107a;
        }
    }

    public final synchronized void register(e.a<?> aVar) {
        this.f2106a.put(aVar.getDataClass(), aVar);
    }

    public final synchronized <T> e<T> build(T t) {
        e.a<?> aVar;
        j.checkNotNull(t);
        aVar = this.f2106a.get(t.getClass());
        if (aVar == null) {
            Iterator<e.a<?>> it = this.f2106a.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                e.a<?> next = it.next();
                if (next.getDataClass().isAssignableFrom(t.getClass())) {
                    aVar = next;
                    break;
                }
            }
        }
        if (aVar == null) {
            aVar = f2105b;
        }
        return aVar.build(t);
    }
}
