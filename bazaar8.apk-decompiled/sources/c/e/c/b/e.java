package c.e.c.b;

import c.e.a.b.d.d.r;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public final class e<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Set<Class<? super T>> f11525a;

    /* renamed from: b  reason: collision with root package name */
    public final Set<q> f11526b;

    /* renamed from: c  reason: collision with root package name */
    public final int f11527c;

    /* renamed from: d  reason: collision with root package name */
    public final int f11528d;

    /* renamed from: e  reason: collision with root package name */
    public final i<T> f11529e;

    /* renamed from: f  reason: collision with root package name */
    public final Set<Class<?>> f11530f;

    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    public static class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Set<Class<? super T>> f11531a;

        /* renamed from: b  reason: collision with root package name */
        public final Set<q> f11532b;

        /* renamed from: c  reason: collision with root package name */
        public int f11533c;

        /* renamed from: d  reason: collision with root package name */
        public int f11534d;

        /* renamed from: e  reason: collision with root package name */
        public i<T> f11535e;

        /* renamed from: f  reason: collision with root package name */
        public Set<Class<?>> f11536f;

        public e<T> b() {
            r.b(this.f11535e != null, "Missing required property: factory.");
            e eVar = new e(new HashSet(this.f11531a), new HashSet(this.f11532b), this.f11533c, this.f11534d, this.f11535e, this.f11536f);
            return eVar;
        }

        public a<T> c() {
            a(2);
            return this;
        }

        public final a<T> d() {
            this.f11534d = 1;
            return this;
        }

        @SafeVarargs
        public a(Class<T> cls, Class<? super T>... clsArr) {
            this.f11531a = new HashSet();
            this.f11532b = new HashSet();
            this.f11533c = 0;
            this.f11534d = 0;
            this.f11536f = new HashSet();
            r.a(cls, (Object) "Null interface");
            this.f11531a.add(cls);
            for (Class<? super T> a2 : clsArr) {
                r.a(a2, (Object) "Null interface");
            }
            Collections.addAll(this.f11531a, clsArr);
        }

        public a<T> a(q qVar) {
            r.a(qVar, (Object) "Null dependency");
            a(qVar.a());
            this.f11532b.add(qVar);
            return this;
        }

        public a<T> a() {
            a(1);
            return this;
        }

        public final a<T> a(int i2) {
            r.b(this.f11533c == 0, "Instantiation type has already been set.");
            this.f11533c = i2;
            return this;
        }

        public final void a(Class<?> cls) {
            r.a(!this.f11531a.contains(cls), (Object) "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public a<T> a(i<T> iVar) {
            r.a(iVar, (Object) "Null factory");
            this.f11535e = iVar;
            return this;
        }
    }

    public static /* synthetic */ Object a(Object obj, f fVar) {
        return obj;
    }

    public static /* synthetic */ Object b(Object obj, f fVar) {
        return obj;
    }

    public Set<q> a() {
        return this.f11526b;
    }

    public i<T> b() {
        return this.f11529e;
    }

    public Set<Class<? super T>> c() {
        return this.f11525a;
    }

    public Set<Class<?>> d() {
        return this.f11530f;
    }

    public boolean e() {
        return this.f11527c == 1;
    }

    public boolean f() {
        return this.f11527c == 2;
    }

    public boolean g() {
        return this.f11528d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f11525a.toArray()) + ">{" + this.f11527c + ", type=" + this.f11528d + ", deps=" + Arrays.toString(this.f11526b.toArray()) + "}";
    }

    public e(Set<Class<? super T>> set, Set<q> set2, int i2, int i3, i<T> iVar, Set<Class<?>> set3) {
        this.f11525a = Collections.unmodifiableSet(set);
        this.f11526b = Collections.unmodifiableSet(set2);
        this.f11527c = i2;
        this.f11528d = i3;
        this.f11529e = iVar;
        this.f11530f = Collections.unmodifiableSet(set3);
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls, new Class[0]);
    }

    public static <T> a<T> b(Class<T> cls) {
        a<T> a2 = a(cls);
        a unused = a2.d();
        return a2;
    }

    @SafeVarargs
    public static <T> a<T> a(Class<T> cls, Class<? super T>... clsArr) {
        return new a<>(cls, clsArr);
    }

    @SafeVarargs
    public static <T> e<T> a(T t, Class<T> cls, Class<? super T>... clsArr) {
        a<T> a2 = a(cls, clsArr);
        a2.a((i<T>) b.a((Object) t));
        return a2.b();
    }

    public static <T> e<T> a(T t, Class<T> cls) {
        a<T> b2 = b(cls);
        b2.a((i<T>) c.a((Object) t));
        return b2.b();
    }
}
