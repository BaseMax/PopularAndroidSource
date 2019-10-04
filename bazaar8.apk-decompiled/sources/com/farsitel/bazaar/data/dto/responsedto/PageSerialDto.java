package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: FehrestResponseDto.kt */
public final class PageSerialDto {
    @c("episodeIdx")
    public final int episodeIdx;
    @c("seasonIdx")
    public final int seasonIdx;
    @c("serialId")
    public final String videoId;

    public PageSerialDto(String str, int i2, int i3) {
        j.b(str, "videoId");
        this.videoId = str;
        this.seasonIdx = i2;
        this.episodeIdx = i3;
    }

    public final int getEpisodeIdx() {
        return this.episodeIdx;
    }

    public final int getSeasonIdx() {
        return this.seasonIdx;
    }

    public final String getVideoId() {
        return this.videoId;
    }
}
