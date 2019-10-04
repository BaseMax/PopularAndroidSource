package com.farsitel.bazaar.data.feature.subscription.remote;

import c.c.a.e.d.v.a.d;
import c.c.a.e.d.v.a.h;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: SubscriptionRemoteDataSource.kt */
final class SubscriptionRemoteDataSource$getAppSubscription$2 extends Lambda implements b<h, List<? extends SubscriptionItem>> {

    /* renamed from: a  reason: collision with root package name */
    public static final SubscriptionRemoteDataSource$getAppSubscription$2 f12290a = new SubscriptionRemoteDataSource$getAppSubscription$2();

    public SubscriptionRemoteDataSource$getAppSubscription$2() {
        super(1);
    }

    public final List<SubscriptionItem> a(h hVar) {
        j.b(hVar, "response");
        List<d> a2 = hVar.a();
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (d a3 : a2) {
            arrayList.add(a3.a());
        }
        return arrayList;
    }
}
