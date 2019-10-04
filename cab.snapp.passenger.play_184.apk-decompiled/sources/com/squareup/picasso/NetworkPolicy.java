package com.squareup.picasso;

public enum NetworkPolicy {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);
    

    /* renamed from: a  reason: collision with root package name */
    final int f5243a;

    public static boolean shouldReadFromDiskCache(int i) {
        return (i & NO_CACHE.f5243a) == 0;
    }

    public static boolean shouldWriteToDiskCache(int i) {
        return (i & NO_STORE.f5243a) == 0;
    }

    public static boolean isOfflineOnly(int i) {
        return (i & OFFLINE.f5243a) != 0;
    }

    private NetworkPolicy(int i) {
        this.f5243a = i;
    }
}
