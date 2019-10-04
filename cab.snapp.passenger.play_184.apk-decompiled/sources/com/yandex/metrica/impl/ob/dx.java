package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.bv;
import java.util.HashSet;
import java.util.Set;

public class dx {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5936a;

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f5937b;
    private int c;
    private int d;

    public dx() {
        this(false, 0, 0, (Set<Integer>) new HashSet());
    }

    public dx(boolean z, int i, int i2, int[] iArr) {
        this(z, i, i2, bv.a(iArr));
    }

    public dx(boolean z, int i, int i2, Set<Integer> set) {
        this.f5936a = z;
        this.f5937b = set;
        this.c = i;
        this.d = i2;
    }

    public void a() {
        this.f5937b = new HashSet();
        this.d = 0;
    }

    public boolean b() {
        return this.f5936a;
    }

    public void a(boolean z) {
        this.f5936a = z;
    }

    public Set<Integer> c() {
        return this.f5937b;
    }

    public int d() {
        return this.d;
    }

    public int e() {
        return this.c;
    }

    public void a(int i) {
        this.c = i;
        this.d = 0;
    }

    public void b(int i) {
        this.f5937b.add(Integer.valueOf(i));
        this.d++;
    }
}
