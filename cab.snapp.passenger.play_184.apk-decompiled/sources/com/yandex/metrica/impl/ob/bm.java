package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.an;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.bb;
import com.yandex.metrica.impl.ob.bq;
import com.yandex.metrica.impl.q;
import com.yandex.metrica.impl.s;

public class bm<C extends bb> implements ai<C>, aj, br, lx {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5890a;

    /* renamed from: b  reason: collision with root package name */
    private final z f5891b;
    private final q c;
    private bn d;
    private ax e;
    private final aa<C> f;

    static class a {
        a() {
        }

        public bn a(Context context, z zVar, ma maVar, t tVar) {
            return new bn(new bq.b(context, zVar.b()), maVar, tVar);
        }
    }

    static class b {
        b() {
        }

        public q<bm> a(bm bmVar, md mdVar, ls lsVar, an anVar, bs bsVar) {
            return new q<>(bmVar, mdVar.a(bmVar, lsVar), anVar, bsVar);
        }
    }

    public void a(lu luVar) {
    }

    public lx e() {
        return this;
    }

    public bm(Context context, z zVar, an anVar, t tVar, ls lsVar, md mdVar) {
        this(context, zVar, anVar, tVar, lsVar, mdVar, new bs(), new b(), new a(), new aa(), new ax(context, zVar));
    }

    public bm(Context context, z zVar, an anVar, t tVar, ls lsVar, md mdVar, bs bsVar, b bVar, a aVar, aa<C> aaVar, ax axVar) {
        t tVar2 = tVar;
        this.f5890a = context;
        this.f5891b = zVar;
        this.f = aaVar;
        this.e = axVar;
        this.c = bVar.a(this, mdVar, lsVar, anVar, bsVar);
        synchronized (this) {
            ls lsVar2 = lsVar;
            ma f2 = lsVar.d(this, tVar).f();
            this.e.a(f2.w);
            this.d = aVar.a(context, zVar, f2, tVar);
        }
    }

    public t a() {
        return this.d.a();
    }

    public boolean d() {
        return this.f.b();
    }

    public Context c() {
        return this.f5890a;
    }

    public z b() {
        return this.f5891b;
    }

    public void a(t tVar) {
        this.d.a(tVar);
    }

    public void a(i iVar) {
        this.c.a(iVar);
    }

    public void f() {
        if (this.e.a(this.d.a())) {
            a(s.a());
            this.e.a();
        }
    }

    public synchronized void a(ma maVar) {
        this.d.a(maVar);
        this.e.a(maVar.w);
    }

    public bq g() {
        return (bq) this.d.e();
    }
}
