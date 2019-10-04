package com.farsitel.bazaar.data.feature.inline;

import com.farsitel.bazaar.data.dto.responsedto.InlineRelayServiceResponseDto;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: InlineRemoteDataSource.kt */
final class InlineRemoteDataSource$replyService$2 extends Lambda implements b<InlineRelayServiceResponseDto, String> {

    /* renamed from: a  reason: collision with root package name */
    public static final InlineRemoteDataSource$replyService$2 f12258a = new InlineRemoteDataSource$replyService$2();

    public InlineRemoteDataSource$replyService$2() {
        super(1);
    }

    public final String a(InlineRelayServiceResponseDto inlineRelayServiceResponseDto) {
        j.b(inlineRelayServiceResponseDto, "it");
        return inlineRelayServiceResponseDto.getReply();
    }
}
