package com.yandex.metrica.impl;

import android.content.ContentValues;
import com.yandex.metrica.impl.bc;
import com.yandex.metrica.impl.ob.ac;
import com.yandex.metrica.impl.ob.le;
import com.yandex.metrica.impl.ob.mg;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class bh<C extends ac> extends bu<C> {
    private Runnable d = new Runnable() {
        public void run() {
            bh.this.d();
        }
    };

    public bh(C c, mg mgVar, an anVar) {
        super(c, mgVar, anVar);
    }

    /* access modifiers changed from: package-private */
    public void a() {
        ((ac) f()).m().removeCallbacks(this.d);
    }

    public void b() {
        synchronized (this.f5797a) {
            if (!this.c) {
                a();
                if (((ac) f()).k().P() > 0) {
                    ((ac) f()).m().postDelayed(this.d, TimeUnit.SECONDS.toMillis((long) ((ac) f()).k().P()));
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        super.c();
        le k = ((ac) f()).k();
        if (k.T() && bv.a(k.D())) {
            a(bb.F(), -2L);
            a(bc.J(), null);
        }
    }

    private void a(bc.a aVar, Long l) {
        List<ContentValues> a2 = ((ac) f()).l().a(l);
        if (a2.isEmpty()) {
            a2.add(m.f5842a);
        }
        for (ContentValues next : a2) {
            try {
                this.f5798b.a(aVar.a((ac) f()).a(next));
            } catch (Exception unused) {
                return;
            }
        }
    }
}
