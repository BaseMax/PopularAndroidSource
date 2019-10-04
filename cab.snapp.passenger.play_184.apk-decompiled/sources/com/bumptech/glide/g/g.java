package com.bumptech.glide.g;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class g<T, Y> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<T, Y> f2078a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b  reason: collision with root package name */
    private final long f2079b;
    private long c;
    private long d;

    /* access modifiers changed from: protected */
    public int getSize(Y y) {
        return 1;
    }

    /* access modifiers changed from: protected */
    public void onItemEvicted(T t, Y y) {
    }

    public g(long j) {
        this.f2079b = j;
        this.c = j;
    }

    public synchronized void setSizeMultiplier(float f) {
        if (f >= 0.0f) {
            this.c = (long) Math.round(((float) this.f2079b) * f);
            a();
        } else {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
    }

    public synchronized long getMaxSize() {
        return this.c;
    }

    public synchronized long getCurrentSize() {
        return this.d;
    }

    public synchronized boolean contains(T t) {
        return this.f2078a.containsKey(t);
    }

    public synchronized Y get(T t) {
        return this.f2078a.get(t);
    }

    public synchronized Y put(T t, Y y) {
        long size = (long) getSize(y);
        if (size >= this.c) {
            onItemEvicted(t, y);
            return null;
        }
        if (y != null) {
            this.d += size;
        }
        Y put = this.f2078a.put(t, y);
        if (put != null) {
            this.d -= (long) getSize(put);
            if (!put.equals(y)) {
                onItemEvicted(t, put);
            }
        }
        a();
        return put;
    }

    public synchronized Y remove(T t) {
        Y remove;
        remove = this.f2078a.remove(t);
        if (remove != null) {
            this.d -= (long) getSize(remove);
        }
        return remove;
    }

    public void clearMemory() {
        a(0);
    }

    /* access modifiers changed from: protected */
    public final synchronized void a(long j) {
        while (this.d > j) {
            Iterator<Map.Entry<T, Y>> it = this.f2078a.entrySet().iterator();
            Map.Entry next = it.next();
            Object value = next.getValue();
            this.d -= (long) getSize(value);
            Object key = next.getKey();
            it.remove();
            onItemEvicted(key, value);
        }
    }

    private void a() {
        a(this.c);
    }
}
