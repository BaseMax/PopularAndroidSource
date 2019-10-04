package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: SearchPredictionResponseDto.kt */
public final class SearchPredictionResponseDto {
    @c("items")
    public final List<SearchPredictionItemDto> predictionItems;

    public SearchPredictionResponseDto(List<SearchPredictionItemDto> list) {
        j.b(list, "predictionItems");
        this.predictionItems = list;
    }

    public static /* synthetic */ SearchPredictionResponseDto copy$default(SearchPredictionResponseDto searchPredictionResponseDto, List<SearchPredictionItemDto> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = searchPredictionResponseDto.predictionItems;
        }
        return searchPredictionResponseDto.copy(list);
    }

    public final List<SearchPredictionItemDto> component1() {
        return this.predictionItems;
    }

    public final SearchPredictionResponseDto copy(List<SearchPredictionItemDto> list) {
        j.b(list, "predictionItems");
        return new SearchPredictionResponseDto(list);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof SearchPredictionResponseDto) && j.a((Object) this.predictionItems, (Object) ((SearchPredictionResponseDto) obj).predictionItems));
    }

    public final List<SearchPredictionItemDto> getPredictionItems() {
        return this.predictionItems;
    }

    public int hashCode() {
        List<SearchPredictionItemDto> list = this.predictionItems;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "SearchPredictionResponseDto(predictionItems=" + this.predictionItems + ")";
    }
}
