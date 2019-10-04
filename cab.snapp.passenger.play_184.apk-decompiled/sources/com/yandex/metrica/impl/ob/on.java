package com.yandex.metrica.impl.ob;

public class on {

    /* renamed from: a  reason: collision with root package name */
    private final oq f6483a;

    /* renamed from: b  reason: collision with root package name */
    private final oq f6484b;
    private final ok c;
    private final String d;

    public on(int i, int i2, int i3, String str) {
        this.c = new ok(i);
        this.f6483a = new oq(i2, str + "map key");
        this.f6484b = new oq(i3, str + "map value");
        this.d = str;
    }

    public oq a() {
        return this.f6483a;
    }

    public oq b() {
        return this.f6484b;
    }

    public ok c() {
        return this.c;
    }

    public void a(String str) {
        if (nk.f().b()) {
            nk.f().b("The %s has reached the limit of %d items. Item with key %s will be ignored", this.d, Integer.valueOf(this.c.a()), str);
        }
    }
}
