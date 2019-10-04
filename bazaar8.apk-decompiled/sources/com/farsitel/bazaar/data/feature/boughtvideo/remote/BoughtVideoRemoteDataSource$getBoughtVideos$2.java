package com.farsitel.bazaar.data.feature.boughtvideo.remote;

import c.c.a.e.d.f.a.a;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.data.dto.responsedto.PageRowDto;
import h.a.q;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: BoughtVideoRemoteDataSource.kt */
final class BoughtVideoRemoteDataSource$getBoughtVideos$2 extends Lambda implements b<a, List<? extends PageTypeItem>> {

    /* renamed from: a  reason: collision with root package name */
    public static final BoughtVideoRemoteDataSource$getBoughtVideos$2 f12220a = new BoughtVideoRemoteDataSource$getBoughtVideos$2();

    public BoughtVideoRemoteDataSource$getBoughtVideos$2() {
        super(1);
    }

    public final List<PageTypeItem> a(a aVar) {
        j.b(aVar, "it");
        List<PageRowDto> a2 = aVar.a();
        ArrayList arrayList = new ArrayList();
        for (PageRowDto pageTypeItem : a2) {
            q.a(arrayList, pageTypeItem.toPageTypeItem());
        }
        return arrayList;
    }
}
