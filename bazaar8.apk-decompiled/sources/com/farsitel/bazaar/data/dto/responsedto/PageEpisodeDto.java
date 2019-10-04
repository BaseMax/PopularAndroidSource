package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: FehrestResponseDto.kt */
public final class PageEpisodeDto {
    @c("episodeId")
    public final String episodeId;
    @c("episodeIdx")
    public final int episodeIdx;
    @c("seasonIdx")
    public final int seasonIdx;
    @c("serialId")
    public final String videoId;

    public PageEpisodeDto(String str, String str2, int i2, int i3) {
        j.b(str, "episodeId");
        j.b(str2, "videoId");
        this.episodeId = str;
        this.videoId = str2;
        this.seasonIdx = i2;
        this.episodeIdx = i3;
    }

    public final String getEpisodeId() {
        return this.episodeId;
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
