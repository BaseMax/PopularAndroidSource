package com.yandex.metrica.impl.ob;

import java.util.Random;

public class lg {

    /* renamed from: a  reason: collision with root package name */
    private int f6371a;

    /* renamed from: b  reason: collision with root package name */
    private int f6372b;
    private Random c;
    private int d;

    public lg(int i) {
        if (i <= 0 || i > 31) {
            this.f6371a = 31;
        } else {
            this.f6371a = i;
        }
        this.c = new Random();
    }

    public int a() {
        int i = this.f6372b;
        if (i < this.f6371a) {
            this.f6372b = i + 1;
            this.d = 1 << this.f6372b;
        }
        return this.c.nextInt(this.d);
    }
}
