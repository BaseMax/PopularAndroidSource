package com.yandex.metrica.impl.ob;

public final class oy {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f6492a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6493b;

    private oy(pa<?> paVar, boolean z, String str) {
        paVar.getClass();
        this.f6492a = z;
        this.f6493b = str;
    }

    public final boolean a() {
        return this.f6492a;
    }

    public final String b() {
        return this.f6493b;
    }

    public static final oy a(pa<?> paVar) {
        return new oy(paVar, true, "");
    }

    public static final oy a(pa<?> paVar, String str) {
        return new oy(paVar, false, str);
    }
}
