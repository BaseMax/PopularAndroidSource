package com.farsitel.bazaar.data.feature.payment.remote;

import c.c.a.e.d.m.b.b.a;
import c.c.a.e.d.m.b.b.m;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: PaymentRemoteDataSource.kt */
final class PaymentRemoteDataSource$getBuyCreditMethods$2 extends Lambda implements b<a, List<? extends PaymentGateway>> {

    /* renamed from: a  reason: collision with root package name */
    public static final PaymentRemoteDataSource$getBuyCreditMethods$2 f12269a = new PaymentRemoteDataSource$getBuyCreditMethods$2();

    public PaymentRemoteDataSource$getBuyCreditMethods$2() {
        super(1);
    }

    public final List<PaymentGateway> a(a aVar) {
        j.b(aVar, "it");
        List<m> a2 = aVar.a();
        ArrayList arrayList = new ArrayList(h.a.m.a(a2, 10));
        for (m b2 : a2) {
            arrayList.add(b2.b());
        }
        return arrayList;
    }
}
