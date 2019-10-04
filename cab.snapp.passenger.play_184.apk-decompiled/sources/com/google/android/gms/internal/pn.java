package com.google.android.gms.internal;

final class pn {

    /* renamed from: a  reason: collision with root package name */
    private static final pl<?> f3443a = new pm();

    /* renamed from: b  reason: collision with root package name */
    private static final pl<?> f3444b = c();

    static pl<?> a() {
        return f3443a;
    }

    static pl<?> b() {
        pl<?> plVar = f3444b;
        if (plVar != null) {
            return plVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static pl<?> c() {
        try {
            return (pl) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
