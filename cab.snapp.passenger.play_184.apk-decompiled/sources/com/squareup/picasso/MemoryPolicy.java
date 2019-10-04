package com.squareup.picasso;

public enum MemoryPolicy {
    NO_CACHE(1),
    NO_STORE(2);
    

    /* renamed from: a  reason: collision with root package name */
    final int f5242a;

    static boolean a(int i) {
        return (i & NO_CACHE.f5242a) == 0;
    }

    static boolean b(int i) {
        return (i & NO_STORE.f5242a) == 0;
    }

    private MemoryPolicy(int i) {
        this.f5242a = i;
    }
}
