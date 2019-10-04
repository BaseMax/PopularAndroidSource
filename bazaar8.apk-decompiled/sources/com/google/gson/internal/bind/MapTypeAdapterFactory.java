package com.google.gson.internal.bind;

import c.e.d.b.a.C1019m;
import c.e.d.b.a.T;
import c.e.d.b.p;
import c.e.d.b.s;
import c.e.d.b.w;
import c.e.d.b.z;
import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.t;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.stream.JsonToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

public final class MapTypeAdapterFactory implements y {

    /* renamed from: a  reason: collision with root package name */
    public final p f13554a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f13555b;

    private final class a<K, V> extends x<Map<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        public final x<K> f13556a;

        /* renamed from: b  reason: collision with root package name */
        public final x<V> f13557b;

        /* renamed from: c  reason: collision with root package name */
        public final w<? extends Map<K, V>> f13558c;

        public a(j jVar, Type type, x<K> xVar, Type type2, x<V> xVar2, w<? extends Map<K, V>> wVar) {
            this.f13556a = new C1019m(jVar, xVar, type);
            this.f13557b = new C1019m(jVar, xVar2, type2);
            this.f13558c = wVar;
        }

        public final String b(c.e.d.p pVar) {
            if (pVar.i()) {
                t d2 = pVar.d();
                if (d2.p()) {
                    return String.valueOf(d2.n());
                }
                if (d2.o()) {
                    return Boolean.toString(d2.j());
                }
                if (d2.q()) {
                    return d2.e();
                }
                throw new AssertionError();
            } else if (pVar.g()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }

        public Map<K, V> a(b bVar) {
            JsonToken K = bVar.K();
            if (K == JsonToken.NULL) {
                bVar.H();
                return null;
            }
            Map<K, V> map = (Map) this.f13558c.a();
            if (K == JsonToken.BEGIN_ARRAY) {
                bVar.s();
                while (bVar.z()) {
                    bVar.s();
                    K a2 = this.f13556a.a(bVar);
                    if (map.put(a2, this.f13557b.a(bVar)) == null) {
                        bVar.x();
                    } else {
                        throw new JsonSyntaxException("duplicate key: " + a2);
                    }
                }
                bVar.x();
            } else {
                bVar.t();
                while (bVar.z()) {
                    s.f11807a.a(bVar);
                    K a3 = this.f13556a.a(bVar);
                    if (map.put(a3, this.f13557b.a(bVar)) != null) {
                        throw new JsonSyntaxException("duplicate key: " + a3);
                    }
                }
                bVar.y();
            }
            return map;
        }

        public void a(c cVar, Map<K, V> map) {
            if (map == null) {
                cVar.C();
            } else if (!MapTypeAdapterFactory.this.f13555b) {
                cVar.v();
                for (Map.Entry next : map.entrySet()) {
                    cVar.e(String.valueOf(next.getKey()));
                    this.f13557b.a(cVar, next.getValue());
                }
                cVar.x();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                int i2 = 0;
                boolean z = false;
                for (Map.Entry next2 : map.entrySet()) {
                    c.e.d.p a2 = this.f13556a.a(next2.getKey());
                    arrayList.add(a2);
                    arrayList2.add(next2.getValue());
                    z |= a2.f() || a2.h();
                }
                if (z) {
                    cVar.u();
                    int size = arrayList.size();
                    while (i2 < size) {
                        cVar.u();
                        z.a((c.e.d.p) arrayList.get(i2), cVar);
                        this.f13557b.a(cVar, arrayList2.get(i2));
                        cVar.w();
                        i2++;
                    }
                    cVar.w();
                } else {
                    cVar.v();
                    int size2 = arrayList.size();
                    while (i2 < size2) {
                        cVar.e(b((c.e.d.p) arrayList.get(i2)));
                        this.f13557b.a(cVar, arrayList2.get(i2));
                        i2++;
                    }
                    cVar.x();
                }
            }
        }
    }

    public MapTypeAdapterFactory(p pVar, boolean z) {
        this.f13554a = pVar;
        this.f13555b = z;
    }

    public <T> x<T> a(j jVar, c.e.d.c.a<T> aVar) {
        Type b2 = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] b3 = C$Gson$Types.b(b2, C$Gson$Types.e(b2));
        j jVar2 = jVar;
        a aVar2 = new a(jVar2, b3[0], a(jVar, b3[0]), b3[1], jVar.a(c.e.d.c.a.a(b3[1])), this.f13554a.a(aVar));
        return aVar2;
    }

    public final x<?> a(j jVar, Type type) {
        if (type == Boolean.TYPE || type == Boolean.class) {
            return T.f11738f;
        }
        return jVar.a(c.e.d.c.a.a(type));
    }
}
