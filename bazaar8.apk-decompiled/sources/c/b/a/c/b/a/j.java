package c.b.a.c.b.a;

import android.util.Log;
import c.b.a.i.i;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: LruArrayPool */
public final class j implements b {

    /* renamed from: a  reason: collision with root package name */
    public final h<a, Object> f3858a = new h<>();

    /* renamed from: b  reason: collision with root package name */
    public final b f3859b = new b();

    /* renamed from: c  reason: collision with root package name */
    public final Map<Class<?>, NavigableMap<Integer, Integer>> f3860c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Map<Class<?>, a<?>> f3861d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final int f3862e;

    /* renamed from: f  reason: collision with root package name */
    public int f3863f;

    /* compiled from: LruArrayPool */
    private static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        public final b f3864a;

        /* renamed from: b  reason: collision with root package name */
        public int f3865b;

        /* renamed from: c  reason: collision with root package name */
        public Class<?> f3866c;

        public a(b bVar) {
            this.f3864a = bVar;
        }

        public void a(int i2, Class<?> cls) {
            this.f3865b = i2;
            this.f3866c = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f3865b == aVar.f3865b && this.f3866c == aVar.f3866c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i2 = this.f3865b * 31;
            Class<?> cls = this.f3866c;
            return i2 + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.f3865b + "array=" + this.f3866c + '}';
        }

        public void a() {
            this.f3864a.a(this);
        }
    }

    /* compiled from: LruArrayPool */
    private static final class b extends d<a> {
        public a a(int i2, Class<?> cls) {
            a aVar = (a) b();
            aVar.a(i2, cls);
            return aVar;
        }

        public a a() {
            return new a(this);
        }
    }

    public j(int i2) {
        this.f3862e = i2;
    }

    public synchronized <T> T a(int i2, Class<T> cls) {
        return a(this.f3859b.a(i2, cls), cls);
    }

    public synchronized <T> T b(int i2, Class<T> cls) {
        a aVar;
        Integer ceilingKey = b((Class<?>) cls).ceilingKey(Integer.valueOf(i2));
        if (a(i2, ceilingKey)) {
            aVar = this.f3859b.a(ceilingKey.intValue(), cls);
        } else {
            aVar = this.f3859b.a(i2, cls);
        }
        return a(aVar, cls);
    }

    public final boolean c(int i2) {
        return i2 <= this.f3862e / 2;
    }

    public synchronized <T> void put(T t) {
        Class<?> cls = t.getClass();
        a<?> a2 = a(cls);
        int a3 = a2.a(t);
        int a4 = a2.a() * a3;
        if (c(a4)) {
            a a5 = this.f3859b.a(a3, cls);
            this.f3858a.a(a5, t);
            NavigableMap<Integer, Integer> b2 = b(cls);
            Integer num = (Integer) b2.get(Integer.valueOf(a5.f3865b));
            Integer valueOf = Integer.valueOf(a5.f3865b);
            int i2 = 1;
            if (num != null) {
                i2 = 1 + num.intValue();
            }
            b2.put(valueOf, Integer.valueOf(i2));
            this.f3863f += a4;
            b();
        }
    }

    public final boolean c() {
        int i2 = this.f3863f;
        return i2 == 0 || this.f3862e / i2 >= 2;
    }

    public final <T> T a(a aVar, Class<T> cls) {
        a<T> a2 = a(cls);
        T a3 = a(aVar);
        if (a3 != null) {
            this.f3863f -= a2.a(a3) * a2.a();
            c(a2.a(a3), cls);
        }
        if (a3 != null) {
            return a3;
        }
        if (Log.isLoggable(a2.getTag(), 2)) {
            Log.v(a2.getTag(), "Allocated " + aVar.f3865b + " bytes");
        }
        return a2.newArray(aVar.f3865b);
    }

    public final void c(int i2, Class<?> cls) {
        NavigableMap<Integer, Integer> b2 = b(cls);
        Integer num = (Integer) b2.get(Integer.valueOf(i2));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i2 + ", this: " + this);
        } else if (num.intValue() == 1) {
            b2.remove(Integer.valueOf(i2));
        } else {
            b2.put(Integer.valueOf(i2), Integer.valueOf(num.intValue() - 1));
        }
    }

    public final void b() {
        b(this.f3862e);
    }

    public final void b(int i2) {
        while (this.f3863f > i2) {
            Object a2 = this.f3858a.a();
            i.a(a2);
            a a3 = a(a2);
            this.f3863f -= a3.a(a2) * a3.a();
            c(a3.a(a2), a2.getClass());
            if (Log.isLoggable(a3.getTag(), 2)) {
                Log.v(a3.getTag(), "evicted: " + a3.a(a2));
            }
        }
    }

    public final <T> T a(a aVar) {
        return this.f3858a.a(aVar);
    }

    public final boolean a(int i2, Integer num) {
        return num != null && (c() || num.intValue() <= i2 * 8);
    }

    public synchronized void a() {
        b(0);
    }

    public synchronized void a(int i2) {
        if (i2 >= 40) {
            try {
                a();
            } catch (Throwable th) {
                throw th;
            }
        } else if (i2 >= 20 || i2 == 15) {
            b(this.f3862e / 2);
        }
    }

    public final NavigableMap<Integer, Integer> b(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f3860c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f3860c.put(cls, treeMap);
        return treeMap;
    }

    public final <T> a<T> a(T t) {
        return a(t.getClass());
    }

    public final <T> a<T> a(Class<T> cls) {
        a<T> aVar = this.f3861d.get(cls);
        if (aVar == null) {
            if (cls.equals(int[].class)) {
                aVar = new i();
            } else if (cls.equals(byte[].class)) {
                aVar = new g();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.f3861d.put(cls, aVar);
        }
        return aVar;
    }
}
