package com.farsitel.bazaar.data.feature.review.post.remote;

import com.farsitel.bazaar.data.dto.responsedto.PostCommentResponseDto;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: PostCommentRemoteDataSource.kt */
final class PostCommentRemoteDataSource$postComment$2 extends Lambda implements b<PostCommentResponseDto, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public static final PostCommentRemoteDataSource$postComment$2 f12284a = new PostCommentRemoteDataSource$postComment$2();

    public PostCommentRemoteDataSource$postComment$2() {
        super(1);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a((PostCommentResponseDto) obj));
    }

    public final boolean a(PostCommentResponseDto postCommentResponseDto) {
        j.b(postCommentResponseDto, "it");
        return postCommentResponseDto.getResult();
    }
}
