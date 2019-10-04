package com.b.a;

final class l {
    private l() {
    }

    public static void checkNull(String str, Object obj) {
        if (obj == null) {
            throw new NullPointerException(str + " should not be null");
        }
    }

    public static void checkNullOrEmpty(String str, String str2) {
        if (isEmpty(str2)) {
            throw new NullPointerException(str + " should not be null or empty");
        }
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }
}
