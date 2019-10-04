package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;

/* compiled from: AppListDto.kt */
public final class SearchAppListDto {
    @c("app")
    public final SearchAppDto app;
    @c("inline")
    public final SearchInlineDto inline;
    @c("page")
    public final SearchPromoDto promo;
    @c("rowListApp")
    public final SearchRowListDto rowListApp;
    @c("rowListVideo")
    public final SearchRowListDto rowListVideo;
    @c("serial")
    public final SearchSerialDto serial;
    @c("type")
    public final String type;
    @c("video")
    public final SearchVideoDto video;

    public SearchAppListDto(String str, SearchAppDto searchAppDto, SearchPromoDto searchPromoDto, SearchInlineDto searchInlineDto, SearchVideoDto searchVideoDto, SearchSerialDto searchSerialDto, SearchRowListDto searchRowListDto, SearchRowListDto searchRowListDto2) {
        this.type = str;
        this.app = searchAppDto;
        this.promo = searchPromoDto;
        this.inline = searchInlineDto;
        this.video = searchVideoDto;
        this.serial = searchSerialDto;
        this.rowListVideo = searchRowListDto;
        this.rowListApp = searchRowListDto2;
    }

    public static /* synthetic */ SearchAppListDto copy$default(SearchAppListDto searchAppListDto, String str, SearchAppDto searchAppDto, SearchPromoDto searchPromoDto, SearchInlineDto searchInlineDto, SearchVideoDto searchVideoDto, SearchSerialDto searchSerialDto, SearchRowListDto searchRowListDto, SearchRowListDto searchRowListDto2, int i2, Object obj) {
        SearchAppListDto searchAppListDto2 = searchAppListDto;
        int i3 = i2;
        return searchAppListDto.copy((i3 & 1) != 0 ? searchAppListDto2.type : str, (i3 & 2) != 0 ? searchAppListDto2.app : searchAppDto, (i3 & 4) != 0 ? searchAppListDto2.promo : searchPromoDto, (i3 & 8) != 0 ? searchAppListDto2.inline : searchInlineDto, (i3 & 16) != 0 ? searchAppListDto2.video : searchVideoDto, (i3 & 32) != 0 ? searchAppListDto2.serial : searchSerialDto, (i3 & 64) != 0 ? searchAppListDto2.rowListVideo : searchRowListDto, (i3 & 128) != 0 ? searchAppListDto2.rowListApp : searchRowListDto2);
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

    public final SearchInlineDto component4() {
        return this.inline;
    }

    public final SearchVideoDto component5() {
        return this.video;
    }

    public final SearchSerialDto component6() {
        return this.serial;
    }

    public final SearchRowListDto component7() {
        return this.rowListVideo;
    }

    public final SearchRowListDto component8() {
        return this.rowListApp;
    }

    public final SearchAppListDto copy(String str, SearchAppDto searchAppDto, SearchPromoDto searchPromoDto, SearchInlineDto searchInlineDto, SearchVideoDto searchVideoDto, SearchSerialDto searchSerialDto, SearchRowListDto searchRowListDto, SearchRowListDto searchRowListDto2) {
        SearchAppListDto searchAppListDto = new SearchAppListDto(str, searchAppDto, searchPromoDto, searchInlineDto, searchVideoDto, searchSerialDto, searchRowListDto, searchRowListDto2);
        return searchAppListDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0056, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.rowListApp, (java.lang.Object) r3.rowListApp) != false) goto L_0x005b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x005b
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.SearchAppListDto
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchAppListDto r3 = (com.farsitel.bazaar.data.dto.responsedto.SearchAppListDto) r3
            java.lang.String r0 = r2.type
            java.lang.String r1 = r3.type
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchAppDto r0 = r2.app
            com.farsitel.bazaar.data.dto.responsedto.SearchAppDto r1 = r3.app
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchPromoDto r0 = r2.promo
            com.farsitel.bazaar.data.dto.responsedto.SearchPromoDto r1 = r3.promo
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchInlineDto r0 = r2.inline
            com.farsitel.bazaar.data.dto.responsedto.SearchInlineDto r1 = r3.inline
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchVideoDto r0 = r2.video
            com.farsitel.bazaar.data.dto.responsedto.SearchVideoDto r1 = r3.video
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchSerialDto r0 = r2.serial
            com.farsitel.bazaar.data.dto.responsedto.SearchSerialDto r1 = r3.serial
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchRowListDto r0 = r2.rowListVideo
            com.farsitel.bazaar.data.dto.responsedto.SearchRowListDto r1 = r3.rowListVideo
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.data.dto.responsedto.SearchRowListDto r0 = r2.rowListApp
            com.farsitel.bazaar.data.dto.responsedto.SearchRowListDto r3 = r3.rowListApp
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0059
            goto L_0x005b
        L_0x0059:
            r3 = 0
            return r3
        L_0x005b:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.SearchAppListDto.equals(java.lang.Object):boolean");
    }

    public final SearchAppDto getApp() {
        return this.app;
    }

    public final SearchInlineDto getInline() {
        return this.inline;
    }

    public final SearchPromoDto getPromo() {
        return this.promo;
    }

    public final SearchRowListDto getRowListApp() {
        return this.rowListApp;
    }

    public final SearchRowListDto getRowListVideo() {
        return this.rowListVideo;
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
        SearchInlineDto searchInlineDto = this.inline;
        int hashCode4 = (hashCode3 + (searchInlineDto != null ? searchInlineDto.hashCode() : 0)) * 31;
        SearchVideoDto searchVideoDto = this.video;
        int hashCode5 = (hashCode4 + (searchVideoDto != null ? searchVideoDto.hashCode() : 0)) * 31;
        SearchSerialDto searchSerialDto = this.serial;
        int hashCode6 = (hashCode5 + (searchSerialDto != null ? searchSerialDto.hashCode() : 0)) * 31;
        SearchRowListDto searchRowListDto = this.rowListVideo;
        int hashCode7 = (hashCode6 + (searchRowListDto != null ? searchRowListDto.hashCode() : 0)) * 31;
        SearchRowListDto searchRowListDto2 = this.rowListApp;
        if (searchRowListDto2 != null) {
            i2 = searchRowListDto2.hashCode();
        }
        return hashCode7 + i2;
    }

    public String toString() {
        return "SearchAppListDto(type=" + this.type + ", app=" + this.app + ", promo=" + this.promo + ", inline=" + this.inline + ", video=" + this.video + ", serial=" + this.serial + ", rowListVideo=" + this.rowListVideo + ", rowListApp=" + this.rowListApp + ")";
    }
}
