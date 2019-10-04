package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.answers.SessionEventTransform;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.f;
import h.f.b.j;

/* compiled from: Page.kt */
public abstract class PageCell {

    /* compiled from: Page.kt */
    public static final class AppCell extends PageCell {
        public final String appName;
        public final String authorName;
        public final String category;
        public final Boolean hasInAppPurchas;
        public final String hash;
        public final String jsonReferer;
        public final Integer minSdkVersion;
        public final String noDiscountPrice;
        public final String packageName;
        public final String pressId;
        public final Long price;
        public final Float rate;
        public final String referer;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public AppCell(String str, String str2, Boolean bool, String str3, Long l2, String str4, String str5, Float f2, Integer num, String str6, String str7, String str8, String str9) {
            super(null);
            j.b(str2, "noDiscountPrice");
            j.b(str4, "appName");
            j.b(str5, "packageName");
            j.b(str7, "pressId");
            this.category = str;
            this.noDiscountPrice = str2;
            this.hasInAppPurchas = bool;
            this.hash = str3;
            this.price = l2;
            this.appName = str4;
            this.packageName = str5;
            this.rate = f2;
            this.minSdkVersion = num;
            this.authorName = str6;
            this.pressId = str7;
            this.referer = str8;
            this.jsonReferer = str9;
        }

        public static /* synthetic */ AppCell copy$default(AppCell appCell, String str, String str2, Boolean bool, String str3, Long l2, String str4, String str5, Float f2, Integer num, String str6, String str7, String str8, String str9, int i2, Object obj) {
            AppCell appCell2 = appCell;
            int i3 = i2;
            return appCell.copy((i3 & 1) != 0 ? appCell2.category : str, (i3 & 2) != 0 ? appCell2.noDiscountPrice : str2, (i3 & 4) != 0 ? appCell2.hasInAppPurchas : bool, (i3 & 8) != 0 ? appCell2.hash : str3, (i3 & 16) != 0 ? appCell2.price : l2, (i3 & 32) != 0 ? appCell2.appName : str4, (i3 & 64) != 0 ? appCell2.packageName : str5, (i3 & 128) != 0 ? appCell2.rate : f2, (i3 & 256) != 0 ? appCell2.minSdkVersion : num, (i3 & 512) != 0 ? appCell2.authorName : str6, (i3 & 1024) != 0 ? appCell2.pressId : str7, (i3 & 2048) != 0 ? appCell2.referer : str8, (i3 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? appCell2.jsonReferer : str9);
        }

        public final String component1() {
            return this.category;
        }

        public final String component10() {
            return this.authorName;
        }

        public final String component11() {
            return this.pressId;
        }

        public final String component12() {
            return this.referer;
        }

        public final String component13() {
            return this.jsonReferer;
        }

        public final String component2() {
            return this.noDiscountPrice;
        }

        public final Boolean component3() {
            return this.hasInAppPurchas;
        }

        public final String component4() {
            return this.hash;
        }

        public final Long component5() {
            return this.price;
        }

        public final String component6() {
            return this.appName;
        }

        public final String component7() {
            return this.packageName;
        }

        public final Float component8() {
            return this.rate;
        }

        public final Integer component9() {
            return this.minSdkVersion;
        }

        public final AppCell copy(String str, String str2, Boolean bool, String str3, Long l2, String str4, String str5, Float f2, Integer num, String str6, String str7, String str8, String str9) {
            String str10 = str2;
            j.b(str10, "noDiscountPrice");
            String str11 = str4;
            j.b(str11, "appName");
            String str12 = str5;
            j.b(str12, "packageName");
            String str13 = str7;
            j.b(str13, "pressId");
            AppCell appCell = new AppCell(str, str10, bool, str3, l2, str11, str12, f2, num, str6, str13, str8, str9);
            return appCell;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:28:0x0088, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.jsonReferer, (java.lang.Object) r3.jsonReferer) != false) goto L_0x008d;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x008d
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.PageCell.AppCell
                if (r0 == 0) goto L_0x008b
                com.farsitel.bazaar.data.entity.PageCell$AppCell r3 = (com.farsitel.bazaar.data.entity.PageCell.AppCell) r3
                java.lang.String r0 = r2.category
                java.lang.String r1 = r3.category
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.String r0 = r2.noDiscountPrice
                java.lang.String r1 = r3.noDiscountPrice
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.Boolean r0 = r2.hasInAppPurchas
                java.lang.Boolean r1 = r3.hasInAppPurchas
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.String r0 = r2.hash
                java.lang.String r1 = r3.hash
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.Long r0 = r2.price
                java.lang.Long r1 = r3.price
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.String r0 = r2.appName
                java.lang.String r1 = r3.appName
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.String r0 = r2.packageName
                java.lang.String r1 = r3.packageName
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.Float r0 = r2.rate
                java.lang.Float r1 = r3.rate
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.Integer r0 = r2.minSdkVersion
                java.lang.Integer r1 = r3.minSdkVersion
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.String r0 = r2.authorName
                java.lang.String r1 = r3.authorName
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.String r0 = r2.pressId
                java.lang.String r1 = r3.pressId
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.String r0 = r2.referer
                java.lang.String r1 = r3.referer
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x008b
                java.lang.String r0 = r2.jsonReferer
                java.lang.String r3 = r3.jsonReferer
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x008b
                goto L_0x008d
            L_0x008b:
                r3 = 0
                return r3
            L_0x008d:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageCell.AppCell.equals(java.lang.Object):boolean");
        }

