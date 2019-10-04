package com.farsitel.bazaar.data.feature.subscription.remote;

import c.c.a.e.d.v.a.c;
import com.farsitel.bazaar.common.model.subscription.SubscriptionStatusChoices;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: SubscriptionRemoteDataSource.kt */
final class SubscriptionRemoteDataSource$cancelAppSubscription$2 extends Lambda implements b<c, SubscriptionStatusChoices> {

    /* renamed from: a  reason: collision with root package name */
    public static final SubscriptionRemoteDataSource$cancelAppSubscription$2 f12289a = new SubscriptionRemoteDataSource$cancelAppSubscription$2();

    public SubscriptionRemoteDataSource$cancelAppSubscription$2() {
        super(1);
    }

    public final SubscriptionStatusChoices a(c cVar) {
        j.b(cVar, "it");
        return SubscriptionStatusChoices.Companion.getValue(cVar.a());
    }
}
