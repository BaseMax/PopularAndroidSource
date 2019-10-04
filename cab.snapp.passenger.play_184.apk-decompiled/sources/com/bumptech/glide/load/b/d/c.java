package com.bumptech.glide.load.b.d;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<d, Integer> f2184a;

    /* renamed from: b  reason: collision with root package name */
    private final List<d> f2185b;
    private int c;
    private int d;

    public c(Map<d, Integer> map) {
        this.f2184a = map;
        this.f2185b = new ArrayList(map.keySet());
        for (Integer intValue : map.values()) {
            this.c += intValue.intValue();
        }
    }

    public final d remove() {
        d dVar = this.f2185b.get(this.d);
        Integer num = this.f2184a.get(dVar);
        if (num.intValue() == 1) {
            this.f2184a.remove(dVar);
            this.f2185b.remove(this.d);
        } else {
            this.f2184a.put(dVar, Integer.valueOf(num.intValue() - 1));
        }
        this.c--;
        this.d = this.f2185b.isEmpty() ? 0 : (this.d + 1) % this.f2185b.size();
        return dVar;
    }

    public final int getSize() {
        return this.c;
    }

    public final boolean isEmpty() {
        return this.c == 0;
    }
}
