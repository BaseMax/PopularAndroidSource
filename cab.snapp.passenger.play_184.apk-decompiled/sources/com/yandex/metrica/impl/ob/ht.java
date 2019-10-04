package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.bw;

public class ht {

    /* renamed from: a  reason: collision with root package name */
    private final bw f6125a;

    /* renamed from: b  reason: collision with root package name */
    private final mw f6126b;
    private final ii c;
    private final hu d;
    private final hm e;
    private final np f;

    public ht(Context context, bw bwVar, mw mwVar, ii iiVar, hm hmVar) {
        this(bwVar, mwVar, iiVar, new hu(context), new np(), hmVar);
    }

    public void a() {
        final hv hvVar = new hv();
        hvVar.a(this.f.a());
        hvVar.a(this.f6125a.a());
        this.f6126b.a((mo) new mo() {
            public void a(mn[] mnVarArr) {
                hv.this.b(ne.a(mnVarArr));
            }
        });
        this.d.a(hvVar);
        this.c.a();
        this.e.a();
    }

    ht(bw bwVar, mw mwVar, ii iiVar, hu huVar, np npVar, hm hmVar) {
        this.f6125a = bwVar;
        this.f6126b = mwVar;
        this.c = iiVar;
        this.d = huVar;
        this.f = npVar;
        this.e = hmVar;
    }
}
