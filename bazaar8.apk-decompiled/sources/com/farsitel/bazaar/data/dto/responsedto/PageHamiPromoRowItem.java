package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: FehrestResponseDto.kt */
public final class PageHamiPromoRowItem {
    @c("app")
    public final PageAppRowItemDto app;
    @c("appRate")
    public final Float appRate;
    @c("descriptionType")
    public final String descriptionType;
    @c("hasApp")
    public final boolean hasApp;
    @c("hasInline")
    public final boolean hasInline;
    @c("imageURL")
    public final String imageURL;
    @c("xml")
    public final String inlineXml;
    @c("layoutAttribute")
    public final PageHamiLayoutAttributeDto layoutAttribute;
    @c("link")
    public final String link;
    @c("referrerList")
    public final String referrer;
    @c("shortDescription")
    public final String shortDescription;
    @c("title")
    public final String title;

    public PageHamiPromoRowItem(String str, String str2, String str3, String str4, String str5, Float f2, PageHamiLayoutAttributeDto pageHamiLayoutAttributeDto, String str6, PageAppRowItemDto pageAppRowItemDto, boolean z, boolean z2, String str7) {
        j.b(str, "imageURL");
        j.b(str2, "link");
        j.b(str4, "descriptionType");
        j.b(str5, "title");
        j.b(str7, "referrer");
        this.imageURL = str;
        this.link = str2;
        this.shortDescription = str3;
        this.descriptionType = str4;
        this.title = str5;
        this.appRate = f2;
        this.layoutAttribute = pageHamiLayoutAttributeDto;
        this.inlineXml = str6;
        this.app = pageAppRowItemDto;
        this.hasInline = z;
        this.hasApp = z2;
        this.referrer = str7;
    }

    public final PageAppRowItemDto getApp() {
        return this.app;
    }

    public final Float getAppRate() {
        return this.appRate;
    }

    public final String getDescriptionType() {
        return this.descriptionType;
    }

    public final boolean getHasApp() {
        return this.hasApp;
    }

    public final boolean getHasInline() {
        return this.hasInline;
    }

    public final String getImageURL() {
        return this.imageURL;
    }

    public final String getInlineXml() {
        return this.inlineXml;
    }

    public final PageHamiLayoutAttributeDto getLayoutAttribute() {
        return this.layoutAttribute;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getShortDescription() {
        return this.shortDescription;
    }

    public final String getTitle() {
        return this.title;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x003b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.farsitel.bazaar.common.model.page.ListItem.Hami toHamiItem() {
        /*
            r11 = this;
            com.farsitel.bazaar.common.model.page.HamiItem r9 = new com.farsitel.bazaar.common.model.page.HamiItem
            java.lang.String r1 = r11.imageURL
            java.lang.String r2 = r11.link
            com.farsitel.bazaar.data.dto.responsedto.PageHamiLayoutAttributeDto r0 = r11.layoutAttribute
            r3 = 0
            if (r0 == 0) goto L_0x0011
            java.lang.String r0 = r0.getBackground()
            r4 = r0
            goto L_0x0012
        L_0x0011:
            r4 = r3
        L_0x0012:
            com.farsitel.bazaar.data.dto.responsedto.PageHamiLayoutAttributeDto r0 = r11.layoutAttribute
            if (r0 == 0) goto L_0x001c
            java.lang.String r0 = r0.getTextColor()
            r5 = r0
            goto L_0x001d
        L_0x001c:
            r5 = r3
        L_0x001d:
            boolean r0 = r11.hasApp
            if (r0 == 0) goto L_0x0030
            com.farsitel.bazaar.data.dto.responsedto.PageAppRowItemDto r0 = r11.app
            if (r0 == 0) goto L_0x0030
            r6 = 0
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)
            com.farsitel.bazaar.common.model.page.PageAppItem r0 = r0.toPageAppItem(r6)
            r6 = r0
            goto L_0x0031
        L_0x0030:
            r6 = r3
        L_0x0031:
            java.lang.String r7 = r11.shortDescription
            boolean r0 = r11.hasInline
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r11.inlineXml
            r8 = r0
            goto L_0x003c
        L_0x003b:
            r8 = r3
        L_0x003c:
            java.lang.String r10 = r11.referrer
            r0 = r9
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            com.farsitel.bazaar.common.model.page.ListItem$Hami r0 = new com.farsitel.bazaar.common.model.page.ListItem$Hami
            r0.<init>(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.PageHamiPromoRowItem.toHamiItem():com.farsitel.bazaar.common.model.page.ListItem$Hami");
    }
}
