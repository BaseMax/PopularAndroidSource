package com.google.android.gms.common.util;

import java.util.regex.Pattern;

public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3017a = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzgs(String str) {
        return str == null || str.trim().isEmpty();
    }
}
