package c.c.a.e.d.k;

import com.farsitel.bazaar.data.dto.requestdto.GetInlineAppInfoReplyDto;
import com.farsitel.bazaar.data.dto.requestdto.GetInlineAppInfoRequestDto;
import com.farsitel.bazaar.data.dto.requestdto.InlineReplyServiceRequestDto;
import com.farsitel.bazaar.data.dto.responsedto.InlineRelayServiceResponseDto;
import l.C1158b;
import l.b.a;
import l.b.m;

/* compiled from: InlineService.kt */
public interface e {
    @m("rest-v1/process/getInlineAppInfoRequest")
    C1158b<GetInlineAppInfoReplyDto> a(@a GetInlineAppInfoRequestDto getInlineAppInfoRequestDto);

    @m("rest-v1/process/inlineRelayServiceRequest")
    C1158b<InlineRelayServiceResponseDto> a(@a InlineReplyServiceRequestDto inlineReplyServiceRequestDto);
}
