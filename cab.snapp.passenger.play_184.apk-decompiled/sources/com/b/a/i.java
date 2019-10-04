package com.b.a;

import com.google.gson.b.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class i implements b {

    /* renamed from: a  reason: collision with root package name */
    private final o f1968a;

    public i(o oVar) {
        if (oVar != null) {
            this.f1968a = oVar;
            return;
        }
        throw new NullPointerException("Parser should not be null");
    }

    public final <T> String toString(T t) {
        if (t == null) {
            return null;
        }
        return this.f1968a.toJson(t);
    }

    public final <T> T fromString(String str, c cVar) throws Exception {
        if (str == null) {
            return null;
        }
        l.checkNull("data info", cVar);
        Class cls = cVar.c;
        Class cls2 = cVar.d;
        switch (cVar.f1959a) {
            case '0':
                return this.f1968a.fromJson(str, cls);
            case '1':
                if (cls == null) {
                    return new ArrayList();
                }
                T t = (List) this.f1968a.fromJson(str, new a<List<T>>() {
                }.getType());
                int size = t.size();
                for (int i = 0; i < size; i++) {
                    o oVar = this.f1968a;
                    t.set(i, oVar.fromJson(oVar.toJson(t.get(i)), cls));
                }
                return t;
            case '2':
                return a(str, cls, cls2);
            case '3':
                return a(str, cls);
            default:
                return null;
        }
    }

    private <T> T a(String str, Class<?> cls) throws Exception {
        T hashSet = new HashSet();
        if (cls == null) {
            return hashSet;
        }
        for (Object json : (Set) this.f1968a.fromJson(str, new a<Set<T>>() {
        }.getType())) {
            hashSet.add(this.f1968a.fromJson(this.f1968a.toJson(json), cls));
        }
        return hashSet;
    }

    private <K, V, T> T a(String str, Class<?> cls, Class<?> cls2) throws Exception {
        T hashMap = new HashMap();
        if (!(cls == null || cls2 == null)) {
            for (Map.Entry entry : ((Map) this.f1968a.fromJson(str, new a<Map<K, V>>() {
            }.getType())).entrySet()) {
                hashMap.put(this.f1968a.fromJson(this.f1968a.toJson(entry.getKey()), cls), this.f1968a.fromJson(this.f1968a.toJson(entry.getValue()), cls2));
            }
        }
        return hashMap;
    }
}
