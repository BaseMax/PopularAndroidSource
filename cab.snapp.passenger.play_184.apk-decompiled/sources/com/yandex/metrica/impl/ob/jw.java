package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.ke;

public class jw extends jl<String> {

    /* renamed from: a  reason: collision with root package name */
    private final os<String> f6183a;

    public jw(String str, String str2, os<String> osVar, pa<String> paVar, ji jiVar) {
        super(0, str, str2, paVar, jiVar);
        this.f6183a = osVar;
    }

    /* access modifiers changed from: protected */
    public void a(ke.a.C0115a aVar) {
        String a2 = this.f6183a.a(b());
        aVar.e.f6213b = a2 == null ? new byte[0] : a2.getBytes();
    }
}
