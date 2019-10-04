package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.PageDescriptionItem;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FehrestResponseDto.kt */
public final class SinglePage {
    @c("background")
    public final String background;
    @c("description")
    public final String description;
    @c("endBackgroundColor")
    public final String endBackgroundColor;
    @c("hasOrdinal")
    public final boolean hasOrdinal;
    @c("header")
    public final PageHeader header;
    @c("referrerList")
    public final String referrer;
    @c("rows")
    public final List<PageRowDto> rows;
    @c("more")
    public final String slug;
    @c("startBackgroundColor")
    public final String startBackgroundColor;
    @c("textColor")
    public final String textColor;
    @c("title")
    public final String title;

    public SinglePage(List<PageRowDto> list, PageHeader pageHeader, String str, String str2, String str3, boolean z, String str4, String str5, String str6, String str7, String str8) {
        j.b(pageHeader, "header");
        j.b(str2, "title");
        j.b(str3, "slug");
        j.b(str8, "referrer");
        this.rows = list;
        this.header = pageHeader;
        this.description = str;
        this.title = str2;
        this.slug = str3;
        this.hasOrdinal = z;
        this.background = str4;
        this.endBackgroundColor = str5;
        this.startBackgroundColor = str6;
        this.textColor = str7;
        this.referrer = str8;
    }

    public static /* synthetic */ SinglePage copy$default(SinglePage singlePage, List list, PageHeader pageHeader, String str, String str2, String str3, boolean z, String str4, String str5, String str6, String str7, String str8, int i2, Object obj) {
        SinglePage singlePage2 = singlePage;
        int i3 = i2;
        return singlePage.copy((i3 & 1) != 0 ? singlePage2.rows : list, (i3 & 2) != 0 ? singlePage2.header : pageHeader, (i3 & 4) != 0 ? singlePage2.description : str, (i3 & 8) != 0 ? singlePage2.title : str2, (i3 & 16) != 0 ? singlePage2.slug : str3, (i3 & 32) != 0 ? singlePage2.hasOrdinal : z, (i3 & 64) != 0 ? singlePage2.background : str4, (i3 & 128) != 0 ? singlePage2.endBackgroundColor : str5, (i3 & 256) != 0 ? singlePage2.startBackgroundColor : str6, (i3 & 512) != 0 ? singlePage2.textColor : str7, (i3 & 1024) != 0 ? singlePage2.referrer : str8);
    }

    public final List<PageRowDto> component1() {
        return this.rows;
    }

    public final String component10() {
        return this.textColor;
    }

    public final String component11() {
        return this.referrer;
    }

    public final PageHeader component2() {
        return this.header;
    }

    public final String component3() {
        return this.description;
    }

    public final String component4() {
        return this.title;
    }

    public final String component5() {
        return this.slug;
    }

    public final boolean component6() {
        return this.hasOrdinal;
    }

    public final String component7() {
        return this.background;
    }

    public final String component8() {
        return this.endBackgroundColor;
    }

    public final String component9() {
        return this.startBackgroundColor;
    }

    public final SinglePage copy(List<PageRowDto> list, PageHeader pageHeader, String str, String str2, String str3, boolean z, String str4, String str5, String str6, String str7, String str8) {
        j.b(pageHeader, "header");
        String str9 = str2;
        j.b(str9, "title");
        String str10 = str3;
        j.b(str10, "slug");
        String str11 = str8;
        j.b(str11, "referrer");
        SinglePage singlePage = new SinglePage(list, pageHeader, str, str9, str10, z, str4, str5, str6, str7, str11);
        return singlePage;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SinglePage) {
                SinglePage singlePage = (SinglePage) obj;
                if (j.a((Object) this.rows, (Object) singlePage.rows) && j.a((Object) this.header, (Object) singlePage.header) && j.a((Object) this.description, (Object) singlePage.description) && j.a((Object) this.title, (Object) singlePage.title) && j.a((Object) this.slug, (Object) singlePage.slug)) {
                    if (!(this.hasOrdinal == singlePage.hasOrdinal) || !j.a((Object) this.background, (Object) singlePage.background) || !j.a((Object) this.endBackgroundColor, (Object) singlePage.endBackgroundColor) || !j.a((Object) this.startBackgroundColor, (Object) singlePage.startBackgroundColor) || !j.a((Object) this.textColor, (Object) singlePage.textColor) || !j.a((Object) this.referrer, (Object) singlePage.referrer)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getBackground() {
        return this.background;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getEndBackgroundColor() {
        return this.endBackgroundColor;
    }

    public final boolean getHasOrdinal() {
        return this.hasOrdinal;
    }

    public final PageHeader getHeader() {
        return this.header;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final List<PageRowDto> getRows() {
        return this.rows;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final String getStartBackgroundColor() {
        return this.startBackgroundColor;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        List<PageRowDto> list = this.rows;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        PageHeader pageHeader = this.header;
        int hashCode2 = (hashCode + (pageHeader != null ? pageHeader.hashCode() : 0)) * 31;
        String str = this.description;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.title;
        int hashCode4 = (hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.slug;
        int hashCode5 = (hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        boolean z = this.hasOrdinal;
        if (z) {
            z = true;
        }
        int i3 = (hashCode5 + (z ? 1 : 0)) * 31;
        String str4 = this.background;
        int hashCode6 = (i3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.endBackgroundColor;
        int hashCode7 = (hashCode6 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.startBackgroundColor;
        int hashCode8 = (hashCode7 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.textColor;
        int hashCode9 = (hashCode8 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.referrer;
        if (str8 != null) {
            i2 = str8.hashCode();
        }
        return hashCode9 + i2;
    }

    public final Page toPage(boolean z) {
        ArrayList arrayList = new ArrayList();
        String str = this.description;
        if (str != null) {
            if ((str.length() > 0) && z) {
                arrayList.add(new PageDescriptionItem(this.description));
            }
        }
        List<PageRowDto> list = this.rows;
        if (list != null) {
            for (PageRowDto pageRowDto : list) {
                if (pageRowDto.notEmptyAtLeastOneField()) {
                    arrayList.addAll(pageRowDto.toPageTypeItem());
                }
            }
        }
        Page page = new Page(this.title, null, this.slug, arrayList, this.referrer);
        return page;
    }

    public String toString() {
        return "SinglePage(rows=" + this.rows + ", header=" + this.header + ", description=" + this.description + ", title=" + this.title + ", slug=" + this.slug + ", hasOrdinal=" + this.hasOrdinal + ", background=" + this.background + ", endBackgroundColor=" + this.endBackgroundColor + ", startBackgroundColor=" + this.startBackgroundColor + ", textColor=" + this.textColor + ", referrer=" + this.referrer + ")";
    }
}
