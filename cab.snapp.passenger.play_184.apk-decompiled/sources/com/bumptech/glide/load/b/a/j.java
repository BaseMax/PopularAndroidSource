package com.bumptech.glide.load.b.a;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

public final class j implements b {

    /* renamed from: a  reason: collision with root package name */
    private final h<a, Object> f2134a;

    /* renamed from: b  reason: collision with root package name */
    private final b f2135b;
    private final Map<Class<?>, NavigableMap<Integer, Integer>> c;
    private final Map<Class<?>, a<?>> d;
    private final int e;
    private int f;

    static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        int f2136a;

        /* renamed from: b  reason: collision with root package name */
        private final b f2137b;
        private Class<?> c;

        a(b bVar) {
            this.f2137b = bVar;
        }

        /* access modifiers changed from: package-private */
        public final void a(int i, Class<?> cls) {
            this.f2136a = i;
            this.c = cls;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f2136a == aVar.f2136a && this.c == aVar.c) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return "Key{size=" + this.f2136a + "array=" + this.c + '}';
        }

        public final void offer() {
            this.f2137b.offer(this);
        }

        public final int hashCode() {
            int i = this.f2136a * 31;
            Class<?> cls = this.c;
            return i + (cls != null ? cls.hashCode() : 0);
        }
    }

    static final class b extends d<a> {
        b() {
        }

        /* access modifiers changed from: package-private */
        public final a a(int i, Class<?> cls) {
            a aVar = (a) b();
            aVar.a(i, cls);
            return aVar;
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ m a() {
            return new a(this);
        }
    }

    public j() {
        this.f2134a = new h<>();
        this.f2135b = new b();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = 4194304;
    }

    public j(int i) {
        this.f2134a = new h<>();
        this.f2135b = new b();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = i;
    }

    @Deprecated
    public final <T> void put(T t, Class<T> cls) {
        put(t);
    }

    public final synchronized <T> void put(T t) {
        Class<?> cls = t.getClass();
        a<?> b2 = b(cls);
        int arrayLength = b2.getArrayLength(t);
        int elementSizeInBytes = b2.getElementSizeInBytes() * arrayLength;
        int i = 1;
        if (elementSizeInBytes <= this.e / 2) {
            a a2 = this.f2135b.a(arrayLength, cls);
            this.f2134a.put(a2, t);
            NavigableMap<Integer, Integer> a3 = a(cls);
            Integer num = (Integer) a3.get(Integer.valueOf(a2.f2136a));
            Integer valueOf = Integer.valueOf(a2.f2136a);
            if (num != null) {
                i = 1 + num.intValue();
            }
            a3.put(valueOf, Integer.valueOf(i));
            this.f += elementSizeInBytes;
            a(this.e);
        }
    }

    public final synchronized <T> T getExact(int i, Class<T> cls) {
        return a(this.f2135b.a(i, cls), cls);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized <T> T get(int r6, java.lang.Class<T> r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.NavigableMap r0 = r5.a((java.lang.Class<?>) r7)     // Catch:{ all -> 0x0048 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)     // Catch:{ all -> 0x0048 }
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch:{ all -> 0x0048 }
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch:{ all -> 0x0048 }
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x002e
            int r3 = r5.f     // Catch:{ all -> 0x0048 }
            if (r3 == 0) goto L_0x0022
            int r3 = r5.e     // Catch:{ all -> 0x0048 }
            int r4 = r5.f     // Catch:{ all -> 0x0048 }
            int r3 = r3 / r4
            r4 = 2
            if (r3 < r4) goto L_0x0020
            goto L_0x0022
        L_0x0020:
            r3 = 0
            goto L_0x0023
        L_0x0022:
            r3 = 1
        L_0x0023:
            if (r3 != 0) goto L_0x002f
            int r3 = r0.intValue()     // Catch:{ all -> 0x0048 }
            int r4 = r6 * 8
            if (r3 > r4) goto L_0x002e
            goto L_0x002f
        L_0x002e:
            r1 = 0
        L_0x002f:
            if (r1 == 0) goto L_0x003c
            com.bumptech.glide.load.b.a.j$b r6 = r5.f2135b     // Catch:{ all -> 0x0048 }
            int r0 = r0.intValue()     // Catch:{ all -> 0x0048 }
            com.bumptech.glide.load.b.a.j$a r6 = r6.a(r0, r7)     // Catch:{ all -> 0x0048 }
            goto L_0x0042
        L_0x003c:
            com.bumptech.glide.load.b.a.j$b r0 = r5.f2135b     // Catch:{ all -> 0x0048 }
            com.bumptech.glide.load.b.a.j$a r6 = r0.a(r6, r7)     // Catch:{ all -> 0x0048 }
        L_0x0042:
            java.lang.Object r6 = r5.a((com.bumptech.glide.load.b.a.j.a) r6, r7)     // Catch:{ all -> 0x0048 }
            monitor-exit(r5)
            return r6
        L_0x0048:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.j.get(int, java.lang.Class):java.lang.Object");
    }

    private <T> T a(a aVar, Class<T> cls) {
        a<T> b2 = b(cls);
        T a2 = a(aVar);
        if (a2 != null) {
            this.f -= b2.getArrayLength(a2) * b2.getElementSizeInBytes();
            a(b2.getArrayLength(a2), (Class<?>) cls);
        }
        if (a2 != null) {
            return a2;
        }
        if (Log.isLoggable(b2.getTag(), 2)) {
            b2.getTag();
            StringBuilder sb = new StringBuilder("Allocated ");
            sb.append(aVar.f2136a);
            sb.append(" bytes");
        }
        return b2.newArray(aVar.f2136a);
    }

    private <T> T a(a aVar) {
        return this.f2134a.get(aVar);
    }

    public final synchronized void clearMemory() {
        a(0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x001c, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void trimMemory(int r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            r0 = 40
            if (r2 < r0) goto L_0x000c
            r1.clearMemory()     // Catch:{ all -> 0x000a }
            monitor-exit(r1)
            return
        L_0x000a:
            r2 = move-exception
            goto L_0x001d
        L_0x000c:
            r0 = 20
            if (r2 >= r0) goto L_0x0014
            r0 = 15
            if (r2 != r0) goto L_0x001b
        L_0x0014:
            int r2 = r1.e     // Catch:{ all -> 0x000a }
            int r2 = r2 / 2
            r1.a((int) r2)     // Catch:{ all -> 0x000a }
        L_0x001b:
            monitor-exit(r1)
            return
        L_0x001d:
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.j.trimMemory(int):void");
    }

    private void a(int i) {
        while (this.f > i) {
            Object removeLast = this.f2134a.removeLast();
            com.bumptech.glide.g.j.checkNotNull(removeLast);
            a a2 = a(removeLast);
            this.f -= a2.getArrayLength(removeLast) * a2.getElementSizeInBytes();
            a(a2.getArrayLength(removeLast), removeLast.getClass());
            if (Log.isLoggable(a2.getTag(), 2)) {
                a2.getTag();
                new StringBuilder("evicted: ").append(a2.getArrayLength(removeLast));
            }
        }
    }

    private void a(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> a2 = a(cls);
        Integer num = (Integer) a2.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        } else if (num.intValue() == 1) {
            a2.remove(Integer.valueOf(i));
        } else {
            a2.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
        }
    }

    private NavigableMap<Integer, Integer> a(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.c.put(cls, treeMap);
        return treeMap;
    }

    private <T> a<T> a(T t) {
        return b(t.getClass());
    }

    private <T> a<T> b(Class<T> cls) {
        a<T> aVar = this.d.get(cls);
        if (aVar == null) {
            if (cls.equals(int[].class)) {
                aVar = new i();
            } else if (cls.equals(byte[].class)) {
                aVar = new g();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.d.put(cls, aVar);
        }
        return aVar;
    }
}
