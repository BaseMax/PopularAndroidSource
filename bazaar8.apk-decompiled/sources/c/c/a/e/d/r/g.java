package c.c.a.e.d.r;

import com.farsitel.bazaar.data.dto.requestdto.GetReviewRequestDto;
import com.farsitel.bazaar.data.dto.requestdto.GetSingleReviewRequestDto;
import l.C1158b;
import l.b.a;
import l.b.m;

/* compiled from: ReviewService.kt */
public interface g {
    @m("rest-v1/process/ReviewRequest")
    C1158b<h> a(@a GetReviewRequestDto getReviewRequestDto);

    @m("rest-v1/process/SingleReviewRequest")
    C1158b<i> a(@a GetSingleReviewRequestDto getSingleReviewRequestDto);
}
