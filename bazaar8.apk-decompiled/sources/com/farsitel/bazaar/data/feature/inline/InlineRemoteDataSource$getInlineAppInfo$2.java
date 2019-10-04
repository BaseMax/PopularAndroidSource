package com.farsitel.bazaar.data.feature.inline;

import com.farsitel.bazaar.common.model.inline.InlineAppInfo;
import com.farsitel.bazaar.data.dto.requestdto.GetInlineAppInfoReplyDto;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: InlineRemoteDataSource.kt */
final class InlineRemoteDataSource$getInlineAppInfo$2 extends Lambda implements b<GetInlineAppInfoReplyDto, InlineAppInfo> {

    /* renamed from: a  reason: collision with root package name */
    public static final InlineRemoteDataSource$getInlineAppInfo$2 f12257a = new InlineRemoteDataSource$getInlineAppInfo$2();

    public InlineRemoteDataSource$getInlineAppInfo$2() {
        super(1);
    }

    public final InlineAppInfo a(GetInlineAppInfoReplyDto getInlineAppInfoReplyDto) {
        j.b(getInlineAppInfoReplyDto, "it");
        return getInlineAppInfoReplyDto.toInlineAppInfo();
    }
}
