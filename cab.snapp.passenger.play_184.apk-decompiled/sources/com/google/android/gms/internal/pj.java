package com.google.android.gms.internal;

final class pj {

    /* renamed from: a  reason: collision with root package name */
    private static Class<?> f3440a = a();

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static pk zzcwz() {
        Class<?> cls = f3440a;
        if (cls != null) {
            try {
                return (pk) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
            }
        }
        return pk.f3441a;
    }
}
