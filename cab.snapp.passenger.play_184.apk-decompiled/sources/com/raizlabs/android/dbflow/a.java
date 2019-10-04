package com.raizlabs.android.dbflow;

public final class a {
    public static boolean isNotNullOrEmpty(String str) {
        return str != null && !str.equals("") && str.length() > 0;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.equals("") || str.length() <= 0;
    }
}
