package com.farsitel.bazaar.data.feature.review.action.remote;

import com.farsitel.bazaar.data.dto.responsedto.VoteCommentResponseDto;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: VoteCommentRemoteDataSource.kt */
final class VoteCommentRemoteDataSource$voteComment$2 extends Lambda implements b<VoteCommentResponseDto, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public static final VoteCommentRemoteDataSource$voteComment$2 f12283a = new VoteCommentRemoteDataSource$voteComment$2();

    public VoteCommentRemoteDataSource$voteComment$2() {
        super(1);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a((VoteCommentResponseDto) obj));
    }

    public final boolean a(VoteCommentResponseDto voteCommentResponseDto) {
        j.b(voteCommentResponseDto, "it");
        return voteCommentResponseDto.getResult();
    }
}
