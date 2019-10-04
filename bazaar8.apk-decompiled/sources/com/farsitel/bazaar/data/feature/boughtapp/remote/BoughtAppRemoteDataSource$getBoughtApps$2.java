package com.farsitel.bazaar.data.feature.boughtapp.remote;

import c.c.a.e.d.e.a.a;
import c.c.a.e.d.e.a.e;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.a.l;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: BoughtAppRemoteDataSource.kt */
final class BoughtAppRemoteDataSource$getBoughtApps$2 extends Lambda implements b<e, List<? extends ListItem.App>> {

    /* renamed from: a  reason: collision with root package name */
    public static final BoughtAppRemoteDataSource$getBoughtApps$2 f12219a = new BoughtAppRemoteDataSource$getBoughtApps$2();

    public BoughtAppRemoteDataSource$getBoughtApps$2() {
        super(1);
    }

    public final List<ListItem.App> a(e eVar) {
        j.b(eVar, "response");
        List<a> a2 = eVar.a();
        if (a2 == null) {
            return l.a();
        }
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (a a3 : a2) {
            arrayList.add(a3.a());
        }
        return arrayList;
    }
}
