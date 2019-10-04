package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.an;
import com.yandex.metrica.impl.v;

public class bk implements bc, be<ac<bj>> {
    public bb a(Context context, bf bfVar, az azVar, t tVar) {
        return new bj(context, (ar) bfVar.a(new z(azVar.c(), azVar.b()), tVar, new as(this)));
    }

    /* renamed from: c */
    public ac<bj> a(Context context, z zVar, t tVar, an anVar) {
        av avVar = new av(context, zVar, anVar, tVar, v.a().f());
        return avVar;
    }

    /* renamed from: d */
    public bm b(Context context, z zVar, t tVar, an anVar) {
        bm bmVar = new bm(context, zVar, anVar, tVar, ls.a(), new me());
        return bmVar;
    }
}
