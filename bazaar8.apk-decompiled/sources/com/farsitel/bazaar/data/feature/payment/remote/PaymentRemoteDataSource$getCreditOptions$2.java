package com.farsitel.bazaar.data.feature.payment.remote;

import c.c.a.e.d.m.b.b.g;
import com.farsitel.bazaar.data.feature.payment.CreditOption;
import com.farsitel.bazaar.data.feature.payment.remote.responsedto.CreditOptionDto;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: PaymentRemoteDataSource.kt */
final class PaymentRemoteDataSource$getCreditOptions$2 extends Lambda implements b<g, List<? extends CreditOption>> {

    /* renamed from: a  reason: collision with root package name */
    public static final PaymentRemoteDataSource$getCreditOptions$2 f12272a = new PaymentRemoteDataSource$getCreditOptions$2();

    public PaymentRemoteDataSource$getCreditOptions$2() {
        super(1);
    }

    public final List<CreditOption> a(g gVar) {
        j.b(gVar, "response");
        List<CreditOptionDto> a2 = gVar.a();
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (CreditOptionDto a3 : a2) {
            arrayList.add(a3.a());
        }
        return arrayList;
    }
}
