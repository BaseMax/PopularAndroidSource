package com.farsitel.bazaar.data.feature.payment.remote;

import c.c.a.e.d.m.b.b.k;
import com.farsitel.bazaar.common.model.transaction.TransactionItem;
import h.f.a.b;
import h.f.b.j;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: PaymentRemoteDataSource.kt */
final class PaymentRemoteDataSource$getTransactions$2 extends Lambda implements b<k, List<? extends TransactionItem>> {

    /* renamed from: a  reason: collision with root package name */
    public static final PaymentRemoteDataSource$getTransactions$2 f12275a = new PaymentRemoteDataSource$getTransactions$2();

    public PaymentRemoteDataSource$getTransactions$2() {
        super(1);
    }

    public final List<TransactionItem> a(k kVar) {
        j.b(kVar, "it");
        return kVar.a();
    }
}
