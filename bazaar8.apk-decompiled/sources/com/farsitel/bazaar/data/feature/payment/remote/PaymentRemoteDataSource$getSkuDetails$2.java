package com.farsitel.bazaar.data.feature.payment.remote;

import c.c.a.e.d.m.b.b.j;
import h.a.m;
import h.f.a.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: PaymentRemoteDataSource.kt */
final class PaymentRemoteDataSource$getSkuDetails$2 extends Lambda implements b<j, List<? extends String>> {

    /* renamed from: a  reason: collision with root package name */
    public static final PaymentRemoteDataSource$getSkuDetails$2 f12274a = new PaymentRemoteDataSource$getSkuDetails$2();

    public PaymentRemoteDataSource$getSkuDetails$2() {
        super(1);
    }

    public final List<String> a(j jVar) {
        h.f.b.j.b(jVar, "response");
        List<j.a> a2 = jVar.a();
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (j.a aVar : a2) {
            arrayList.add(aVar.toString());
        }
        return arrayList;
    }
}
