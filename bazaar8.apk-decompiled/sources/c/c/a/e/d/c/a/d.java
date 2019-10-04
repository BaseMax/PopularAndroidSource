package c.c.a.e.d.c.a;

import c.c.a.c.d.e;
import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.AppDetailsComment;
import com.farsitel.bazaar.common.model.appdetail.AppDetailsInline;
import com.farsitel.bazaar.common.model.appdetail.AppDetailsPrice;
import com.farsitel.bazaar.common.model.appdetail.AppDetailsStats;
import com.farsitel.bazaar.common.model.appdetail.AppInfo;
import com.farsitel.bazaar.common.model.appdetail.EditorChoice;
import com.farsitel.bazaar.common.model.appdetail.Package;
import com.farsitel.bazaar.common.model.appdetail.PackageDiff;
import com.farsitel.bazaar.common.model.appdetail.Shamed;
import com.farsitel.bazaar.common.model.appdetail.VideoShot;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AppDetailResponseDto.kt */
public final class d {
    @c("PackageDiffs")
    public final m PackageDiff;
    @c("inline")
    public final g appDetailsInline;
    @c("stats")
    public final i appDetailsStats;
    @c("appEmail")
    public final String appEmail;
    @c("appPhone")
    public final String appPhone;
    @c("applicationType")
    public final Integer applicationType;
    @c("articles")
    public final List<j> articles;
    @c("authorName")
    public final String authorName;
    @c("authorSlug")
    public final String authorSlug;
    @c("categoryName")
    public final String categoryName;
    @c("categorySlug")
    public final String categorySlug;
    @c("commentUtility")
    public final f commentUtility;
    @c("contentRating")
    public final String contentRating;
    @c("description")
    public final String description;
    @c("editorChoice")
    public final k editorChoice;
    @c("hasInAppPurchase")
    public final Boolean hasInAppPurchase;
    @c("homepage")
    public final String homePage;
    @c("icon")
    public final String iconUrl;
    @c("incompatible")
    public final boolean incompatible;
    @c("incompatibleMessage")
    public final String incompatibleMessage;
    @c("name")
    public final String name;
    @c("package")
    public final n packageInfo;
    @c("packageName")
    public final String packageName;
    @c("price")
    public final h price;
    @c("ratingImage")
    public final String ratingImage;
    @c("referrerList")
    public final String referrer;
    @c("relatedPage")
    public final o relatedPage;
    @c("screenShots")
    public final List<p> screenshots;
    @c("shamad")
    public final q shamad;
    @c("shareable")
    public final boolean shareable;
    @c("shortDescription")
    public final String shortDescription;
    @c("tinyRatingImage")
    public final String tinyRatingImage;
    @c("videoTrailer")
    public final s videoShot;

