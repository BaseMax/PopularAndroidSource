package com.yandex.metrica.impl;

import android.content.Context;
import com.yandex.metrica.impl.ob.h;
import com.yandex.metrica.impl.ob.k;
import com.yandex.metrica.impl.ob.l;
import com.yandex.metrica.impl.ob.p;

public final class ac {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ac f5663a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f5664b = new Object();
    /* access modifiers changed from: private */
    public String c;

    public static ac a(Context context) {
        if (f5663a == null) {
            synchronized (f5664b) {
                if (f5663a == null) {
                    f5663a = new ac(context.getApplicationContext());
                }
            }
        }
        return f5663a;
    }

    private ac(Context context) {
        this.c = av.a(context.getResources().getConfiguration().locale);
        h.a().a(this, p.class, l.a(new k<p>() {
            public void a(p pVar) {
                String unused = ac.this.c = pVar.f6494a;
            }
        }).a());
    }

    public final String a() {
        return this.c;
    }
}
