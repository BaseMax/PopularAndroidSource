package com.a.a.c;

final class ao {
    public static final int WIRETYPE_END_GROUP = 4;
    public static final int WIRETYPE_FIXED32 = 5;
    public static final int WIRETYPE_FIXED64 = 1;
    public static final int WIRETYPE_LENGTH_DELIMITED = 2;
    public static final int WIRETYPE_START_GROUP = 3;
    public static final int WIRETYPE_VARINT = 0;

    /* renamed from: a  reason: collision with root package name */
    static final int f1742a = 11;

    /* renamed from: b  reason: collision with root package name */
    static final int f1743b = 12;
    static final int c = 16;
    static final int d = 26;

    static int a(int i, int i2) {
        return (i << 3) | i2;
    }

    public static int getTagFieldNumber(int i) {
        return i >>> 3;
    }

    private ao() {
    }
}