    public final AppInfo a() {
        ArrayList arrayList;
        String str;
        String str2;
        ArrayList arrayList2;
        String str3 = this.name;
        String str4 = this.iconUrl;
        String str5 = this.packageName;
        AppDetailsStats a2 = this.appDetailsStats.a();
        String str6 = this.appEmail;
        String str7 = this.appPhone;
        String str8 = this.homePage;
        String str9 = this.authorName;
        String str10 = this.authorSlug;
        String str11 = this.categoryName;
        String str12 = this.categorySlug;
        String str13 = this.description;
        String str14 = this.ratingImage;
        String str15 = this.tinyRatingImage;
        String str16 = this.contentRating;
        s sVar = this.videoShot;
        VideoShot a3 = sVar != null ? sVar.a() : null;
        AppDetailsPrice a4 = this.price.a();
        Boolean bool = this.hasInAppPurchase;
        n nVar = this.packageInfo;
        Package a5 = nVar != null ? nVar.a() : null;
        List<j> list = this.articles;
        String str17 = str15;
        if (list != null) {
            str2 = str14;
            str = str13;
            ArrayList arrayList3 = new ArrayList(m.a(list, 10));
            for (j a6 : list) {
                arrayList3.add(a6.a());
            }
            arrayList = arrayList3;
        } else {
            str = str13;
            str2 = str14;
            arrayList = null;
        }
        List<p> list2 = this.screenshots;
        if (list2 != null) {
            ArrayList arrayList4 = new ArrayList(m.a(list2, 10));
            for (p a7 : list2) {
                arrayList4.add(a7.a());
            }
            arrayList2 = arrayList4;
        } else {
            arrayList2 = null;
        }
        o oVar = this.relatedPage;
        List<PageTypeItem> a8 = oVar != null ? oVar.a() : null;
        g gVar = this.appDetailsInline;
        AppDetailsInline a9 = gVar != null ? gVar.a() : null;
        m mVar = this.PackageDiff;
        PackageDiff a10 = mVar != null ? mVar.a() : null;
        String str18 = this.shortDescription;
        AppDetailsComment a11 = this.commentUtility.a();
        q qVar = this.shamad;
        Shamed a12 = qVar != null ? qVar.a() : null;
        EditorChoice a13 = this.editorChoice.a();
        boolean z = this.incompatible;
        String str19 = this.incompatibleMessage;
        Integer num = this.applicationType;
        String str20 = this.referrer;
        if (str20 == null) {
            str20 = e.a();
        }
        AppInfo appInfo = new AppInfo(str3, str4, str5, a2, str6, str7, str8, str9, str10, str11, str12, str, str2, str17, str16, a3, a4, bool, a5, arrayList, arrayList2, a8, a9, a10, str18, a11, a12, a13, z, str19, num, str20);
        return appInfo;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (j.a((Object) this.name, (Object) dVar.name) && j.a((Object) this.iconUrl, (Object) dVar.iconUrl) && j.a((Object) this.packageName, (Object) dVar.packageName) && j.a((Object) this.appEmail, (Object) dVar.appEmail) && j.a((Object) this.appPhone, (Object) dVar.appPhone) && j.a((Object) this.homePage, (Object) dVar.homePage) && j.a((Object) this.authorName, (Object) dVar.authorName) && j.a((Object) this.authorSlug, (Object) dVar.authorSlug) && j.a((Object) this.categoryName, (Object) dVar.categoryName) && j.a((Object) this.categorySlug, (Object) dVar.categorySlug) && j.a((Object) this.description, (Object) dVar.description) && j.a((Object) this.contentRating, (Object) dVar.contentRating) && j.a((Object) this.ratingImage, (Object) dVar.ratingImage) && j.a((Object) this.tinyRatingImage, (Object) dVar.tinyRatingImage) && j.a((Object) this.videoShot, (Object) dVar.videoShot) && j.a((Object) this.price, (Object) dVar.price)) {
                    if ((this.shareable == dVar.shareable) && j.a((Object) this.hasInAppPurchase, (Object) dVar.hasInAppPurchase) && j.a((Object) this.packageInfo, (Object) dVar.packageInfo) && j.a((Object) this.articles, (Object) dVar.articles) && j.a((Object) this.screenshots, (Object) dVar.screenshots) && j.a((Object) this.relatedPage, (Object) dVar.relatedPage) && j.a((Object) this.PackageDiff, (Object) dVar.PackageDiff) && j.a((Object) this.appDetailsInline, (Object) dVar.appDetailsInline) && j.a((Object) this.appDetailsStats, (Object) dVar.appDetailsStats) && j.a((Object) this.shortDescription, (Object) dVar.shortDescription) && j.a((Object) this.commentUtility, (Object) dVar.commentUtility) && j.a((Object) this.shamad, (Object) dVar.shamad) && j.a((Object) this.editorChoice, (Object) dVar.editorChoice)) {
                        if (!(this.incompatible == dVar.incompatible) || !j.a((Object) this.incompatibleMessage, (Object) dVar.incompatibleMessage) || !j.a((Object) this.applicationType, (Object) dVar.applicationType) || !j.a((Object) this.referrer, (Object) dVar.referrer)) {
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
        String str = this.name;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.iconUrl;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.packageName;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.appEmail;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.appPhone;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.homePage;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.authorName;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.authorSlug;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.categoryName;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.categorySlug;
        int hashCode10 = (hashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.description;
        int hashCode11 = (hashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.contentRating;
        int hashCode12 = (hashCode11 + (str12 != null ? str12.hashCode() : 0)) * 31;
        String str13 = this.ratingImage;
        int hashCode13 = (hashCode12 + (str13 != null ? str13.hashCode() : 0)) * 31;
        String str14 = this.tinyRatingImage;
        int hashCode14 = (hashCode13 + (str14 != null ? str14.hashCode() : 0)) * 31;
        s sVar = this.videoShot;
        int hashCode15 = (hashCode14 + (sVar != null ? sVar.hashCode() : 0)) * 31;
        h hVar = this.price;
        int hashCode16 = (hashCode15 + (hVar != null ? hVar.hashCode() : 0)) * 31;
        boolean z = this.shareable;
        if (z) {
            z = true;
        }
        int i3 = (hashCode16 + (z ? 1 : 0)) * 31;
        Boolean bool = this.hasInAppPurchase;
        int hashCode17 = (i3 + (bool != null ? bool.hashCode() : 0)) * 31;
        n nVar = this.packageInfo;
        int hashCode18 = (hashCode17 + (nVar != null ? nVar.hashCode() : 0)) * 31;
        List<j> list = this.articles;
        int hashCode19 = (hashCode18 + (list != null ? list.hashCode() : 0)) * 31;
        List<p> list2 = this.screenshots;
        int hashCode20 = (hashCode19 + (list2 != null ? list2.hashCode() : 0)) * 31;
        o oVar = this.relatedPage;
        int hashCode21 = (hashCode20 + (oVar != null ? oVar.hashCode() : 0)) * 31;
        m mVar = this.PackageDiff;
        int hashCode22 = (hashCode21 + (mVar != null ? mVar.hashCode() : 0)) * 31;
        g gVar = this.appDetailsInline;
        int hashCode23 = (hashCode22 + (gVar != null ? gVar.hashCode() : 0)) * 31;
        i iVar = this.appDetailsStats;
        int hashCode24 = (hashCode23 + (iVar != null ? iVar.hashCode() : 0)) * 31;
        String str15 = this.shortDescription;
        int hashCode25 = (hashCode24 + (str15 != null ? str15.hashCode() : 0)) * 31;
        f fVar = this.commentUtility;
        int hashCode26 = (hashCode25 + (fVar != null ? fVar.hashCode() : 0)) * 31;
        q qVar = this.shamad;
        int hashCode27 = (hashCode26 + (qVar != null ? qVar.hashCode() : 0)) * 31;
        k kVar = this.editorChoice;
        int hashCode28 = (hashCode27 + (kVar != null ? kVar.hashCode() : 0)) * 31;
        boolean z2 = this.incompatible;
        if (z2) {
            z2 = true;
        }
        int i4 = (hashCode28 + (z2 ? 1 : 0)) * 31;
        String str16 = this.incompatibleMessage;
        int hashCode29 = (i4 + (str16 != null ? str16.hashCode() : 0)) * 31;
        Integer num = this.applicationType;
        int hashCode30 = (hashCode29 + (num != null ? num.hashCode() : 0)) * 31;
        String str17 = this.referrer;
        if (str17 != null) {
            i2 = str17.hashCode();
        }
        return hashCode30 + i2;
    }

    public String toString() {
        return "AppDetailResponseDto(name=" + this.name + ", iconUrl=" + this.iconUrl + ", packageName=" + this.packageName + ", appEmail=" + this.appEmail + ", appPhone=" + this.appPhone + ", homePage=" + this.homePage + ", authorName=" + this.authorName + ", authorSlug=" + this.authorSlug + ", categoryName=" + this.categoryName + ", categorySlug=" + this.categorySlug + ", description=" + this.description + ", contentRating=" + this.contentRating + ", ratingImage=" + this.ratingImage + ", tinyRatingImage=" + this.tinyRatingImage + ", videoShot=" + this.videoShot + ", price=" + this.price + ", shareable=" + this.shareable + ", hasInAppPurchase=" + this.hasInAppPurchase + ", packageInfo=" + this.packageInfo + ", articles=" + this.articles + ", screenshots=" + this.screenshots + ", relatedPage=" + this.relatedPage + ", PackageDiff=" + this.PackageDiff + ", appDetailsInline=" + this.appDetailsInline + ", appDetailsStats=" + this.appDetailsStats + ", shortDescription=" + this.shortDescription + ", commentUtility=" + this.commentUtility + ", shamad=" + this.shamad + ", editorChoice=" + this.editorChoice + ", incompatible=" + this.incompatible + ", incompatibleMessage=" + this.incompatibleMessage + ", applicationType=" + this.applicationType + ", referrer=" + this.referrer + ")";
    }
}