        public final String getAppName() {
            return this.appName;
        }

        public final String getAuthorName() {
            return this.authorName;
        }

        public final String getCategory() {
            return this.category;
        }

        public final Boolean getHasInAppPurchas() {
            return this.hasInAppPurchas;
        }

        public final String getHash() {
            return this.hash;
        }

        public final String getJsonReferer() {
            return this.jsonReferer;
        }

        public final Integer getMinSdkVersion() {
            return this.minSdkVersion;
        }

        public final String getNoDiscountPrice() {
            return this.noDiscountPrice;
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public final String getPressId() {
            return this.pressId;
        }

        public final Long getPrice() {
            return this.price;
        }

        public final Float getRate() {
            return this.rate;
        }

        public final String getReferer() {
            return this.referer;
        }

        public int hashCode() {
            String str = this.category;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.noDiscountPrice;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            Boolean bool = this.hasInAppPurchas;
            int hashCode3 = (hashCode2 + (bool != null ? bool.hashCode() : 0)) * 31;
            String str3 = this.hash;
            int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
            Long l2 = this.price;
            int hashCode5 = (hashCode4 + (l2 != null ? l2.hashCode() : 0)) * 31;
            String str4 = this.appName;
            int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.packageName;
            int hashCode7 = (hashCode6 + (str5 != null ? str5.hashCode() : 0)) * 31;
            Float f2 = this.rate;
            int hashCode8 = (hashCode7 + (f2 != null ? f2.hashCode() : 0)) * 31;
            Integer num = this.minSdkVersion;
            int hashCode9 = (hashCode8 + (num != null ? num.hashCode() : 0)) * 31;
            String str6 = this.authorName;
            int hashCode10 = (hashCode9 + (str6 != null ? str6.hashCode() : 0)) * 31;
            String str7 = this.pressId;
            int hashCode11 = (hashCode10 + (str7 != null ? str7.hashCode() : 0)) * 31;
            String str8 = this.referer;
            int hashCode12 = (hashCode11 + (str8 != null ? str8.hashCode() : 0)) * 31;
            String str9 = this.jsonReferer;
            if (str9 != null) {
                i2 = str9.hashCode();
            }
            return hashCode12 + i2;
        }

        public String toString() {
            return "AppCell(category=" + this.category + ", noDiscountPrice=" + this.noDiscountPrice + ", hasInAppPurchas=" + this.hasInAppPurchas + ", hash=" + this.hash + ", price=" + this.price + ", appName=" + this.appName + ", packageName=" + this.packageName + ", rate=" + this.rate + ", minSdkVersion=" + this.minSdkVersion + ", authorName=" + this.authorName + ", pressId=" + this.pressId + ", referer=" + this.referer + ", jsonReferer=" + this.jsonReferer + ")";
        }
    }

