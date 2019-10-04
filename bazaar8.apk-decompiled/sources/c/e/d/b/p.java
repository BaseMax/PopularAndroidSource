package c.e.d.b;

import c.e.d.b.b.b;
import c.e.d.c.a;
import c.e.d.l;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

/* compiled from: ConstructorConstructor */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Type, l<?>> f11798a;

    /* renamed from: b  reason: collision with root package name */
    public final b f11799b = b.a();

    public p(Map<Type, l<?>> map) {
        this.f11798a = map;
    }

    public <T> w<T> a(a<T> aVar) {
        Type b2 = aVar.b();
        Class<? super T> a2 = aVar.a();
        l lVar = this.f11798a.get(b2);
        if (lVar != null) {
            return new g(this, lVar, b2);
        }
        l lVar2 = this.f11798a.get(a2);
        if (lVar2 != null) {
            return new h(this, lVar2, b2);
        }
        w<T> a3 = a(a2);
        if (a3 != null) {
            return a3;
        }
        w<T> a4 = a(b2, a2);
        if (a4 != null) {
            return a4;
        }
        return b(b2, a2);
    }

    public final <T> w<T> b(Type type, Class<? super T> cls) {
        return new f(this, cls, type);
    }

    public String toString() {
        return this.f11798a.toString();
    }

    public final <T> w<T> a(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f11799b.a(declaredConstructor);
            }
            return new i(this, declaredConstructor);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final <T> w<T> a(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new j(this);
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new k(this, type);
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new l(this);
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new m(this);
            }
            return new n(this);
        } else if (!Map.class.isAssignableFrom(cls)) {
            return null;
        } else {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                return new o(this);
            }
            if (ConcurrentMap.class.isAssignableFrom(cls)) {
                return new C1026b(this);
            }
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new C1027c(this);
            }
            if (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(a.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) {
                return new C1029e(this);
            }
            return new C1028d(this);
        }
    }
}
