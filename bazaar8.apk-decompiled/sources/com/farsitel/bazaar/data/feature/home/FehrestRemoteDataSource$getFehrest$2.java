package com.farsitel.bazaar.data.feature.home;

import com.farsitel.bazaar.data.dto.responsedto.FehrestResponseDto;
import com.farsitel.bazaar.data.dto.responsedto.SinglePage;
import com.farsitel.bazaar.data.entity.FehrestTabPage;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: FehrestRemoteDataSource.kt */
final class FehrestRemoteDataSource$getFehrest$2 extends Lambda implements b<FehrestResponseDto, FehrestTabPage> {
    public final /* synthetic */ int $offset;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public FehrestRemoteDataSource$getFehrest$2(int i2) {
        super(1);
        this.$offset = i2;
    }

    public final FehrestTabPage a(FehrestResponseDto fehrestResponseDto) {
        j.b(fehrestResponseDto, "fehrestResponse");
        List<SinglePage> pages = fehrestResponseDto.getPages();
        ArrayList arrayList = new ArrayList(m.a(pages, 10));
        for (SinglePage page : pages) {
            arrayList.add(page.toPage(this.$offset == 0));
        }
        return new FehrestTabPage(arrayList);
    }
}
