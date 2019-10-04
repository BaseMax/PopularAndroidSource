package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.ShortInfo;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: Cinema.kt */
public final class RelatedPageRowVideo implements Serializable {
    public final String coverUrl;
    public final String jref;
    public final String name;
    public final int price;
    public final int priceBeforeDiscount;
    public final Integer rate;
    public final String referrer;
    public final ShortInfo shortInfo;
    public final String type;
    public final String videoId;

    public RelatedPageRowVideo(String str, String str2, String str3, int i2, int i3, Integer num, String str4, ShortInfo shortInfo2, String str5, String str6) {
        this.coverUrl = str;
        this.jref = str2;
        this.name = str3;
        this.price = i2;
        this.priceBeforeDiscount = i3;
        this.rate = num;
        this.referrer = str4;
        this.shortInfo = shortInfo2;
        this.type = str5;
        this.videoId = str6;
    }

    public static /* synthetic */ RelatedPageRowVideo copy$default(RelatedPageRowVideo relatedPageRowVideo, String str, String str2, String str3, int i2, int i3, Integer num, String str4, ShortInfo shortInfo2, String str5, String str6, int i4, Object obj) {
        RelatedPageRowVideo relatedPageRowVideo2 = relatedPageRowVideo;
        int i5 = i4;
        return relatedPageRowVideo.copy((i5 & 1) != 0 ? relatedPageRowVideo2.coverUrl : str, (i5 & 2) != 0 ? relatedPageRowVideo2.jref : str2, (i5 & 4) != 0 ? relatedPageRowVideo2.name : str3, (i5 & 8) != 0 ? relatedPageRowVideo2.price : i2, (i5 & 16) != 0 ? relatedPageRowVideo2.priceBeforeDiscount : i3, (i5 & 32) != 0 ? relatedPageRowVideo2.rate : num, (i5 & 64) != 0 ? relatedPageRowVideo2.referrer : str4, (i5 & 128) != 0 ? relatedPageRowVideo2.shortInfo : shortInfo2, (i5 & 256) != 0 ? relatedPageRowVideo2.type : str5, (i5 & 512) != 0 ? relatedPageRowVideo2.videoId : str6);
    }

    public final String component1() {
        return this.coverUrl;
    }

    public final String component10() {
        return this.videoId;
    }

    public final String component2() {
        return this.jref;
    }

    public final String component3() {
        return this.name;
    }

    public final int component4() {
        return this.price;
    }

    public final int component5() {
        return this.priceBeforeDiscount;
    }

    public final Integer component6() {
        return this.rate;
    }

    public final String component7() {
        return this.referrer;
    }

    public final ShortInfo component8() {
        return this.shortInfo;
    }

    public final String component9() {
        return this.type;
    }

    public final RelatedPageRowVideo copy(String str, String str2, String str3, int i2, int i3, Integer num, String str4, ShortInfo shortInfo2, String str5, String str6) {
        RelatedPageRowVideo relatedPageRowVideo = new RelatedPageRowVideo(str, str2, str3, i2, i3, num, str4, shortInfo2, str5, str6);
        return relatedPageRowVideo;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RelatedPageRowVideo) {
                RelatedPageRowVideo relatedPageRowVideo = (RelatedPageRowVideo) obj;
                if (j.a((Object) this.coverUrl, (Object) relatedPageRowVideo.coverUrl) && j.a((Object) this.jref, (Object) relatedPageRowVideo.jref) && j.a((Object) this.name, (Object) relatedPageRowVideo.name)) {
                    if (this.price == relatedPageRowVideo.price) {
                        if (!(this.priceBeforeDiscount == relatedPageRowVideo.priceBeforeDiscount) || !j.a((Object) this.rate, (Object) relatedPageRowVideo.rate) || !j.a((Object) this.referrer, (Object) relatedPageRowVideo.referrer) || !j.a((Object) this.shortInfo, (Object) relatedPageRowVideo.shortInfo) || !j.a((Object) this.type, (Object) relatedPageRowVideo.type) || !j.a((Object) this.videoId, (Object) relatedPageRowVideo.videoId)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getJref() {
        return this.jref;
    }

    public final String getName() {
        return this.name;
    }

    public final int getPrice() {
        return this.price;
    }

    public final int getPriceBeforeDiscount() {
        return this.priceBeforeDiscount;
    }

    public final Integer getRate() {
        return this.rate;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final ShortInfo getShortInfo() {
        return this.shortInfo;
    }

    public final String getType() {
        return this.type;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public int hashCode() {
        String str = this.coverUrl;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.jref;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.name;
        int hashCode3 = (((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.price) * 31) + this.priceBeforeDiscount) * 31;
        Integer num = this.rate;
        int hashCode4 = (hashCode3 + (num != null ? num.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        ShortInfo shortInfo2 = this.shortInfo;
        int hashCode6 = (hashCode5 + (shortInfo2 != null ? shortInfo2.hashCode() : 0)) * 31;
        String str5 = this.type;
        int hashCode7 = (hashCode6 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.videoId;
        if (str6 != null) {
            i2 = str6.hashCode();
        }
        return hashCode7 + i2;
    }

    public String toString() {
        return "RelatedPageRowVideo(coverUrl=" + this.coverUrl + ", jref=" + this.jref + ", name=" + this.name + ", price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", rate=" + this.rate + ", referrer=" + this.referrer + ", shortInfo=" + this.shortInfo + ", type=" + this.type + ", videoId=" + this.videoId + ")";
    }
}
