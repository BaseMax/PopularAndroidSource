package com.yandex.metrica.impl.ob;

public class li implements lj {

    /* renamed from: a  reason: collision with root package name */
    protected int f6374a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f6375b;
    private boolean c;

    public li(int i) {
        this.f6375b = i;
    }

    public boolean b() {
        return this.c && this.f6374a < this.f6375b;
    }

    public void a() {
        this.f6374a++;
        this.c = false;
    }

    public void c() {
        this.c = true;
    }
}
