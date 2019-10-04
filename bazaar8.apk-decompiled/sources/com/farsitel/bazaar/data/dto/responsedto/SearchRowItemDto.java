package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;

/* compiled from: AppListDto.kt */
public final class SearchRowItemDto {
    @c("app")
    public final SearchAppDto app;
    @c("page")
    public final SearchPromoDto promo;
    @c("serial")
    public final SearchSerialDto serial;
    @c("type")
    public final String type;
    @c("video")
    public final SearchVideoDto video;

    public SearchRowItemDto(String str, SearchAppDto searchAppDto, SearchPromoDto searchPromoDto, SearchSerialDto searchSerialDto, SearchVideoDto searchVideoDto) {
        this.type = str;
        this.app = searchAppDto;
        this.promo = searchPromoDto;
        this.serial = searchSerialDto;
        this.video = searchVideoDto;
    }

    public static /* synthetic */ SearchRowItemDto copy$default(SearchRowItemDto searchRowItemDto, String str, SearchAppDto searchAppDto, SearchPromoDto searchPromoDto, SearchSerialDto searchSerialDto, SearchVideoDto searchVideoDto, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = searchRowItemDto.type;
        }
        if ((i2 & 2) != 0) {
            searchAppDto = searchRowItemDto.app;
        }
        SearchAppDto searchAppDto2 = searchAppDto;
        if ((i2 & 4) != 0) {
            searchPromoDto = searchRowItemDto.promo;
        }
        SearchPromoDto searchPromoDto2 = searchPromoDto;
        if ((i2 & 8) != 0) {
            searchSerialDto = searchRowItemDto.serial;
        }
        SearchSerialDto searchSerialDto2 = searchSerialDto;
        if ((i2 & 16) != 0) {
            searchVideoDto = searchRowItemDto.video;
        }
        return searchRowItemDto.copy(str, searchAppDto2, searchPromoDto2, searchSerialDto2, searchVideoDto);
    }

    public final String component1() {
        return this.type;
    }

    public final SearchAppDto component2() {
        return this.app;
    }

    public final SearchPromoDto component3() {
        return this.promo;
    }

    public final SearchSerialDto component4() {
        return this.serial;
    }

    public final SearchVideoDto component5() {
        return this.video;
    }

    public final SearchRowItemDto copy(String str, SearchAppDto searchAppDto, SearchPromoDto searchPromoDto, SearchSerialDto searchSerialDto, SearchVideoDto searchVideoDto) {
        SearchRowItemDto searchRowItemDto = new SearchRowItemDto(str, searchAppDto, searchPromoDto, searchSerialDto, searchVideoDto);
        return searchRowItemDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.video, (java.lang.Object) r3.video) != false) goto L_0x003d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x003d
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.SearchRowItemDto
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.data.dto.responsedto.SearchRowItemDto r3 = (com.farsitel.bazaar.data.dto.responsedto.SearchRowItemDto) r3
            java.lang.String r0 = r2.type
            java.lang.String r1 = r3.type
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.data.dto.responsedto.SearchAppDto r0 = r2.app
            com.farsitel.bazaar.data.dto.responsedto.SearchAppDto r1 = r3.app
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.data.dto.responsedto.SearchPromoDto r0 = r2.promo
            com.farsitel.bazaar.data.dto.responsedto.SearchPromoDto r1 = r3.promo
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.data.dto.responsedto.SearchSerialDto r0 = r2.serial
            com.farsitel.bazaar.data.dto.responsedto.SearchSerialDto r1 = r3.serial
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            com.farsitel.bazaar.data.dto.responsedto.SearchVideoDto r0 = r2.video
            com.farsitel.bazaar.data.dto.responsedto.SearchVideoDto r3 = r3.video
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x003b
            goto L_0x003d
        L_0x003b:
            r3 = 0
            return r3
        L_0x003d:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.SearchRowItemDto.equals(java.lang.Object):boolean");
    }

    public final SearchAppDto getApp() {
        return this.app;
    }

    public final SearchPromoDto getPromo() {
        return this.promo;
    }

    public final SearchSerialDto getSerial() {
        return this.serial;
    }

    public final String getType() {
        return this.type;
    }

    public final SearchVideoDto getVideo() {
        return this.video;
    }

    public int hashCode() {
        String str = this.type;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        SearchAppDto searchAppDto = this.app;
        int hashCode2 = (hashCode + (searchAppDto != null ? searchAppDto.hashCode() : 0)) * 31;
        SearchPromoDto searchPromoDto = this.promo;
        int hashCode3 = (hashCode2 + (searchPromoDto != null ? searchPromoDto.hashCode() : 0)) * 31;
        SearchSerialDto searchSerialDto = this.serial;
        int hashCode4 = (hashCode3 + (searchSerialDto != null ? searchSerialDto.hashCode() : 0)) * 31;
        SearchVideoDto searchVideoDto = this.video;
        if (searchVideoDto != null) {
            i2 = searchVideoDto.hashCode();
        }
        return hashCode4 + i2;
    }

    public String toString() {
        return "SearchRowItemDto(type=" + this.type + ", app=" + this.app + ", promo=" + this.promo + ", serial=" + this.serial + ", video=" + this.video + ")";
    }
}
