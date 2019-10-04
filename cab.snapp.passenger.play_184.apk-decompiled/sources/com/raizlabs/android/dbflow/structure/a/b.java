package com.raizlabs.android.dbflow.structure.a;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

@Deprecated
public final class b<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<K, V> f5197a;

    /* renamed from: b  reason: collision with root package name */
    private int f5198b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    public b(int i) {
        if (i > 0) {
            this.c = i;
            this.f5197a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final void resize(int i) {
        if (i > 0) {
            synchronized (this) {
                this.c = i;
            }
            trimToSize(i);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final V get(K k) {
        if (k != null) {
            synchronized (this) {
                V v = this.f5197a.get(k);
                if (v != null) {
                    this.g++;
                    return v;
                }
                this.h++;
                return null;
            }
        }
        throw new NullPointerException("key == null");
    }

    public final V put(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.d++;
            this.f5198b++;
            put = this.f5197a.put(k, v);
            if (put != null) {
                this.f5198b--;
            }
        }
        trimToSize(this.c);
        return put;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0068, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void trimToSize(int r3) {
        /*
            r2 = this;
        L_0x0000:
            monitor-enter(r2)
            int r0 = r2.f5198b     // Catch:{ all -> 0x0069 }
            if (r0 < 0) goto L_0x004a
            java.util.LinkedHashMap<K, V> r0 = r2.f5197a     // Catch:{ all -> 0x0069 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0069 }
            if (r0 == 0) goto L_0x0011
            int r0 = r2.f5198b     // Catch:{ all -> 0x0069 }
            if (r0 != 0) goto L_0x004a
        L_0x0011:
            int r0 = r2.f5198b     // Catch:{ all -> 0x0069 }
            if (r0 <= r3) goto L_0x0048
            java.util.LinkedHashMap<K, V> r0 = r2.f5197a     // Catch:{ all -> 0x0069 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0069 }
            if (r0 == 0) goto L_0x001e
            goto L_0x0048
        L_0x001e:
            java.util.LinkedHashMap<K, V> r0 = r2.f5197a     // Catch:{ all -> 0x0069 }
            java.util.Set r0 = r0.entrySet()     // Catch:{ all -> 0x0069 }
            java.util.Iterator r0 = r0.iterator()     // Catch:{ all -> 0x0069 }
            java.lang.Object r0 = r0.next()     // Catch:{ all -> 0x0069 }
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch:{ all -> 0x0069 }
            java.lang.Object r1 = r0.getKey()     // Catch:{ all -> 0x0069 }
            r0.getValue()     // Catch:{ all -> 0x0069 }
            java.util.LinkedHashMap<K, V> r0 = r2.f5197a     // Catch:{ all -> 0x0069 }
            r0.remove(r1)     // Catch:{ all -> 0x0069 }
            int r0 = r2.f5198b     // Catch:{ all -> 0x0069 }
            int r0 = r0 + -1
            r2.f5198b = r0     // Catch:{ all -> 0x0069 }
            int r0 = r2.f     // Catch:{ all -> 0x0069 }
            int r0 = r0 + 1
            r2.f = r0     // Catch:{ all -> 0x0069 }
            monitor-exit(r2)     // Catch:{ all -> 0x0069 }
            goto L_0x0000
        L_0x0048:
            monitor-exit(r2)     // Catch:{ all -> 0x0069 }
            return
        L_0x004a:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0069 }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x0069 }
            r0.<init>()     // Catch:{ all -> 0x0069 }
            java.lang.Class r1 = r2.getClass()     // Catch:{ all -> 0x0069 }
            java.lang.String r1 = r1.getName()     // Catch:{ all -> 0x0069 }
            r0.append(r1)     // Catch:{ all -> 0x0069 }
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch:{ all -> 0x0069 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0069 }
            r3.<init>(r0)     // Catch:{ all -> 0x0069 }
            throw r3     // Catch:{ all -> 0x0069 }
        L_0x0069:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0069 }
            goto L_0x006d
        L_0x006c:
            throw r3
        L_0x006d:
            goto L_0x006c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.raizlabs.android.dbflow.structure.a.b.trimToSize(int):void");
    }

    public final V remove(K k) {
        V remove;
        if (k != null) {
            synchronized (this) {
                remove = this.f5197a.remove(k);
                if (remove != null) {
                    this.f5198b--;
                }
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final synchronized int size() {
        return this.f5198b;
    }

    public final synchronized int maxSize() {
        return this.c;
    }

    public final synchronized int hitCount() {
        return this.g;
    }

    public final synchronized int missCount() {
        return this.h;
    }

    public final synchronized int createCount() {
        return this.e;
    }

    public final synchronized int putCount() {
        return this.d;
    }

    public final synchronized int evictionCount() {
        return this.f;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.f5197a);
    }

    public final synchronized String toString() {
        int i;
        i = this.g + this.h;
        return String.format(Locale.getDefault(), "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(i != 0 ? (this.g * 100) / i : 0)});
    }
}
