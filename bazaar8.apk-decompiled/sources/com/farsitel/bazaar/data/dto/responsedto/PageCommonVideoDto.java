package com.farsitel.bazaar.data.dto.responsedto;

import c.c.a.c.d.e;
import c.c.a.e.f.g;
import c.e.d.a.c;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.common.model.ShortInfo;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import h.f.b.j;

/* compiled from: FehrestResponseDto.kt */
public final class PageCommonVideoDto {
    @c("coverUrl")
    public final String coverUrl;
    @c("episode")
    public final PageEpisodeDto episode;
    @c("movie")
    public final PageMovieDto movie;
    @c("name")
    public final String name;
    @c("price")
    public final int price;
    @c("priceBeforeDiscountString")
    public final String priceBeforeDiscountString;
    @c("priceString")
    public final String priceString;
    @c("referrerList")
    public final String referrer;
    @c("serial")
    public final PageSerialDto serial;
    @c("shortInfo")
    public final ShortInfoDto shortInfo;

    public PageCommonVideoDto(String str, int i2, String str2, String str3, String str4, ShortInfoDto shortInfoDto, PageMovieDto pageMovieDto, PageSerialDto pageSerialDto, PageEpisodeDto pageEpisodeDto, String str5) {
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str4, "coverUrl");
        this.name = str;
        this.price = i2;
        this.priceBeforeDiscountString = str2;
        this.priceString = str3;
        this.coverUrl = str4;
        this.shortInfo = shortInfoDto;
        this.movie = pageMovieDto;
        this.serial = pageSerialDto;
        this.episode = pageEpisodeDto;
        this.referrer = str5;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final PageEpisodeDto getEpisode() {
        return this.episode;
    }

    public final PageMovieDto getMovie() {
        return this.movie;
    }

    public final String getName() {
        return this.name;
    }

    public final int getPrice() {
        return this.price;
    }

    public final String getPriceBeforeDiscountString() {
        return this.priceBeforeDiscountString;
    }

    public final String getPriceString() {
        return this.priceString;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final PageSerialDto getSerial() {
        return this.serial;
    }

    public final ShortInfoDto getShortInfo() {
        return this.shortInfo;
    }

    public final MovieItem.EpisodeItem toEpisodeItem() {
        PageEpisodeDto pageEpisodeDto = this.episode;
        if (pageEpisodeDto != null) {
            String videoId = pageEpisodeDto.getVideoId();
            String episodeId = this.episode.getEpisodeId();
            Integer valueOf = Integer.valueOf(this.episode.getEpisodeIdx());
            Integer valueOf2 = Integer.valueOf(this.episode.getSeasonIdx());
            String str = this.coverUrl;
            String str2 = this.name;
            Integer valueOf3 = Integer.valueOf(this.price);
            String str3 = this.priceString;
            String str4 = this.priceBeforeDiscountString;
            ShortInfoDto shortInfoDto = this.shortInfo;
            ShortInfo a2 = shortInfoDto != null ? g.a(shortInfoDto) : null;
            String str5 = this.referrer;
            if (str5 == null) {
                str5 = e.a();
            }
            MovieItem.EpisodeItem episodeItem = new MovieItem.EpisodeItem(videoId, episodeId, valueOf, valueOf2, str, str2, valueOf3, str3, str4, null, false, a2, str5, false, 8192, null);
            return episodeItem;
        }
        j.a();
        throw null;
    }

    public final MovieItem.VideoItem toMovieItem() {
        PageMovieDto pageMovieDto = this.movie;
        if (pageMovieDto != null) {
            String videoId = pageMovieDto.getVideoId();
            String str = this.name;
            ShortInfoDto shortInfoDto = this.shortInfo;
            String info = shortInfoDto != null ? shortInfoDto.getInfo() : null;
            ShortInfoDto shortInfoDto2 = this.shortInfo;
            String moreInfo = shortInfoDto2 != null ? shortInfoDto2.getMoreInfo() : null;
            int i2 = this.price;
            String str2 = this.priceString;
            String str3 = this.coverUrl;
            String str4 = this.referrer;
            if (str4 == null) {
                str4 = e.a();
            }
            MovieItem.VideoItem videoItem = new MovieItem.VideoItem(videoId, str, info, moreInfo, null, i2, str2, false, false, str3, str4, false, 2048, null);
            return videoItem;
        }
        j.a();
        throw null;
    }

    public final MovieItem.SerialItem toSerialItem() {
        PageSerialDto pageSerialDto = this.serial;
        if (pageSerialDto != null) {
            String videoId = pageSerialDto.getVideoId();
            Integer valueOf = Integer.valueOf(this.serial.getEpisodeIdx());
            Integer valueOf2 = Integer.valueOf(this.serial.getSeasonIdx());
            String str = this.coverUrl;
            String str2 = this.name;
            Integer valueOf3 = Integer.valueOf(this.price);
            String str3 = this.priceString;
            String str4 = this.priceBeforeDiscountString;
            ShortInfoDto shortInfoDto = this.shortInfo;
            ShortInfo a2 = shortInfoDto != null ? g.a(shortInfoDto) : null;
            String str5 = this.referrer;
            if (str5 == null) {
                str5 = e.a();
            }
            MovieItem.SerialItem serialItem = new MovieItem.SerialItem(videoId, valueOf, valueOf2, str, str2, valueOf3, str3, str4, null, false, a2, str5);
            return serialItem;
        }
        j.a();
        throw null;
    }

    public final ListItem toVideoItem() {
        if (this.movie != null) {
            return new ListItem.Video(toMovieItem(), false, 2, null);
        }
        if (this.serial != null) {
            return new ListItem.Serial(toSerialItem());
        }
        if (this.episode != null) {
            return new ListItem.Episode(toEpisodeItem(), false, 2, null);
        }
        throw new IllegalAccessError("invalid common video");
    }
}
