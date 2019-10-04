package io.reactivex.internal.util;

public final class m {
    public static boolean isPowerOfTwo(int i) {
        return (i & (i + -1)) == 0;
    }

    private m() {
        throw new IllegalStateException("No instances!");
    }

    public static int roundToPowerOfTwo(int i) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i - 1));
    }
}
