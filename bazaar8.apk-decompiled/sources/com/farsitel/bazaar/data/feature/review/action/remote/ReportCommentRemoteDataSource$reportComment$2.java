package com.farsitel.bazaar.data.feature.review.action.remote;

import com.farsitel.bazaar.data.dto.responsedto.ReportCommentResponseDto;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: ReportCommentRemoteDataSource.kt */
final class ReportCommentRemoteDataSource$reportComment$2 extends Lambda implements b<ReportCommentResponseDto, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public static final ReportCommentRemoteDataSource$reportComment$2 f12282a = new ReportCommentRemoteDataSource$reportComment$2();

    public ReportCommentRemoteDataSource$reportComment$2() {
        super(1);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a((ReportCommentResponseDto) obj));
    }

    public final boolean a(ReportCommentResponseDto reportCommentResponseDto) {
        j.b(reportCommentResponseDto, "it");
        return reportCommentResponseDto.getResult();
    }
}
