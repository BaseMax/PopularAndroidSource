package com.google.android.gms.analytics;

import com.google.android.gms.analytics.q;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class q<T extends q> {

    /* renamed from: a  reason: collision with root package name */
    private final List<Object> f2589a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    final r f2590b;
    protected final o c;

    /* access modifiers changed from: protected */
    public final void a() {
        Iterator<Object> it = this.f2589a.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* access modifiers changed from: protected */
    public void a(o oVar) {
    }

    public o zzun() {
        o zzus = this.c.zzus();
        a();
        return zzus;
    }

    protected q(r rVar, d dVar) {
        ap.checkNotNull(rVar);
        this.f2590b = rVar;
        o oVar = new o(this, dVar);
        oVar.f2588b = true;
        this.c = oVar;
    }
}
