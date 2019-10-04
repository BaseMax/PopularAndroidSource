package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.impl.an;
import com.yandex.metrica.impl.bu;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.kv;
import com.yandex.metrica.impl.v;

public class x implements ai<bd>, lx {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6507a;

    /* renamed from: b  reason: collision with root package name */
    private final z f6508b;
    private ls c;
    /* access modifiers changed from: private */
    public mb d;
    private t e;
    private an f;
    private cc<cb, x> g;
    private bu<x> h;
    private final aa<bd> i = new aa<>();
    private kv j;
    private final kv.a k;
    private ki l;

    public lx e() {
        return this;
    }

    public x(Context context, ls lsVar, z zVar, t tVar, kv kvVar, an anVar) {
        this.f6507a = context.getApplicationContext();
        this.f6508b = zVar;
        this.e = tVar;
        this.c = lsVar;
        this.f = anVar;
        this.g = new cc<>(new bu(this));
        this.h = new bu<>(this, new mf(this, this.c), this.f);
        this.d = this.c.d(this, tVar);
        this.j = kvVar;
        this.k = new kv.a() {
            public boolean a(kw kwVar) {
                if (!TextUtils.isEmpty(kwVar.f6342a)) {
                    x.this.d.a(kwVar.f6342a);
                }
                return false;
            }
        };
        this.j.a(this.k);
    }

    public void a(t tVar) {
        this.e = tVar;
    }

    public synchronized void a(bd bdVar) {
        this.i.a(bdVar);
    }

    public synchronized void b(bd bdVar) {
        this.i.b(bdVar);
        if (this.i.b()) {
            this.j.b(this.k);
            this.c.a((ah<? extends bb>) this);
        }
    }

    public void a(i iVar, bd bdVar) {
        this.g.a(iVar, bdVar);
    }

    public t a() {
        return this.e;
    }

    public z b() {
        return this.f6508b;
    }

    public void a(lu luVar) {
        for (bd a2 : this.i.a()) {
            a2.a(luVar);
        }
    }

    public Context c() {
        return this.f6507a;
    }

    public synchronized boolean d() {
        return this.i.b();
    }

    public void a(lx lxVar) {
        if (this.d.d()) {
            this.h.d();
        } else {
            lxVar.a(this.d.f());
        }
    }

    public kv f() {
        return this.j;
    }

    public void a(ma maVar) {
        for (bd a2 : this.i.a()) {
            a2.a(maVar);
        }
        if (maVar != null) {
            if (this.l == null) {
                this.l = v.a().e();
            }
            this.l.a(maVar.u, maVar.r);
        }
    }
}
