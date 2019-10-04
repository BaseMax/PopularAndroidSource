package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.ke;

public abstract class jq implements jg, jz {

    /* renamed from: a  reason: collision with root package name */
    private final String f6181a;

    /* renamed from: b  reason: collision with root package name */
    private final int f6182b;
    private final pa<String> c;
    private final ji d;

    jq(int i, String str, pa<String> paVar, ji jiVar) {
        this.f6182b = i;
        this.f6181a = str;
        this.c = paVar;
        this.d = jiVar;
    }

    public String c() {
        return this.f6181a;
    }

    public int d() {
        return this.f6182b;
    }

    public ji e() {
        return this.d;
    }

    public final ke.a.C0115a a() {
        ke.a.C0115a aVar = new ke.a.C0115a();
        aVar.c = d();
        aVar.f6211b = c().getBytes();
        aVar.e = new ke.a.c();
        aVar.d = new ke.a.b();
        return aVar;
    }

    /* access modifiers changed from: protected */
    public boolean f() {
        oy a2 = this.c.a(c());
        if (a2.a()) {
            return true;
        }
        if (nk.f().b()) {
            nk f = nk.f();
            f.b("Attribute " + c() + " of type " + jx.a(d()) + " is skipped because " + a2.b());
        }
        return false;
    }
}
