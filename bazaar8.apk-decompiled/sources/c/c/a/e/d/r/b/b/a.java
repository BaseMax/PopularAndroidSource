package c.c.a.e.d.r.b.b;

import c.c.a.e.d.r.a.b.c;
import com.farsitel.bazaar.data.dto.requestdto.SubmitReviewRequest;
import com.farsitel.bazaar.data.dto.requestdto.VoteReviewRequestDto;
import com.farsitel.bazaar.data.dto.responsedto.PostCommentResponseDto;
import com.farsitel.bazaar.data.dto.responsedto.ReportCommentResponseDto;
import com.farsitel.bazaar.data.dto.responsedto.VoteCommentResponseDto;
import l.C1158b;
import l.b.m;

/* compiled from: CommentService.kt */
public interface a {
    @m("rest-v1/process/ReportSpamReviewRequest")
    C1158b<ReportCommentResponseDto> a(@l.b.a c cVar);

    @m("rest-v1/process/SubmitReviewRequest")
    C1158b<PostCommentResponseDto> a(@l.b.a SubmitReviewRequest submitReviewRequest);

    @m("rest-v1/process/MarkReviewRequest")
    C1158b<VoteCommentResponseDto> a(@l.b.a VoteReviewRequestDto voteReviewRequestDto);
}
