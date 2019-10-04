package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.f.a;
import com.farsitel.bazaar.data.dto.responsedto.DownloadInfoResponseDto;
import com.farsitel.bazaar.data.entity.DownloadInfo;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: DownloadInfoDataSource.kt */
final class DownloadInfoDataSource$getDownloadInfoForNonFreeApp$2 extends Lambda implements b<DownloadInfoResponseDto, DownloadInfo> {

    /* renamed from: a  reason: collision with root package name */
    public static final DownloadInfoDataSource$getDownloadInfoForNonFreeApp$2 f12235a = new DownloadInfoDataSource$getDownloadInfoForNonFreeApp$2();

    public DownloadInfoDataSource$getDownloadInfoForNonFreeApp$2() {
        super(1);
    }

    public final DownloadInfo a(DownloadInfoResponseDto downloadInfoResponseDto) {
        j.b(downloadInfoResponseDto, "it");
        return a.a(downloadInfoResponseDto);
    }
}
