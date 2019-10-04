package c.c.a.e.d.s;

import com.farsitel.bazaar.data.dto.requestdto.EmptyRequestSingleDto;
import com.farsitel.bazaar.data.dto.requestdto.RemovePredictionParam;
import com.farsitel.bazaar.data.dto.requestdto.SearchPredictionParam;
import com.farsitel.bazaar.data.dto.responsedto.SearchPredictionResponseDto;
import com.farsitel.bazaar.data.entity.None;
import l.C1158b;
import l.b.a;
import l.b.m;

/* compiled from: SearchPredictionService.kt */
public interface e {
    @m("rest-v1/process/ClearHistoryRequest")
    C1158b<None> a(@a EmptyRequestSingleDto emptyRequestSingleDto);

    @m("rest-v1/process/RemoveHistoryRequest")
    C1158b<None> a(@a RemovePredictionParam removePredictionParam);

    @m("rest-v1/process/PredictionRequest")
    C1158b<SearchPredictionResponseDto> a(@a SearchPredictionParam searchPredictionParam);
}