    /* compiled from: Page.kt */
    public static final class HamiCell extends PageCell {
        public final AppCell app;
        public final String image;
        public final String inlineXml;
        public final String jsonReferrer;
        public final PageHamiLayoutAttribute layoutAttribute;
        public final String link;
        public final String shortDescription;
        public final String title;
        public final String type;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public HamiCell(String str, String str2, String str3, String str4, String str5, String str6, AppCell appCell, String str7, PageHamiLayoutAttribute pageHamiLayoutAttribute) {
            super(null);
            j.b(str, SessionEventTransform.TYPE_KEY);
            j.b(str2, "link");
            j.b(str3, "title");
            this.type = str;
            this.link = str2;
            this.title = str3;
            this.inlineXml = str4;
            this.jsonReferrer = str5;
            this.image = str6;
            this.app = appCell;
            this.shortDescription = str7;
            this.layoutAttribute = pageHamiLayoutAttribute;
        }

        public static /* synthetic */ HamiCell copy$default(HamiCell hamiCell, String str, String str2, String str3, String str4, String str5, String str6, AppCell appCell, String str7, PageHamiLayoutAttribute pageHamiLayoutAttribute, int i2, Object obj) {
            HamiCell hamiCell2 = hamiCell;
            int i3 = i2;
            return hamiCell.copy((i3 & 1) != 0 ? hamiCell2.type : str, (i3 & 2) != 0 ? hamiCell2.link : str2, (i3 & 4) != 0 ? hamiCell2.title : str3, (i3 & 8) != 0 ? hamiCell2.inlineXml : str4, (i3 & 16) != 0 ? hamiCell2.jsonReferrer : str5, (i3 & 32) != 0 ? hamiCell2.image : str6, (i3 & 64) != 0 ? hamiCell2.app : appCell, (i3 & 128) != 0 ? hamiCell2.shortDescription : str7, (i3 & 256) != 0 ? hamiCell2.layoutAttribute : pageHamiLayoutAttribute);
        }

        public final String component1() {
            return this.type;
        }

        public final String component2() {
            return this.link;
        }

        public final String component3() {
            return this.title;
        }

        public final String component4() {
            return this.inlineXml;
        }

        public final String component5() {
            return this.jsonReferrer;
        }

        public final String component6() {
            return this.image;
        }

        public final AppCell component7() {
            return this.app;
        }

        public final String component8() {
            return this.shortDescription;
        }

        public final PageHamiLayoutAttribute component9() {
            return this.layoutAttribute;
        }

