package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.bv;

public class dz {

    /* renamed from: a  reason: collision with root package name */
    private final dy f5938a;

    /* renamed from: b  reason: collision with root package name */
    private final fl f5939b;
    private final String c;

    public dz(Context context, z zVar) {
        this(new dy(), fq.a(context).c(zVar), "event_hashes");
    }

    dz(dy dyVar, fl flVar, String str) {
        this.f5938a = dyVar;
        this.f5939b = flVar;
        this.c = str;
    }

    public dx a() {
        byte[] a2 = this.f5939b.a(this.c);
        if (bv.a(a2)) {
            return new dx();
        }
        return this.f5938a.a(a2);
    }

    public void a(dx dxVar) {
        this.f5939b.a(this.c, this.f5938a.a(dxVar));
    }
}
