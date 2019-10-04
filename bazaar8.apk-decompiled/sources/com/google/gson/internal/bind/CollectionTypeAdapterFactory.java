package com.google.gson.internal.bind;

import c.e.d.b.a.C1019m;
import c.e.d.b.p;
import c.e.d.b.w;
import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.stream.JsonToken;
import java.lang.reflect.Type;
import java.util.Collection;

public final class CollectionTypeAdapterFactory implements y {

    /* renamed from: a  reason: collision with root package name */
    public final p f13550a;

    private static final class a<E> extends x<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        public final x<E> f13551a;

        /* renamed from: b  reason: collision with root package name */
        public final w<? extends Collection<E>> f13552b;

        public a(j jVar, Type type, x<E> xVar, w<? extends Collection<E>> wVar) {
            this.f13551a = new C1019m(jVar, xVar, type);
            this.f13552b = wVar;
        }

        public Collection<E> a(b bVar) {
            if (bVar.K() == JsonToken.NULL) {
                bVar.H();
                return null;
            }
            Collection<E> collection = (Collection) this.f13552b.a();
            bVar.s();
            while (bVar.z()) {
                collection.add(this.f13551a.a(bVar));
            }
            bVar.x();
            return collection;
        }

        public void a(c cVar, Collection<E> collection) {
            if (collection == null) {
                cVar.C();
                return;
            }
            cVar.u();
            for (E a2 : collection) {
                this.f13551a.a(cVar, a2);
            }
            cVar.w();
        }
    }

    public CollectionTypeAdapterFactory(p pVar) {
        this.f13550a = pVar;
    }

    public <T> x<T> a(j jVar, c.e.d.c.a<T> aVar) {
        Type b2 = aVar.b();
        Class<? super T> a2 = aVar.a();
        if (!Collection.class.isAssignableFrom(a2)) {
            return null;
        }
        Type a3 = C$Gson$Types.a(b2, (Class<?>) a2);
        return new a(jVar, a3, jVar.a(c.e.d.c.a.a(a3)), this.f13550a.a(aVar));
    }
}
