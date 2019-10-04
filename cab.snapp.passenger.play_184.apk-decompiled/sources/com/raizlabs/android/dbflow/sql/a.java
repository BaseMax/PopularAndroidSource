package com.raizlabs.android.dbflow.sql;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.config.c;
import com.raizlabs.android.dbflow.structure.b.a.g;

public class a<TAsync> {

    /* renamed from: a  reason: collision with root package name */
    g.c f5134a;

    /* renamed from: b  reason: collision with root package name */
    g.b f5135b;
    g c;
    private final Class<?> d;
    private final c e;
    private final g.b f = new g.b() {
        public final void onError(g gVar, Throwable th) {
            if (a.this.f5135b != null) {
                a.this.f5135b.onError(gVar, th);
            }
            a.this.c = null;
        }
    };
    private final g.c g = new g.c() {
        public final void onSuccess(g gVar) {
            if (a.this.f5134a != null) {
                a.this.f5134a.onSuccess(gVar);
            }
            a.this.onSuccess$100ded9();
            a.this.c = null;
        }
    };

    /* access modifiers changed from: protected */
    public void onSuccess$100ded9() {
    }

    public a(Class<?> cls) {
        this.d = cls;
        this.e = FlowManager.getDatabaseForTable(cls);
    }

    public Class<?> getTable() {
        return this.d;
    }

    public TAsync error(g.b bVar) {
        this.f5135b = bVar;
        return this;
    }

    public TAsync success(g.c cVar) {
        this.f5134a = cVar;
        return this;
    }

    public void cancel() {
        g gVar = this.c;
        if (gVar != null) {
            gVar.cancel();
        }
    }

    /* access modifiers changed from: protected */
    public final void a(com.raizlabs.android.dbflow.structure.b.a.c cVar) {
        cancel();
        this.c = this.e.beginTransactionAsync(cVar).error(this.f).success(this.g).build();
        this.c.execute();
    }
}
