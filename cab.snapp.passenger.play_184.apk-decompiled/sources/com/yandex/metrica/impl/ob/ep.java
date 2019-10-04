package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;

class ep {

    /* renamed from: a  reason: collision with root package name */
    gf f5970a;

    /* renamed from: b  reason: collision with root package name */
    private String f5971b;
    private eo c;
    private ma d;

    public ep(Context context, ma maVar) {
        this(context.getPackageName(), new gf(fq.a(context).c()), new eo(), maVar);
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        this.c.a(bundle, this.f5971b, this.f5970a.g(), this.d);
        return bundle;
    }

    ep(String str, gf gfVar, eo eoVar, ma maVar) {
        this.f5971b = str;
        this.f5970a = gfVar;
        this.c = eoVar;
        this.d = maVar;
        new w(this.f5971b);
    }
}
