package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ak;
import com.yandex.metrica.impl.an;
import com.yandex.metrica.impl.bs;

public class av extends ac<bj> {

    /* renamed from: a  reason: collision with root package name */
    private final String f5871a;

    /* renamed from: b  reason: collision with root package name */
    private final bs f5872b;

    public av(Context context, z zVar, an anVar, t tVar, bs bsVar) {
        super(context, ls.a(), anVar, zVar, tVar, ak.f5700b, new au(bsVar), new me());
        this.f5871a = zVar.a();
        this.f5872b = bsVar;
    }

    public synchronized void a(t tVar) {
        super.a(tVar);
        this.f5872b.a(this.f5871a, tVar.b().o());
    }
}
