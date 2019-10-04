package com.koushikdutta.async.e;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

public class f<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final LinkedHashMap<K, V> map;
    private long maxSize;
    private int missCount;
    private int putCount;
    private long size;

    /* access modifiers changed from: protected */
    public V create(K k) {
        return null;
    }

    /* access modifiers changed from: protected */
    public void entryRemoved(boolean z, K k, V v, V v2) {
    }

    /* access modifiers changed from: protected */
    public long sizeOf(K k, V v) {
        return 1;
    }

    public f(long j) {
        if (j > 0) {
            this.maxSize = j;
            this.map = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001a, code lost:
        r0 = create(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001e, code lost:
        if (r0 != null) goto L_0x0022;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0021, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0022, code lost:
        monitor-enter(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r6.createCount++;
        r1 = r6.map.put(r7, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x002f, code lost:
        if (r1 == null) goto L_0x0037;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0031, code lost:
        r6.map.put(r7, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0037, code lost:
        r6.size += safeSizeOf(r7, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0040, code lost:
        monitor-exit(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0041, code lost:
        if (r1 == null) goto L_0x0048;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0043, code lost:
        entryRemoved(false, r7, r0, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0047, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0048, code lost:
        trimToSize(r6.maxSize);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004d, code lost:
        return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final V get(K r7) {
        /*
            r6 = this;
            if (r7 == 0) goto L_0x0054
            monitor-enter(r6)
            java.util.LinkedHashMap<K, V> r0 = r6.map     // Catch:{ all -> 0x0051 }
            java.lang.Object r0 = r0.get(r7)     // Catch:{ all -> 0x0051 }
            if (r0 == 0) goto L_0x0013
            int r7 = r6.hitCount     // Catch:{ all -> 0x0051 }
            int r7 = r7 + 1
            r6.hitCount = r7     // Catch:{ all -> 0x0051 }
            monitor-exit(r6)     // Catch:{ all -> 0x0051 }
            return r0
        L_0x0013:
            int r0 = r6.missCount     // Catch:{ all -> 0x0051 }
            int r0 = r0 + 1
            r6.missCount = r0     // Catch:{ all -> 0x0051 }
            monitor-exit(r6)     // Catch:{ all -> 0x0051 }
            java.lang.Object r0 = r6.create(r7)
            if (r0 != 0) goto L_0x0022
            r7 = 0
            return r7
        L_0x0022:
            monitor-enter(r6)
            int r1 = r6.createCount     // Catch:{ all -> 0x004e }
            int r1 = r1 + 1
            r6.createCount = r1     // Catch:{ all -> 0x004e }
            java.util.LinkedHashMap<K, V> r1 = r6.map     // Catch:{ all -> 0x004e }
            java.lang.Object r1 = r1.put(r7, r0)     // Catch:{ all -> 0x004e }
            if (r1 == 0) goto L_0x0037
            java.util.LinkedHashMap<K, V> r2 = r6.map     // Catch:{ all -> 0x004e }
            r2.put(r7, r1)     // Catch:{ all -> 0x004e }
            goto L_0x0040
        L_0x0037:
            long r2 = r6.size     // Catch:{ all -> 0x004e }
            long r4 = r6.safeSizeOf(r7, r0)     // Catch:{ all -> 0x004e }
            long r2 = r2 + r4
            r6.size = r2     // Catch:{ all -> 0x004e }
        L_0x0040:
            monitor-exit(r6)     // Catch:{ all -> 0x004e }
            if (r1 == 0) goto L_0x0048
            r2 = 0
            r6.entryRemoved(r2, r7, r0, r1)
            return r1
        L_0x0048:
            long r1 = r6.maxSize
            r6.trimToSize(r1)
            return r0
        L_0x004e:
            r7 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x004e }
            throw r7
        L_0x0051:
            r7 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0051 }
            throw r7
        L_0x0054:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            java.lang.String r0 = "key == null"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.e.f.get(java.lang.Object):java.lang.Object");
    }

    public final V put(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.putCount++;
            this.size += safeSizeOf(k, v);
            put = this.map.put(k, v);
            if (put != null) {
                this.size -= safeSizeOf(k, put);
            }
        }
        if (put != null) {
            entryRemoved(false, k, put, v);
        }
        trimToSize(this.maxSize);
        return put;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0059, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void trimToSize(long r7) {
        /*
            r6 = this;
        L_0x0000:
            monitor-enter(r6)
            long r0 = r6.size     // Catch:{ all -> 0x0079 }
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 < 0) goto L_0x005a
            java.util.LinkedHashMap<K, V> r0 = r6.map     // Catch:{ all -> 0x0079 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0079 }
            if (r0 == 0) goto L_0x0017
            long r0 = r6.size     // Catch:{ all -> 0x0079 }
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L_0x005a
        L_0x0017:
            long r0 = r6.size     // Catch:{ all -> 0x0079 }
            int r2 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r2 <= 0) goto L_0x0058
            java.util.LinkedHashMap<K, V> r0 = r6.map     // Catch:{ all -> 0x0079 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0079 }
            if (r0 == 0) goto L_0x0026
            goto L_0x0058
        L_0x0026:
            java.util.LinkedHashMap<K, V> r0 = r6.map     // Catch:{ all -> 0x0079 }
            java.util.Set r0 = r0.entrySet()     // Catch:{ all -> 0x0079 }
            java.util.Iterator r0 = r0.iterator()     // Catch:{ all -> 0x0079 }
            java.lang.Object r0 = r0.next()     // Catch:{ all -> 0x0079 }
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch:{ all -> 0x0079 }
            java.lang.Object r1 = r0.getKey()     // Catch:{ all -> 0x0079 }
            java.lang.Object r0 = r0.getValue()     // Catch:{ all -> 0x0079 }
            java.util.LinkedHashMap<K, V> r2 = r6.map     // Catch:{ all -> 0x0079 }
            r2.remove(r1)     // Catch:{ all -> 0x0079 }
            long r2 = r6.size     // Catch:{ all -> 0x0079 }
            long r4 = r6.safeSizeOf(r1, r0)     // Catch:{ all -> 0x0079 }
            long r2 = r2 - r4
            r6.size = r2     // Catch:{ all -> 0x0079 }
            int r2 = r6.evictionCount     // Catch:{ all -> 0x0079 }
            r3 = 1
            int r2 = r2 + r3
            r6.evictionCount = r2     // Catch:{ all -> 0x0079 }
            monitor-exit(r6)     // Catch:{ all -> 0x0079 }
            r2 = 0
            r6.entryRemoved(r3, r1, r0, r2)
            goto L_0x0000
        L_0x0058:
            monitor-exit(r6)     // Catch:{ all -> 0x0079 }
            return
        L_0x005a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0079 }
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x0079 }
            r8.<init>()     // Catch:{ all -> 0x0079 }
            java.lang.Class r0 = r6.getClass()     // Catch:{ all -> 0x0079 }
            java.lang.String r0 = r0.getName()     // Catch:{ all -> 0x0079 }
            r8.append(r0)     // Catch:{ all -> 0x0079 }
            java.lang.String r0 = ".sizeOf() is reporting inconsistent results!"
            r8.append(r0)     // Catch:{ all -> 0x0079 }
            java.lang.String r8 = r8.toString()     // Catch:{ all -> 0x0079 }
            r7.<init>(r8)     // Catch:{ all -> 0x0079 }
            throw r7     // Catch:{ all -> 0x0079 }
        L_0x0079:
            r7 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0079 }
            goto L_0x007d
        L_0x007c:
            throw r7
        L_0x007d:
            goto L_0x007c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.e.f.trimToSize(long):void");
    }

    public final V remove(K k) {
        V remove;
        if (k != null) {
            synchronized (this) {
                remove = this.map.remove(k);
                if (remove != null) {
                    this.size -= safeSizeOf(k, remove);
                }
            }
            if (remove != null) {
                entryRemoved(false, k, remove, null);
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    private long safeSizeOf(K k, V v) {
        long sizeOf = sizeOf(k, v);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final synchronized long size() {
        return this.size;
    }

    public void setMaxSize(long j) {
        this.maxSize = j;
    }

    public final synchronized long maxSize() {
        return this.maxSize;
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final synchronized int missCount() {
        return this.missCount;
    }

    public final synchronized int createCount() {
        return this.createCount;
    }

    public final synchronized int putCount() {
        return this.putCount;
    }

    public final synchronized int evictionCount() {
        return this.evictionCount;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.map);
    }

    public final synchronized String toString() {
        int i;
        i = this.hitCount + this.missCount;
        return String.format(Locale.ENGLISH, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[]{Long.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.missCount), Integer.valueOf(i != 0 ? (this.hitCount * 100) / i : 0)});
    }
}
