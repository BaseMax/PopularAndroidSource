package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: FehrestResponseDto.kt */
public final class VideoListDto {
    @c("videoList")
    public final List<PageCommonVideoDto> videos;

    public VideoListDto(List<PageCommonVideoDto> list) {
        j.b(list, "videos");
        this.videos = list;
    }

    public final List<PageCommonVideoDto> getVideos() {
        return this.videos;
    }
}
