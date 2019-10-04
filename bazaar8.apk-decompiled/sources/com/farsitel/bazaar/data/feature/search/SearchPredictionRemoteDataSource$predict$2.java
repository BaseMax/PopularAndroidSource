package com.farsitel.bazaar.data.feature.search;

import c.c.a.e.f.g;
import com.farsitel.bazaar.data.dto.responsedto.SearchPredictionItemDto;
import com.farsitel.bazaar.data.dto.responsedto.SearchPredictionResponseDto;
import com.farsitel.bazaar.data.entity.SearchPrediction;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: SearchPredictionRemoteDataSource.kt */
final class SearchPredictionRemoteDataSource$predict$2 extends Lambda implements b<SearchPredictionResponseDto, List<? extends SearchPrediction>> {

    /* renamed from: a  reason: collision with root package name */
    public static final SearchPredictionRemoteDataSource$predict$2 f12286a = new SearchPredictionRemoteDataSource$predict$2();

    public SearchPredictionRemoteDataSource$predict$2() {
        super(1);
    }

    public final List<SearchPrediction> a(SearchPredictionResponseDto searchPredictionResponseDto) {
        j.b(searchPredictionResponseDto, "response");
        List<SearchPredictionItemDto> predictionItems = searchPredictionResponseDto.getPredictionItems();
        ArrayList arrayList = new ArrayList(m.a(predictionItems, 10));
        for (SearchPredictionItemDto a2 : predictionItems) {
            arrayList.add(g.a(a2));
        }
        return arrayList;
    }
}
