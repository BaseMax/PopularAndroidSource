package com.webengage.sdk.android.utils;

public enum Gender {
    MALE,
    FEMALE,
    OTHER;

    public static Gender valueByString(String str) {
        try {
            return valueOf(str.toUpperCase());
        } catch (Exception unused) {
            return null;
        }
    }

    public final String toString() {
        return name().toLowerCase();
    }
}
