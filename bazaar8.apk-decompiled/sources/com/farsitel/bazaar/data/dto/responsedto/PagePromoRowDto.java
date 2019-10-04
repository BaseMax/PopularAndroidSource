package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.page.PromoItem;
import h.f.b.j;

/* compiled from: FehrestResponseDto.kt */
public final class PagePromoRowDto {
    @c("image")
    public final String image;
    @c("link")
    public final String link;
    @c("referrerList")
    public final String referrer;
    @c("title")
    public final String title;

    public PagePromoRowDto(String str, String str2, String str3, String str4) {
        j.b(str, "link");
        j.b(str2, "title");
        j.b(str3, "image");
        j.b(str4, "referrer");
        this.link = str;
        this.title = str2;
        this.image = str3;
        this.referrer = str4;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getTitle() {
        return this.title;
    }

    public final PromoItem toPromoItem() {
        return new PromoItem(this.image, this.title, this.link, this.referrer);
    }
}
