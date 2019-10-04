package com.google.android.exoplayer2.source;

import c.e.a.a.Z;
import c.e.a.a.j.o;
import c.e.a.a.j.q;
import c.e.a.a.j.r;
import c.e.a.a.j.u;
import c.e.a.a.j.v;
import c.e.a.a.j.x;
import c.e.a.a.n.A;
import c.e.a.a.n.e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public final class MergingMediaSource extends o<Integer> {

    /* renamed from: i  reason: collision with root package name */
    public final v[] f12691i;

    /* renamed from: j  reason: collision with root package name */
    public final Z[] f12692j;

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList<v> f12693k;

    /* renamed from: l  reason: collision with root package name */
    public final q f12694l;
    public Object m;
    public int n;
    public IllegalMergeException o;

    public static final class IllegalMergeException extends IOException {
        public final int reason;

        public IllegalMergeException(int i2) {
            this.reason = i2;
        }
    }

    public MergingMediaSource(v... vVarArr) {
        this(new r(), vVarArr);
    }

    public MergingMediaSource(q qVar, v... vVarArr) {
        this.f12691i = vVarArr;
        this.f12694l = qVar;
        this.f12693k = new ArrayList<>(Arrays.asList(vVarArr));
        this.n = -1;
        this.f12692j = new Z[vVarArr.length];
    }

    public void a(A a2) {
        super.a(a2);
        for (int i2 = 0; i2 < this.f12691i.length; i2++) {
            a(Integer.valueOf(i2), this.f12691i[i2]);
        }
    }

    public void b() {
        super.b();
        Arrays.fill(this.f12692j, null);
        this.m = null;
        this.n = -1;
        this.o = null;
        this.f12693k.clear();
        Collections.addAll(this.f12693k, this.f12691i);
    }

    public void a() {
        IllegalMergeException illegalMergeException = this.o;
        if (illegalMergeException == null) {
            super.a();
            return;
        }
        throw illegalMergeException;
    }

    public u a(v.a aVar, e eVar, long j2) {
        u[] uVarArr = new u[this.f12691i.length];
        int a2 = this.f12692j[0].a(aVar.f8976a);
        for (int i2 = 0; i2 < uVarArr.length; i2++) {
            uVarArr[i2] = this.f12691i[i2].a(aVar.a(this.f12692j[i2].a(a2)), eVar, j2);
        }
        return new x(this.f12694l, uVarArr);
    }

    public void a(u uVar) {
        x xVar = (x) uVar;
        int i2 = 0;
        while (true) {
            v[] vVarArr = this.f12691i;
            if (i2 < vVarArr.length) {
                vVarArr[i2].a(xVar.f9000a[i2]);
                i2++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public void b(Integer num, v vVar, Z z, Object obj) {
        if (this.o == null) {
            this.o = a(z);
        }
        if (this.o == null) {
            this.f12693k.remove(vVar);
            this.f12692j[num.intValue()] = z;
            if (vVar == this.f12691i[0]) {
                this.m = obj;
            }
            if (this.f12693k.isEmpty()) {
                a(this.f12692j[0], this.m);
            }
        }
    }

    public v.a a(Integer num, v.a aVar) {
        if (num.intValue() == 0) {
            return aVar;
        }
        return null;
    }

    public final IllegalMergeException a(Z z) {
        if (this.n == -1) {
            this.n = z.a();
        } else if (z.a() != this.n) {
            return new IllegalMergeException(0);
        }
        return null;
    }
}
