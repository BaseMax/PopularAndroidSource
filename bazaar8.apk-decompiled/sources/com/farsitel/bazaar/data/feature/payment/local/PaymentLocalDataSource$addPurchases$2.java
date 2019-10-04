package com.farsitel.bazaar.data.feature.payment.local;

import c.c.a.e.d.m.f;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: PaymentLocalDataSource.kt */
final class PaymentLocalDataSource$addPurchases$2 extends Lambda implements b<f, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public static final PaymentLocalDataSource$addPurchases$2 f12261a = new PaymentLocalDataSource$addPurchases$2();

    public PaymentLocalDataSource$addPurchases$2() {
        super(1);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a((f) obj));
    }

    public final boolean a(f fVar) {
        j.b(fVar, "it");
        return !fVar.b();
    }
}
