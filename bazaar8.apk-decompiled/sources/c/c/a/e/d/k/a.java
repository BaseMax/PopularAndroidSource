package c.c.a.e.d.k;

import com.farsitel.bazaar.common.model.inline.InlineAppInfo;
import com.farsitel.bazaar.common.model.inline.InlineRelayService;
import com.farsitel.bazaar.data.dto.requestdto.GetInlineAppInfoRequestDto;
import com.farsitel.bazaar.data.dto.requestdto.InlineReplyServiceRequestDto;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;

/* compiled from: InlineRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5223a;

    public a(e eVar) {
        j.b(eVar, "inlineService");
        this.f5223a = eVar;
    }

    public final Object a(String str, b<? super Either<InlineAppInfo>> bVar) {
        return c.c.a.e.c.b.a(this.f5223a.a(new GetInlineAppInfoRequestDto(str)), InlineRemoteDataSource$getInlineAppInfo$2.f12257a, bVar);
    }

    public final Object a(InlineRelayService inlineRelayService, b<? super Either<String>> bVar) {
        return c.c.a.e.c.b.b(this.f5223a.a(InlineReplyServiceRequestDto.Companion.fromInlineRelayService(inlineRelayService)), InlineRemoteDataSource$replyService$2.f12258a, bVar);
    }
}
