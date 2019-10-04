package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.t;

public class dw {

    /* renamed from: a  reason: collision with root package name */
    private final int f5934a;

    /* renamed from: b  reason: collision with root package name */
    private final dz f5935b;
    private dx c;

    public dw(Context context, z zVar, int i) {
        this(new dz(context, zVar), i);
    }

    public t a(String str) {
        if (this.c == null) {
            b();
        }
        int hashCode = str.hashCode();
        if (this.c.c().contains(Integer.valueOf(hashCode))) {
            return t.NON_FIRST_OCCURENCE;
        }
        t tVar = this.c.b() ? t.FIRST_OCCURRENCE : t.UNKNOWN;
        if (this.c.d() < 1000) {
            this.c.b(hashCode);
        } else {
            this.c.a(false);
        }
        c();
        return tVar;
    }

    public void a() {
        if (this.c == null) {
            b();
        }
        this.c.a();
        this.c.a(true);
        c();
    }

    private void b() {
        this.c = this.f5935b.a();
        int e = this.c.e();
        int i = this.f5934a;
        if (e != i) {
            this.c.a(i);
            c();
        }
    }

    private void c() {
        this.f5935b.a(this.c);
    }

    dw(dz dzVar, int i) {
        this.f5934a = i;
        this.f5935b = dzVar;
    }
}
