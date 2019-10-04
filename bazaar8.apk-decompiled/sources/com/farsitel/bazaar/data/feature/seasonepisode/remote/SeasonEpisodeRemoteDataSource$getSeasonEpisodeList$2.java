package com.farsitel.bazaar.data.feature.seasonepisode.remote;

import c.c.a.e.d.t.a.d;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.PageDescriptionItem;
import com.farsitel.bazaar.data.dto.responsedto.PageRowDto;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: SeasonEpisodeRemoteDataSource.kt */
final class SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2 extends Lambda implements b<d, Page> {
    public final /* synthetic */ int $offset;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2(int i2) {
        super(1);
        this.$offset = i2;
    }

    public final Page a(d dVar) {
        j.b(dVar, "it");
        ArrayList arrayList = new ArrayList();
        if (dVar.a() != null) {
            if ((dVar.a().length() > 0) && this.$offset == 0) {
                arrayList.add(new PageDescriptionItem(dVar.a()));
            }
        }
        List<PageRowDto> b2 = dVar.b();
        if (b2 != null) {
            for (PageRowDto pageTypeItem : b2) {
                arrayList.addAll(pageTypeItem.toPageTypeItem());
            }
        }
        Page page = new Page(dVar.c(), null, null, arrayList, null, 22, null);
        return page;
    }
}
