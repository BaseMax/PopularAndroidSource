package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.an;
import com.yandex.metrica.impl.ao;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.ai;
import com.yandex.metrica.impl.ob.ak;
import com.yandex.metrica.impl.s;

public class ar<COMPONENT extends ak & ai<? extends bb>> implements ad, ag<bb> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5867a;

    /* renamed from: b  reason: collision with root package name */
    private final z f5868b;
    private final an c;
    private final be<COMPONENT> d;
    private t e;
    private COMPONENT f;
    private aj g;
    private final aa<bb> h;

    public ar(Context context, z zVar, t tVar, be<COMPONENT> beVar) {
        this(context, zVar, tVar, beVar, new ao(), new aa());
    }

    public ar(Context context, z zVar, t tVar, be<COMPONENT> beVar, ao aoVar, aa<bb> aaVar) {
        this.f5867a = context;
        this.f5868b = zVar;
        this.e = tVar;
        this.c = aoVar.a(this.f5868b);
        this.d = beVar;
        this.h = aaVar;
    }

    public synchronized void a(t tVar) {
        this.e = tVar;
        if (this.g != null) {
            this.g.a(tVar);
        }
        if (this.f != null) {
            ((ag) this.f).a(tVar);
        }
    }

    public synchronized void a(bb bbVar) {
        this.h.a(bbVar);
    }

    public synchronized void b(bb bbVar) {
        this.h.b(bbVar);
    }

    public synchronized boolean d() {
        return this.h.b();
    }

    private aj a() {
        if (this.g == null) {
            this.g = this.d.b(this.f5867a, this.f5868b, this.e, this.c);
        }
        return this.g;
    }

    public void a(i iVar) {
        a().f();
        if (s.d(iVar.e())) {
            a().a(iVar);
            return;
        }
        if (this.f == null) {
            this.f = this.d.a(this.f5867a, this.f5868b, this.e, this.c);
        }
        this.f.a(iVar);
    }
}
