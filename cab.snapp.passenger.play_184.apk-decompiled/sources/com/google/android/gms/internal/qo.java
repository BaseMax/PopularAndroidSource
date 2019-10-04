package com.google.android.gms.internal;

final class qo {

    /* renamed from: a  reason: collision with root package name */
    private static final qm f3477a = c();

    /* renamed from: b  reason: collision with root package name */
    private static final qm f3478b = new qn();

    static qm a() {
        return f3477a;
    }

    static qm b() {
        return f3478b;
    }

    private static qm c() {
        try {
            return (qm) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
