package com.squareup.picasso;

public enum MemoryPolicy {
    NO_CACHE(1),
    NO_STORE(2);
    
    public final int index;

    /* access modifiers changed from: public */
    MemoryPolicy(int i2) {
        this.index = i2;
    }

    public static boolean a(int i2) {
        return (i2 & NO_CACHE.index) == 0;
    }

    public static boolean b(int i2) {
        return (i2 & NO_STORE.index) == 0;
    }
}
