package c.c.a.e.d.h.e.b;

import c.e.d.a.c;
import c.e.d.p;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto;
import h.f.b.j;

/* compiled from: ResponseDto.kt */
public final class h {
    @c("coverUrl")
    public final String coverUrl;
    @c("jref")
    public final p jsonReferer;
    @c("name")
    public final String name;
    @c("price")
    public final int price;
    @c("priceBeforeDiscount")
    public final int priceBeforeDiscount;
    @c("priceString")
    public final String priceString;
    @c("rate")
    public final Integer rate;
    @c("referrerList")
    public final String referrer;
    @c("shortInfo")
    public final ShortInfoDto shortInfo;
    @c("type")
    public final String type;
    @c("identifier")
    public final String videoId;

    public final String a() {
        return this.type;
    }

    public final MovieItem.VideoItem b() {
        String str;
        String str2 = this.videoId;
        String str3 = str2 != null ? str2 : "";
        String str4 = this.name;
        if (str4 != null) {
            str = str4;
        } else {
            str = "";
        }
        ShortInfoDto shortInfoDto = this.shortInfo;
        String info = shortInfoDto != null ? shortInfoDto.getInfo() : null;
        ShortInfoDto shortInfoDto2 = this.shortInfo;
        MovieItem.VideoItem videoItem = new MovieItem.VideoItem(str3, str, info, shortInfoDto2 != null ? shortInfoDto2.getMoreInfo() : null, null, this.price, this.priceString, false, false, this.coverUrl, this.referrer, false, 2048, null);
        return videoItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof h) {
                h hVar = (h) obj;
                if (j.a((Object) this.coverUrl, (Object) hVar.coverUrl) && j.a((Object) this.jsonReferer, (Object) hVar.jsonReferer) && j.a((Object) this.name, (Object) hVar.name)) {
                    if ((this.price == hVar.price) && j.a((Object) this.priceString, (Object) hVar.priceString)) {
                        if (!(this.priceBeforeDiscount == hVar.priceBeforeDiscount) || !j.a((Object) this.rate, (Object) hVar.rate) || !j.a((Object) this.shortInfo, (Object) hVar.shortInfo) || !j.a((Object) this.type, (Object) hVar.type) || !j.a((Object) this.videoId, (Object) hVar.videoId) || !j.a((Object) this.referrer, (Object) hVar.referrer)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.coverUrl;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        p pVar = this.jsonReferer;
        int hashCode2 = (hashCode + (pVar != null ? pVar.hashCode() : 0)) * 31;
        String str2 = this.name;
        int hashCode3 = (((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.price) * 31;
        String str3 = this.priceString;
        int hashCode4 = (((hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.priceBeforeDiscount) * 31;
        Integer num = this.rate;
        int hashCode5 = (hashCode4 + (num != null ? num.hashCode() : 0)) * 31;
        ShortInfoDto shortInfoDto = this.shortInfo;
        int hashCode6 = (hashCode5 + (shortInfoDto != null ? shortInfoDto.hashCode() : 0)) * 31;
        String str4 = this.type;
        int hashCode7 = (hashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.videoId;
        int hashCode8 = (hashCode7 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.referrer;
        if (str6 != null) {
            i2 = str6.hashCode();
        }
        return hashCode8 + i2;
    }

    public String toString() {
        return "RelatedPageRowVideoDto(coverUrl=" + this.coverUrl + ", jsonReferer=" + this.jsonReferer + ", name=" + this.name + ", price=" + this.price + ", priceString=" + this.priceString + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", rate=" + this.rate + ", shortInfo=" + this.shortInfo + ", type=" + this.type + ", videoId=" + this.videoId + ", referrer=" + this.referrer + ")";
    }
}
