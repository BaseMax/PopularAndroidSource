package com.farsitel.bazaar.data.feature.search;

import com.farsitel.bazaar.data.dto.responsedto.SearchResponseDto;
import com.farsitel.bazaar.data.entity.SearchItems;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: SearchRemoteDataSource.kt */
final class SearchRemoteDataSource$search$2 extends Lambda implements b<SearchResponseDto, SearchItems> {

    /* renamed from: a  reason: collision with root package name */
    public static final SearchRemoteDataSource$search$2 f12288a = new SearchRemoteDataSource$search$2();

    public SearchRemoteDataSource$search$2() {
        super(1);
    }

    public final SearchItems a(SearchResponseDto searchResponseDto) {
        j.b(searchResponseDto, "it");
        return searchResponseDto.toSearchItems();
    }
}