        public final HamiCell copy(String str, String str2, String str3, String str4, String str5, String str6, AppCell appCell, String str7, PageHamiLayoutAttribute pageHamiLayoutAttribute) {
            j.b(str, SessionEventTransform.TYPE_KEY);
            j.b(str2, "link");
            j.b(str3, "title");
            HamiCell hamiCell = new HamiCell(str, str2, str3, str4, str5, str6, appCell, str7, pageHamiLayoutAttribute);
            return hamiCell;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:20:0x0060, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.layoutAttribute, (java.lang.Object) r3.layoutAttribute) != false) goto L_0x0065;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0065
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.PageCell.HamiCell
                if (r0 == 0) goto L_0x0063
                com.farsitel.bazaar.data.entity.PageCell$HamiCell r3 = (com.farsitel.bazaar.data.entity.PageCell.HamiCell) r3
                java.lang.String r0 = r2.type
                java.lang.String r1 = r3.type
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0063
                java.lang.String r0 = r2.link
                java.lang.String r1 = r3.link
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0063
                java.lang.String r0 = r2.title
                java.lang.String r1 = r3.title
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0063
                java.lang.String r0 = r2.inlineXml
                java.lang.String r1 = r3.inlineXml
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0063
                java.lang.String r0 = r2.jsonReferrer
                java.lang.String r1 = r3.jsonReferrer
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0063
                java.lang.String r0 = r2.image
                java.lang.String r1 = r3.image
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0063
                com.farsitel.bazaar.data.entity.PageCell$AppCell r0 = r2.app
                com.farsitel.bazaar.data.entity.PageCell$AppCell r1 = r3.app
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0063
                java.lang.String r0 = r2.shortDescription
                java.lang.String r1 = r3.shortDescription
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0063
                com.farsitel.bazaar.data.entity.PageHamiLayoutAttribute r0 = r2.layoutAttribute
                com.farsitel.bazaar.data.entity.PageHamiLayoutAttribute r3 = r3.layoutAttribute
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0063
                goto L_0x0065
            L_0x0063:
                r3 = 0
                return r3
            L_0x0065:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageCell.HamiCell.equals(java.lang.Object):boolean");
        }

        public final AppCell getApp() {
            return this.app;
        }

        public final String getImage() {
            return this.image;
        }

        public final String getInlineXml() {
            return this.inlineXml;
        }

        public final String getJsonReferrer() {
            return this.jsonReferrer;
        }

        public final PageHamiLayoutAttribute getLayoutAttribute() {
            return this.layoutAttribute;
        }

        public final String getLink() {
            return this.link;
        }

        public final String getShortDescription() {
            return this.shortDescription;
        }

        public final String getTitle() {
            return this.title;
        }

        public final String getType() {
            return this.type;
        }

        public int hashCode() {
            String str = this.type;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.link;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.title;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.inlineXml;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.jsonReferrer;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.image;
            int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
            AppCell appCell = this.app;
            int hashCode7 = (hashCode6 + (appCell != null ? appCell.hashCode() : 0)) * 31;
            String str7 = this.shortDescription;
            int hashCode8 = (hashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31;
            PageHamiLayoutAttribute pageHamiLayoutAttribute = this.layoutAttribute;
            if (pageHamiLayoutAttribute != null) {
                i2 = pageHamiLayoutAttribute.hashCode();
            }
            return hashCode8 + i2;
        }

        public String toString() {
            return "HamiCell(type=" + this.type + ", link=" + this.link + ", title=" + this.title + ", inlineXml=" + this.inlineXml + ", jsonReferrer=" + this.jsonReferrer + ", image=" + this.image + ", app=" + this.app + ", shortDescription=" + this.shortDescription + ", layoutAttribute=" + this.layoutAttribute + ")";
        }
    }

    /* compiled from: Page.kt */
    public static final class PromoCell extends PageCell {
        public final String image;
        public final String link;
        public final String referrer;
        public final String subtitle;
        public final String title;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public PromoCell(String str, String str2, String str3, String str4, String str5) {
            super(null);
            j.b(str, "link");
            j.b(str2, "title");
            j.b(str4, "image");
            this.link = str;
            this.title = str2;
            this.subtitle = str3;
            this.image = str4;
            this.referrer = str5;
        }

        public static /* synthetic */ PromoCell copy$default(PromoCell promoCell, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = promoCell.link;
            }
            if ((i2 & 2) != 0) {
                str2 = promoCell.title;
            }
            String str6 = str2;
            if ((i2 & 4) != 0) {
                str3 = promoCell.subtitle;
            }
            String str7 = str3;
            if ((i2 & 8) != 0) {
                str4 = promoCell.image;
            }
            String str8 = str4;
            if ((i2 & 16) != 0) {
                str5 = promoCell.referrer;
            }
            return promoCell.copy(str, str6, str7, str8, str5);
        }

        public final String component1() {
            return this.link;
        }

        public final String component2() {
            return this.title;
        }

        public final String component3() {
            return this.subtitle;
        }

        public final String component4() {
            return this.image;
        }

        public final String component5() {
            return this.referrer;
        }

        public final PromoCell copy(String str, String str2, String str3, String str4, String str5) {
            j.b(str, "link");
            j.b(str2, "title");
            j.b(str4, "image");
            PromoCell promoCell = new PromoCell(str, str2, str3, str4, str5);
            return promoCell;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x003d;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x003d
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.PageCell.PromoCell
                if (r0 == 0) goto L_0x003b
                com.farsitel.bazaar.data.entity.PageCell$PromoCell r3 = (com.farsitel.bazaar.data.entity.PageCell.PromoCell) r3
                java.lang.String r0 = r2.link
                java.lang.String r1 = r3.link
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.title
                java.lang.String r1 = r3.title
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.subtitle
                java.lang.String r1 = r3.subtitle
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.image
                java.lang.String r1 = r3.image
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.referrer
                java.lang.String r3 = r3.referrer
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
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageCell.PromoCell.equals(java.lang.Object):boolean");
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

        public final String getSubtitle() {
            return this.subtitle;
        }

        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String str = this.link;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.title;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.subtitle;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.image;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.referrer;
            if (str5 != null) {
                i2 = str5.hashCode();
            }
            return hashCode4 + i2;
        }

        public String toString() {
            return "PromoCell(link=" + this.link + ", title=" + this.title + ", subtitle=" + this.subtitle + ", image=" + this.image + ", referrer=" + this.referrer + ")";
        }
    }

    /* compiled from: Page.kt */
    public static final class SerialCell extends PageCell {
        public final String coverUrl;
        public final String episodeId;
        public final String episodeIdx;
        public final boolean isAd;
        public final String jsonReferrer;
        public final String name;
        public final int price;
        public final Integer priceBeforeDiscount;
        public final Float rate;
        public final String referrer;
        public final String seasonIdx;
        public final String serialId;
        public final ShortInfo shortInfo;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public SerialCell(String str, String str2, String str3, String str4, String str5, String str6, int i2, Integer num, Float f2, boolean z, ShortInfo shortInfo2, String str7, String str8) {
            super(null);
            j.b(str, "serialId");
            j.b(str5, "coverUrl");
            j.b(str6, DefaultAppMeasurementEventListenerRegistrar.NAME);
            this.serialId = str;
            this.episodeId = str2;
            this.seasonIdx = str3;
            this.episodeIdx = str4;
            this.coverUrl = str5;
            this.name = str6;
            this.price = i2;
            this.priceBeforeDiscount = num;
            this.rate = f2;
            this.isAd = z;
            this.shortInfo = shortInfo2;
            this.referrer = str7;
            this.jsonReferrer = str8;
        }

        public static /* synthetic */ SerialCell copy$default(SerialCell serialCell, String str, String str2, String str3, String str4, String str5, String str6, int i2, Integer num, Float f2, boolean z, ShortInfo shortInfo2, String str7, String str8, int i3, Object obj) {
            SerialCell serialCell2 = serialCell;
            int i4 = i3;
            return serialCell.copy((i4 & 1) != 0 ? serialCell2.serialId : str, (i4 & 2) != 0 ? serialCell2.episodeId : str2, (i4 & 4) != 0 ? serialCell2.seasonIdx : str3, (i4 & 8) != 0 ? serialCell2.episodeIdx : str4, (i4 & 16) != 0 ? serialCell2.coverUrl : str5, (i4 & 32) != 0 ? serialCell2.name : str6, (i4 & 64) != 0 ? serialCell2.price : i2, (i4 & 128) != 0 ? serialCell2.priceBeforeDiscount : num, (i4 & 256) != 0 ? serialCell2.rate : f2, (i4 & 512) != 0 ? serialCell2.isAd : z, (i4 & 1024) != 0 ? serialCell2.shortInfo : shortInfo2, (i4 & 2048) != 0 ? serialCell2.referrer : str7, (i4 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? serialCell2.jsonReferrer : str8);
        }

        public final String component1() {
            return this.serialId;
        }

        public final boolean component10() {
            return this.isAd;
        }

        public final ShortInfo component11() {
            return this.shortInfo;
        }

        public final String component12() {
            return this.referrer;
        }

        public final String component13() {
            return this.jsonReferrer;
        }

        public final String component2() {
            return this.episodeId;
        }

        public final String component3() {
            return this.seasonIdx;
        }

        public final String component4() {
            return this.episodeIdx;
        }

        public final String component5() {
            return this.coverUrl;
        }

        public final String component6() {
            return this.name;
        }

        public final int component7() {
            return this.price;
        }

        public final Integer component8() {
            return this.priceBeforeDiscount;
        }

        public final Float component9() {
            return this.rate;
        }

        public final SerialCell copy(String str, String str2, String str3, String str4, String str5, String str6, int i2, Integer num, Float f2, boolean z, ShortInfo shortInfo2, String str7, String str8) {
            String str9 = str;
            j.b(str9, "serialId");
            String str10 = str5;
            j.b(str10, "coverUrl");
            String str11 = str6;
            j.b(str11, DefaultAppMeasurementEventListenerRegistrar.NAME);
            SerialCell serialCell = new SerialCell(str9, str2, str3, str4, str10, str11, i2, num, f2, z, shortInfo2, str7, str8);
            return serialCell;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof SerialCell) {
                    SerialCell serialCell = (SerialCell) obj;
                    if (j.a((Object) this.serialId, (Object) serialCell.serialId) && j.a((Object) this.episodeId, (Object) serialCell.episodeId) && j.a((Object) this.seasonIdx, (Object) serialCell.seasonIdx) && j.a((Object) this.episodeIdx, (Object) serialCell.episodeIdx) && j.a((Object) this.coverUrl, (Object) serialCell.coverUrl) && j.a((Object) this.name, (Object) serialCell.name)) {
                        if ((this.price == serialCell.price) && j.a((Object) this.priceBeforeDiscount, (Object) serialCell.priceBeforeDiscount) && j.a((Object) this.rate, (Object) serialCell.rate)) {
                            if (!(this.isAd == serialCell.isAd) || !j.a((Object) this.shortInfo, (Object) serialCell.shortInfo) || !j.a((Object) this.referrer, (Object) serialCell.referrer) || !j.a((Object) this.jsonReferrer, (Object) serialCell.jsonReferrer)) {
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

        public final String getEpisodeId() {
            return this.episodeId;
        }

        public final String getEpisodeIdx() {
            return this.episodeIdx;
        }

        public final String getJsonReferrer() {
            return this.jsonReferrer;
        }

        public final String getName() {
            return this.name;
        }

        public final int getPrice() {
            return this.price;
        }

        public final Integer getPriceBeforeDiscount() {
            return this.priceBeforeDiscount;
        }

        public final Float getRate() {
            return this.rate;
        }

        public final String getReferrer() {
            return this.referrer;
        }

        public final String getSeasonIdx() {
            return this.seasonIdx;
        }

        public final String getSerialId() {
            return this.serialId;
        }

        public final ShortInfo getShortInfo() {
            return this.shortInfo;
        }

        public int hashCode() {
            String str = this.serialId;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.episodeId;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.seasonIdx;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.episodeIdx;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.coverUrl;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.name;
            int hashCode6 = (((hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.price) * 31;
            Integer num = this.priceBeforeDiscount;
            int hashCode7 = (hashCode6 + (num != null ? num.hashCode() : 0)) * 31;
            Float f2 = this.rate;
            int hashCode8 = (hashCode7 + (f2 != null ? f2.hashCode() : 0)) * 31;
            boolean z = this.isAd;
            if (z) {
                z = true;
            }
            int i3 = (hashCode8 + (z ? 1 : 0)) * 31;
            ShortInfo shortInfo2 = this.shortInfo;
            int hashCode9 = (i3 + (shortInfo2 != null ? shortInfo2.hashCode() : 0)) * 31;
            String str7 = this.referrer;
            int hashCode10 = (hashCode9 + (str7 != null ? str7.hashCode() : 0)) * 31;
            String str8 = this.jsonReferrer;
            if (str8 != null) {
                i2 = str8.hashCode();
            }
            return hashCode10 + i2;
        }

        public final boolean isAd() {
            return this.isAd;
        }

        public String toString() {
            return "SerialCell(serialId=" + this.serialId + ", episodeId=" + this.episodeId + ", seasonIdx=" + this.seasonIdx + ", episodeIdx=" + this.episodeIdx + ", coverUrl=" + this.coverUrl + ", name=" + this.name + ", price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", rate=" + this.rate + ", isAd=" + this.isAd + ", shortInfo=" + this.shortInfo + ", referrer=" + this.referrer + ", jsonReferrer=" + this.jsonReferrer + ")";
        }
    }

    /* compiled from: Page.kt */
    public static final class VideoCell extends PageCell {
        public final String coverUrl;
        public final String jsonReferer;
        public final String name;
        public final int price;
        public final Integer priceBeforeDiscount;
        public final String type;
        public final String videoId;
        public final ShortInfo videoInfo;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public VideoCell(String str, Integer num, int i2, String str2, String str3, ShortInfo shortInfo, String str4, String str5) {
            super(null);
            j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str2, "coverUrl");
            j.b(str3, "videoId");
            j.b(str4, SessionEventTransform.TYPE_KEY);
            this.name = str;
            this.priceBeforeDiscount = num;
            this.price = i2;
            this.coverUrl = str2;
            this.videoId = str3;
            this.videoInfo = shortInfo;
            this.type = str4;
            this.jsonReferer = str5;
        }

        public static /* synthetic */ VideoCell copy$default(VideoCell videoCell, String str, Integer num, int i2, String str2, String str3, ShortInfo shortInfo, String str4, String str5, int i3, Object obj) {
            VideoCell videoCell2 = videoCell;
            int i4 = i3;
            return videoCell.copy((i4 & 1) != 0 ? videoCell2.name : str, (i4 & 2) != 0 ? videoCell2.priceBeforeDiscount : num, (i4 & 4) != 0 ? videoCell2.price : i2, (i4 & 8) != 0 ? videoCell2.coverUrl : str2, (i4 & 16) != 0 ? videoCell2.videoId : str3, (i4 & 32) != 0 ? videoCell2.videoInfo : shortInfo, (i4 & 64) != 0 ? videoCell2.type : str4, (i4 & 128) != 0 ? videoCell2.jsonReferer : str5);
        }

        public final String component1() {
            return this.name;
        }

        public final Integer component2() {
            return this.priceBeforeDiscount;
        }

        public final int component3() {
            return this.price;
        }

        public final String component4() {
            return this.coverUrl;
        }

        public final String component5() {
            return this.videoId;
        }

        public final ShortInfo component6() {
            return this.videoInfo;
        }

        public final String component7() {
            return this.type;
        }

        public final String component8() {
            return this.jsonReferer;
        }

        public final VideoCell copy(String str, Integer num, int i2, String str2, String str3, ShortInfo shortInfo, String str4, String str5) {
            j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str2, "coverUrl");
            j.b(str3, "videoId");
            String str6 = str4;
            j.b(str6, SessionEventTransform.TYPE_KEY);
            VideoCell videoCell = new VideoCell(str, num, i2, str2, str3, shortInfo, str6, str5);
            return videoCell;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof VideoCell) {
                    VideoCell videoCell = (VideoCell) obj;
                    if (j.a((Object) this.name, (Object) videoCell.name) && j.a((Object) this.priceBeforeDiscount, (Object) videoCell.priceBeforeDiscount)) {
                        if (!(this.price == videoCell.price) || !j.a((Object) this.coverUrl, (Object) videoCell.coverUrl) || !j.a((Object) this.videoId, (Object) videoCell.videoId) || !j.a((Object) this.videoInfo, (Object) videoCell.videoInfo) || !j.a((Object) this.type, (Object) videoCell.type) || !j.a((Object) this.jsonReferer, (Object) videoCell.jsonReferer)) {
                            return false;
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

        public final String getJsonReferer() {
            return this.jsonReferer;
        }

        public final String getName() {
            return this.name;
        }

        public final int getPrice() {
            return this.price;
        }

        public final Integer getPriceBeforeDiscount() {
            return this.priceBeforeDiscount;
        }

        public final String getType() {
            return this.type;
        }

        public final String getVideoId() {
            return this.videoId;
        }

        public final ShortInfo getVideoInfo() {
            return this.videoInfo;
        }

        public int hashCode() {
            String str = this.name;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            Integer num = this.priceBeforeDiscount;
            int hashCode2 = (((hashCode + (num != null ? num.hashCode() : 0)) * 31) + this.price) * 31;
            String str2 = this.coverUrl;
            int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.videoId;
            int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
            ShortInfo shortInfo = this.videoInfo;
            int hashCode5 = (hashCode4 + (shortInfo != null ? shortInfo.hashCode() : 0)) * 31;
            String str4 = this.type;
            int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.jsonReferer;
            if (str5 != null) {
                i2 = str5.hashCode();
            }
            return hashCode6 + i2;
        }

        public String toString() {
            return "VideoCell(name=" + this.name + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", price=" + this.price + ", coverUrl=" + this.coverUrl + ", videoId=" + this.videoId + ", videoInfo=" + this.videoInfo + ", type=" + this.type + ", jsonReferer=" + this.jsonReferer + ")";
        }
    }

    public PageCell() {
    }

    public /* synthetic */ PageCell(f fVar) {
        this();
    }
}
