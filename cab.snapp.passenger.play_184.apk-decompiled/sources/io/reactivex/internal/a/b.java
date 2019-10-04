package io.reactivex.internal.a;

import io.reactivex.e.d;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final d<Object, Object> f6761a = new a();

    static final class a implements d<Object, Object> {
        a() {
        }

        public final boolean test(Object obj, Object obj2) {
            return b.equals(obj, obj2);
        }
    }

    public static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    public static int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    private b() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> T requireNonNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hashCode(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static <T> d<T, T> equalsPredicate() {
        return f6761a;
    }

    public static int verifyPositive(int i, String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }

    public static long verifyPositive(long j, String str) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j);
    }

    @Deprecated
    public static long requireNonNull(long j, String str) {
        throw new InternalError("Null check on a primitive: ".concat(String.valueOf(str)));
    }
}
