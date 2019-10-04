package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ak;
import com.yandex.metrica.impl.an;
import com.yandex.metrica.impl.v;

class bg implements bc, be<ao> {
    bg() {
    }

    public bb a(Context context, bf bfVar, az azVar, t tVar) {
        return new bh(context, (ar) bfVar.a(new an(azVar.c(), azVar.b()), tVar, new as(this)));
    }

    /* renamed from: c */
    public ao a(Context context, z zVar, t tVar, an anVar) {
        ao aoVar = new ao(context, ls.a(), anVar, zVar, tVar, ak.f5700b, v.a().c(), v.a().f());
        return aoVar;
    }

    /* renamed from: d */
    public bm<bh> b(Context context, z zVar, t tVar, an anVar) {
        bm bmVar = new bm(context, zVar, anVar, tVar, ls.a(), new me());
        return bmVar;
    }
}
