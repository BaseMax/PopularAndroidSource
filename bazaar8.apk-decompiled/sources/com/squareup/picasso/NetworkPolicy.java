package com.squareup.picasso;

public enum NetworkPolicy {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);
    
    public final int index;

    /* access modifiers changed from: public */
    NetworkPolicy(int i2) {
        this.index = i2;
    }

    public static boolean a(int i2) {
        return (i2 & OFFLINE.index) != 0;
    }

    public static boolean b(int i2) {
        return (i2 & NO_CACHE.index) == 0;
    }

    public static boolean c(int i2) {
        return (i2 & NO_STORE.index) == 0;
    }
}
