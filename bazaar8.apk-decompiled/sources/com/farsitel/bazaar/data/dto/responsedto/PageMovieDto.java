package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: FehrestResponseDto.kt */
public final class PageMovieDto {
    @c("movieId")
    public final String videoId;

    public PageMovieDto(String str) {
        j.b(str, "videoId");
        this.videoId = str;
    }

    public final String getVideoId() {
        return this.videoId;
    }
}
