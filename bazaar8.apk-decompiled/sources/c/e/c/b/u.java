package c.e.c.b;

import c.e.c.c.c;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public final class u extends a {

    /* renamed from: a  reason: collision with root package name */
    public final Set<Class<?>> f11564a;

    /* renamed from: b  reason: collision with root package name */
    public final Set<Class<?>> f11565b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<Class<?>> f11566c;

    /* renamed from: d  reason: collision with root package name */
    public final Set<Class<?>> f11567d;

    /* renamed from: e  reason: collision with root package name */
    public final Set<Class<?>> f11568e;

    /* renamed from: f  reason: collision with root package name */
    public final f f11569f;

    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    private static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        public final Set<Class<?>> f11570a;

        /* renamed from: b  reason: collision with root package name */
        public final c f11571b;

        public a(Set<Class<?>> set, c cVar) {
            this.f11570a = set;
            this.f11571b = cVar;
        }
    }

    public u(e<?> eVar, f fVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (q next : eVar.a()) {
            if (next.b()) {
                if (next.d()) {
                    hashSet3.add(next.a());
                } else {
                    hashSet.add(next.a());
                }
            } else if (next.d()) {
                hashSet4.add(next.a());
            } else {
                hashSet2.add(next.a());
            }
        }
        if (!eVar.d().isEmpty()) {
            hashSet.add(c.class);
        }
        this.f11564a = Collections.unmodifiableSet(hashSet);
        this.f11565b = Collections.unmodifiableSet(hashSet2);
        this.f11566c = Collections.unmodifiableSet(hashSet3);
        this.f11567d = Collections.unmodifiableSet(hashSet4);
        this.f11568e = eVar.d();
        this.f11569f = fVar;
    }

    public <T> T a(Class<T> cls) {
        if (this.f11564a.contains(cls)) {
            T a2 = this.f11569f.a(cls);
            if (!cls.equals(c.class)) {
                return a2;
            }
            return new a(this.f11568e, (c) a2);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency %s.", new Object[]{cls}));
    }

    public <T> c.e.c.e.a<T> b(Class<T> cls) {
        if (this.f11565b.contains(cls)) {
            return this.f11569f.b(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<%s>.", new Object[]{cls}));
    }

    public <T> c.e.c.e.a<Set<T>> c(Class<T> cls) {
        if (this.f11567d.contains(cls)) {
            return this.f11569f.c(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", new Object[]{cls}));
    }

    public <T> Set<T> d(Class<T> cls) {
        if (this.f11566c.contains(cls)) {
            return this.f11569f.d(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Set<%s>.", new Object[]{cls}));
    }
}
