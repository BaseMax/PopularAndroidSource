package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.crashlytics.android.core.LogFileManager;
import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: Page.kt */
public abstract class PageItem implements PageConfig {

    /* compiled from: Page.kt */
    public static final class AppRow extends PageItem {
        public final String authorName;
        public final String backgroundColor;
        public final MiniAppDetailInfo detailInfo;
        public final boolean hasIAP;
        public final String imageUrl;
        public final Integer inlineVersion;
        public final boolean isAd;
        public final boolean isAutoUpdateEnabled;
        public final Boolean isEnabled;
        public final boolean isInstalled;
        public final String jsonReferrer;
        public final Integer minSdk;
        public final String name;
        public final String packageName;
        public final int price;
        public final String priceString;
        public final String published;
        public final Float rate;
        public final String referrer;
        public final String textColor;

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public /* synthetic */ AppRow(boolean r25, java.lang.String r26, java.lang.String r27, java.lang.String r28, java.lang.String r29, int r30, java.lang.String r31, java.lang.String r32, java.lang.Float r33, java.lang.Boolean r34, boolean r35, boolean r36, boolean r37, java.lang.Integer r38, java.lang.Integer r39, com.farsitel.bazaar.data.entity.MiniAppDetailInfo r40, java.lang.String r41, java.lang.String r42, java.lang.String r43, java.lang.String r44, int r45, h.f.b.f r46) {
            /*
                r24 = this;
                r0 = r45
                r1 = r0 & 4
                r2 = 0
                if (r1 == 0) goto L_0x0009
                r6 = r2
                goto L_0x000b
            L_0x0009:
                r6 = r27
            L_0x000b:
                r1 = r0 & 16
                if (r1 == 0) goto L_0x0013
                java.lang.String r1 = ""
                r8 = r1
                goto L_0x0015
            L_0x0013:
                r8 = r29
            L_0x0015:
                r1 = r0 & 64
                if (r1 == 0) goto L_0x001b
                r10 = r2
                goto L_0x001d
            L_0x001b:
                r10 = r31
            L_0x001d:
                r1 = r0 & 128(0x80, float:1.794E-43)
                if (r1 == 0) goto L_0x0023
                r11 = r2
                goto L_0x0025
            L_0x0023:
                r11 = r32
            L_0x0025:
                r1 = r0 & 256(0x100, float:3.59E-43)
                if (r1 == 0) goto L_0x002b
                r12 = r2
                goto L_0x002d
            L_0x002b:
                r12 = r33
            L_0x002d:
                r1 = r0 & 512(0x200, float:7.175E-43)
                if (r1 == 0) goto L_0x0033
                r13 = r2
                goto L_0x0035
            L_0x0033:
                r13 = r34
            L_0x0035:
                r1 = r0 & 8192(0x2000, float:1.14794E-41)
                if (r1 == 0) goto L_0x003c
                r17 = r2
                goto L_0x003e
            L_0x003c:
                r17 = r38
            L_0x003e:
                r1 = r0 & 16384(0x4000, float:2.2959E-41)
                if (r1 == 0) goto L_0x0045
                r18 = r2
                goto L_0x0047
            L_0x0045:
                r18 = r39
            L_0x0047:
                r1 = 32768(0x8000, float:4.5918E-41)
                r1 = r1 & r0
                if (r1 == 0) goto L_0x0050
                r19 = r2
                goto L_0x0052
            L_0x0050:
                r19 = r40
            L_0x0052:
                r1 = 131072(0x20000, float:1.83671E-40)
                r1 = r1 & r0
                if (r1 == 0) goto L_0x005a
                r21 = r2
                goto L_0x005c
            L_0x005a:
                r21 = r42
            L_0x005c:
                r1 = 262144(0x40000, float:3.67342E-40)
                r1 = r1 & r0
                if (r1 == 0) goto L_0x0064
                r22 = r2
                goto L_0x0066
            L_0x0064:
                r22 = r43
            L_0x0066:
                r1 = 524288(0x80000, float:7.34684E-40)
                r0 = r0 & r1
                if (r0 == 0) goto L_0x006e
                r23 = r2
                goto L_0x0070
            L_0x006e:
                r23 = r44
            L_0x0070:
                r3 = r24
                r4 = r25
                r5 = r26
                r7 = r28
                r9 = r30
                r14 = r35
                r15 = r36
                r16 = r37
                r20 = r41
                r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageItem.AppRow.<init>(boolean, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, java.lang.Float, java.lang.Boolean, boolean, boolean, boolean, java.lang.Integer, java.lang.Integer, com.farsitel.bazaar.data.entity.MiniAppDetailInfo, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, h.f.b.f):void");
        }

        public static /* synthetic */ AppRow copy$default(AppRow appRow, boolean z, String str, String str2, String str3, String str4, int i2, String str5, String str6, Float f2, Boolean bool, boolean z2, boolean z3, boolean z4, Integer num, Integer num2, MiniAppDetailInfo miniAppDetailInfo, String str7, String str8, String str9, String str10, int i3, Object obj) {
            Integer num3;
            MiniAppDetailInfo miniAppDetailInfo2;
            AppRow appRow2 = appRow;
            int i4 = i3;
            boolean z5 = (i4 & 1) != 0 ? appRow2.hasIAP : z;
            String str11 = (i4 & 2) != 0 ? appRow2.name : str;
            String str12 = (i4 & 4) != 0 ? appRow2.imageUrl : str2;
            String str13 = (i4 & 8) != 0 ? appRow2.packageName : str3;
            String str14 = (i4 & 16) != 0 ? appRow2.authorName : str4;
            int i5 = (i4 & 32) != 0 ? appRow2.price : i2;
            String str15 = (i4 & 64) != 0 ? appRow2.priceString : str5;
            String str16 = (i4 & 128) != 0 ? appRow2.published : str6;
            Float f3 = (i4 & 256) != 0 ? appRow2.rate : f2;
            Boolean bool2 = (i4 & 512) != 0 ? appRow2.isEnabled : bool;
            boolean z6 = (i4 & 1024) != 0 ? appRow2.isInstalled : z2;
            boolean z7 = (i4 & 2048) != 0 ? appRow2.isAd : z3;
            boolean z8 = (i4 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? appRow2.isAutoUpdateEnabled : z4;
            Integer num4 = (i4 & 8192) != 0 ? appRow2.inlineVersion : num;
            Integer num5 = (i4 & 16384) != 0 ? appRow2.minSdk : num2;
            if ((i4 & 32768) != 0) {
                num3 = num5;
                miniAppDetailInfo2 = appRow2.detailInfo;
            } else {
                num3 = num5;
                miniAppDetailInfo2 = miniAppDetailInfo;
            }
            return appRow.copy(z5, str11, str12, str13, str14, i5, str15, str16, f3, bool2, z6, z7, z8, num4, num3, miniAppDetailInfo2, (i4 & LogFileManager.MAX_LOG_SIZE) != 0 ? appRow.getReferrer() : str7, (i4 & 131072) != 0 ? appRow.getJsonReferrer() : str8, (i4 & 262144) != 0 ? appRow.getBackgroundColor() : str9, (i4 & 524288) != 0 ? appRow.getTextColor() : str10);
        }

        public final boolean component1() {
            return this.hasIAP;
        }

        public final Boolean component10() {
            return this.isEnabled;
        }

        public final boolean component11() {
            return this.isInstalled;
        }

        public final boolean component12() {
            return this.isAd;
        }

        public final boolean component13() {
            return this.isAutoUpdateEnabled;
        }

        public final Integer component14() {
            return this.inlineVersion;
        }

        public final Integer component15() {
            return this.minSdk;
        }

        public final MiniAppDetailInfo component16() {
            return this.detailInfo;
        }

        public final String component17() {
            return getReferrer();
        }

        public final String component18() {
            return getJsonReferrer();
        }

        public final String component19() {
            return getBackgroundColor();
        }

        public final String component2() {
            return this.name;
        }

        public final String component20() {
            return getTextColor();
        }

        public final String component3() {
            return this.imageUrl;
        }

        public final String component4() {
            return this.packageName;
        }

        public final String component5() {
            return this.authorName;
        }

        public final int component6() {
            return this.price;
        }

        public final String component7() {
            return this.priceString;
        }

        public final String component8() {
            return this.published;
        }

        public final Float component9() {
            return this.rate;
        }

        public final AppRow copy(boolean z, String str, String str2, String str3, String str4, int i2, String str5, String str6, Float f2, Boolean bool, boolean z2, boolean z3, boolean z4, Integer num, Integer num2, MiniAppDetailInfo miniAppDetailInfo, String str7, String str8, String str9, String str10) {
            boolean z5 = z;
            j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str3, "packageName");
            j.b(str4, "authorName");
            AppRow appRow = new AppRow(z, str, str2, str3, str4, i2, str5, str6, f2, bool, z2, z3, z4, num, num2, miniAppDetailInfo, str7, str8, str9, str10);
            return appRow;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof AppRow) {
                    AppRow appRow = (AppRow) obj;
                    if ((this.hasIAP == appRow.hasIAP) && j.a((Object) this.name, (Object) appRow.name) && j.a((Object) this.imageUrl, (Object) appRow.imageUrl) && j.a((Object) this.packageName, (Object) appRow.packageName) && j.a((Object) this.authorName, (Object) appRow.authorName)) {
                        if ((this.price == appRow.price) && j.a((Object) this.priceString, (Object) appRow.priceString) && j.a((Object) this.published, (Object) appRow.published) && j.a((Object) this.rate, (Object) appRow.rate) && j.a((Object) this.isEnabled, (Object) appRow.isEnabled)) {
                            if (this.isInstalled == appRow.isInstalled) {
                                if (this.isAd == appRow.isAd) {
                                    if (!(this.isAutoUpdateEnabled == appRow.isAutoUpdateEnabled) || !j.a((Object) this.inlineVersion, (Object) appRow.inlineVersion) || !j.a((Object) this.minSdk, (Object) appRow.minSdk) || !j.a((Object) this.detailInfo, (Object) appRow.detailInfo) || !j.a((Object) getReferrer(), (Object) appRow.getReferrer()) || !j.a((Object) getJsonReferrer(), (Object) appRow.getJsonReferrer()) || !j.a((Object) getBackgroundColor(), (Object) appRow.getBackgroundColor()) || !j.a((Object) getTextColor(), (Object) appRow.getTextColor())) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final String getAuthorName() {
            return this.authorName;
        }

        public String getBackgroundColor() {
            return this.backgroundColor;
        }

        public final MiniAppDetailInfo getDetailInfo() {
            return this.detailInfo;
        }

        public final boolean getHasIAP() {
            return this.hasIAP;
        }

        public final String getImageUrl() {
            return this.imageUrl;
        }

        public final Integer getInlineVersion() {
            return this.inlineVersion;
        }

        public String getJsonReferrer() {
            return this.jsonReferrer;
        }

        public final Integer getMinSdk() {
            return this.minSdk;
        }

        public final String getName() {
            return this.name;
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public final int getPrice() {
            return this.price;
        }

        public final String getPriceString() {
            return this.priceString;
        }

        public final String getPublished() {
            return this.published;
        }

        public final Float getRate() {
            return this.rate;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public String getTextColor() {
            return this.textColor;
        }

        public int hashCode() {
            boolean z = this.hasIAP;
            boolean z2 = true;
            if (z) {
                z = true;
            }
            int i2 = (z ? 1 : 0) * true;
            String str = this.name;
            int i3 = 0;
            int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.imageUrl;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.packageName;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.authorName;
            int hashCode4 = (((hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.price) * 31;
            String str5 = this.priceString;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.published;
            int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
            Float f2 = this.rate;
            int hashCode7 = (hashCode6 + (f2 != null ? f2.hashCode() : 0)) * 31;
            Boolean bool = this.isEnabled;
            int hashCode8 = (hashCode7 + (bool != null ? bool.hashCode() : 0)) * 31;
            boolean z3 = this.isInstalled;
            if (z3) {
                z3 = true;
            }
            int i4 = (hashCode8 + (z3 ? 1 : 0)) * 31;
            boolean z4 = this.isAd;
            if (z4) {
                z4 = true;
            }
            int i5 = (i4 + (z4 ? 1 : 0)) * 31;
            boolean z5 = this.isAutoUpdateEnabled;
            if (!z5) {
                z2 = z5;
            }
            int i6 = (i5 + (z2 ? 1 : 0)) * 31;
            Integer num = this.inlineVersion;
            int hashCode9 = (i6 + (num != null ? num.hashCode() : 0)) * 31;
            Integer num2 = this.minSdk;
            int hashCode10 = (hashCode9 + (num2 != null ? num2.hashCode() : 0)) * 31;
            MiniAppDetailInfo miniAppDetailInfo = this.detailInfo;
            int hashCode11 = (hashCode10 + (miniAppDetailInfo != null ? miniAppDetailInfo.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            int hashCode12 = (hashCode11 + (referrer2 != null ? referrer2.hashCode() : 0)) * 31;
            String jsonReferrer2 = getJsonReferrer();
            int hashCode13 = (hashCode12 + (jsonReferrer2 != null ? jsonReferrer2.hashCode() : 0)) * 31;
            String backgroundColor2 = getBackgroundColor();
            int hashCode14 = (hashCode13 + (backgroundColor2 != null ? backgroundColor2.hashCode() : 0)) * 31;
            String textColor2 = getTextColor();
            if (textColor2 != null) {
                i3 = textColor2.hashCode();
            }
            return hashCode14 + i3;
        }

        public final boolean isAd() {
            return this.isAd;
        }

        public final boolean isAutoUpdateEnabled() {
            return this.isAutoUpdateEnabled;
        }

        public final Boolean isEnabled() {
            return this.isEnabled;
        }

        public final boolean isInstalled() {
            return this.isInstalled;
        }

        public String toString() {
            return "AppRow(hasIAP=" + this.hasIAP + ", name=" + this.name + ", imageUrl=" + this.imageUrl + ", packageName=" + this.packageName + ", authorName=" + this.authorName + ", price=" + this.price + ", priceString=" + this.priceString + ", published=" + this.published + ", rate=" + this.rate + ", isEnabled=" + this.isEnabled + ", isInstalled=" + this.isInstalled + ", isAd=" + this.isAd + ", isAutoUpdateEnabled=" + this.isAutoUpdateEnabled + ", inlineVersion=" + this.inlineVersion + ", minSdk=" + this.minSdk + ", detailInfo=" + this.detailInfo + ", referrer=" + getReferrer() + ", jsonReferrer=" + getJsonReferrer() + ", backgroundColor=" + getBackgroundColor() + ", textColor=" + getTextColor() + ")";
        }

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public AppRow(boolean z, String str, String str2, String str3, String str4, int i2, String str5, String str6, Float f2, Boolean bool, boolean z2, boolean z3, boolean z4, Integer num, Integer num2, MiniAppDetailInfo miniAppDetailInfo, String str7, String str8, String str9, String str10) {
            super(null);
            j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str3, "packageName");
            j.b(str4, "authorName");
            this.hasIAP = z;
            this.name = str;
            this.imageUrl = str2;
            this.packageName = str3;
            this.authorName = str4;
            this.price = i2;
            this.priceString = str5;
            this.published = str6;
            this.rate = f2;
            this.isEnabled = bool;
            this.isInstalled = z2;
            this.isAd = z3;
            this.isAutoUpdateEnabled = z4;
            this.inlineVersion = num;
            this.minSdk = num2;
            this.detailInfo = miniAppDetailInfo;
            this.referrer = str7;
            this.jsonReferrer = str8;
            this.backgroundColor = str9;
            this.textColor = str10;
        }
    }

    /* compiled from: Page.kt */
    public static final class InlineRow extends PageItem {
        public final AppRow app;
        public final String backgroundColor;
        public final String jsonReferrer;
        public final String link;
        public final String name;
        public final String referrer;
        public final String shortDescription;
        public final String textColor;
        public final String xml;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public InlineRow(String str, String str2, AppRow appRow, String str3, String str4, String str5, String str6, String str7, String str8) {
            super(null);
            j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str2, "link");
            j.b(str3, "xml");
            this.name = str;
            this.link = str2;
            this.app = appRow;
            this.xml = str3;
            this.shortDescription = str4;
            this.referrer = str5;
            this.jsonReferrer = str6;
            this.backgroundColor = str7;
            this.textColor = str8;
        }

        public static /* synthetic */ InlineRow copy$default(InlineRow inlineRow, String str, String str2, AppRow appRow, String str3, String str4, String str5, String str6, String str7, String str8, int i2, Object obj) {
            InlineRow inlineRow2 = inlineRow;
            int i3 = i2;
            return inlineRow.copy((i3 & 1) != 0 ? inlineRow2.name : str, (i3 & 2) != 0 ? inlineRow2.link : str2, (i3 & 4) != 0 ? inlineRow2.app : appRow, (i3 & 8) != 0 ? inlineRow2.xml : str3, (i3 & 16) != 0 ? inlineRow2.shortDescription : str4, (i3 & 32) != 0 ? inlineRow.getReferrer() : str5, (i3 & 64) != 0 ? inlineRow.getJsonReferrer() : str6, (i3 & 128) != 0 ? inlineRow.getBackgroundColor() : str7, (i3 & 256) != 0 ? inlineRow.getTextColor() : str8);
        }

        public final String component1() {
            return this.name;
        }

        public final String component2() {
            return this.link;
        }

        public final AppRow component3() {
            return this.app;
        }

        public final String component4() {
            return this.xml;
        }

        public final String component5() {
            return this.shortDescription;
        }

        public final String component6() {
            return getReferrer();
        }

        public final String component7() {
            return getJsonReferrer();
        }

        public final String component8() {
            return getBackgroundColor();
        }

        public final String component9() {
            return getTextColor();
        }

        public final InlineRow copy(String str, String str2, AppRow appRow, String str3, String str4, String str5, String str6, String str7, String str8) {
            j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str2, "link");
            j.b(str3, "xml");
            InlineRow inlineRow = new InlineRow(str, str2, appRow, str3, str4, str5, str6, str7, str8);
            return inlineRow;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:20:0x0070, code lost:
            if (h.f.b.j.a((java.lang.Object) getTextColor(), (java.lang.Object) r3.getTextColor()) != false) goto L_0x0075;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0075
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.PageItem.InlineRow
                if (r0 == 0) goto L_0x0073
                com.farsitel.bazaar.data.entity.PageItem$InlineRow r3 = (com.farsitel.bazaar.data.entity.PageItem.InlineRow) r3
                java.lang.String r0 = r2.name
                java.lang.String r1 = r3.name
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0073
                java.lang.String r0 = r2.link
                java.lang.String r1 = r3.link
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0073
                com.farsitel.bazaar.data.entity.PageItem$AppRow r0 = r2.app
                com.farsitel.bazaar.data.entity.PageItem$AppRow r1 = r3.app
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0073
                java.lang.String r0 = r2.xml
                java.lang.String r1 = r3.xml
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0073
                java.lang.String r0 = r2.shortDescription
                java.lang.String r1 = r3.shortDescription
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0073
                java.lang.String r0 = r2.getReferrer()
                java.lang.String r1 = r3.getReferrer()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0073
                java.lang.String r0 = r2.getJsonReferrer()
                java.lang.String r1 = r3.getJsonReferrer()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0073
                java.lang.String r0 = r2.getBackgroundColor()
                java.lang.String r1 = r3.getBackgroundColor()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0073
                java.lang.String r0 = r2.getTextColor()
                java.lang.String r3 = r3.getTextColor()
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0073
                goto L_0x0075
            L_0x0073:
                r3 = 0
                return r3
            L_0x0075:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageItem.InlineRow.equals(java.lang.Object):boolean");
        }

        public final AppRow getApp() {
            return this.app;
        }

        public String getBackgroundColor() {
            return this.backgroundColor;
        }

        public String getJsonReferrer() {
            return this.jsonReferrer;
        }

        public final String getLink() {
            return this.link;
        }

        public final String getName() {
            return this.name;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public final String getShortDescription() {
            return this.shortDescription;
        }

        public String getTextColor() {
            return this.textColor;
        }

        public final String getXml() {
            return this.xml;
        }

        public int hashCode() {
            String str = this.name;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.link;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            AppRow appRow = this.app;
            int hashCode3 = (hashCode2 + (appRow != null ? appRow.hashCode() : 0)) * 31;
            String str3 = this.xml;
            int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.shortDescription;
            int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            int hashCode6 = (hashCode5 + (referrer2 != null ? referrer2.hashCode() : 0)) * 31;
            String jsonReferrer2 = getJsonReferrer();
            int hashCode7 = (hashCode6 + (jsonReferrer2 != null ? jsonReferrer2.hashCode() : 0)) * 31;
            String backgroundColor2 = getBackgroundColor();
            int hashCode8 = (hashCode7 + (backgroundColor2 != null ? backgroundColor2.hashCode() : 0)) * 31;
            String textColor2 = getTextColor();
            if (textColor2 != null) {
                i2 = textColor2.hashCode();
            }
            return hashCode8 + i2;
        }

        public String toString() {
            return "InlineRow(name=" + this.name + ", link=" + this.link + ", app=" + this.app + ", xml=" + this.xml + ", shortDescription=" + this.shortDescription + ", referrer=" + getReferrer() + ", jsonReferrer=" + getJsonReferrer() + ", backgroundColor=" + getBackgroundColor() + ", textColor=" + getTextColor() + ")";
        }
    }

    /* compiled from: Page.kt */
    public static final class PromoRow extends PageItem {
        public final String backgroundColor;
        public final String image;
        public final String jsonReferrer;
        public final String link;
        public final String referrer;
        public final String subtitle;
        public final String textColor;
        public final String title;

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ PromoRow(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, f fVar) {
            this(str, (i2 & 2) != 0 ? null : str2, str3, str4, str5, str6, str7, str8);
        }

        public static /* synthetic */ PromoRow copy$default(PromoRow promoRow, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, Object obj) {
            PromoRow promoRow2 = promoRow;
            int i3 = i2;
            return promoRow.copy((i3 & 1) != 0 ? promoRow2.title : str, (i3 & 2) != 0 ? promoRow2.subtitle : str2, (i3 & 4) != 0 ? promoRow2.link : str3, (i3 & 8) != 0 ? promoRow2.image : str4, (i3 & 16) != 0 ? promoRow.getReferrer() : str5, (i3 & 32) != 0 ? promoRow.getJsonReferrer() : str6, (i3 & 64) != 0 ? promoRow.getBackgroundColor() : str7, (i3 & 128) != 0 ? promoRow.getTextColor() : str8);
        }

        public final String component1() {
            return this.title;
        }

        public final String component2() {
            return this.subtitle;
        }

        public final String component3() {
            return this.link;
        }

        public final String component4() {
            return this.image;
        }

        public final String component5() {
            return getReferrer();
        }

        public final String component6() {
            return getJsonReferrer();
        }

        public final String component7() {
            return getBackgroundColor();
        }

        public final String component8() {
            return getTextColor();
        }

        public final PromoRow copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            j.b(str, "title");
            j.b(str3, "link");
            j.b(str4, "image");
            PromoRow promoRow = new PromoRow(str, str2, str3, str4, str5, str6, str7, str8);
            return promoRow;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0066, code lost:
            if (h.f.b.j.a((java.lang.Object) getTextColor(), (java.lang.Object) r3.getTextColor()) != false) goto L_0x006b;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x006b
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.PageItem.PromoRow
                if (r0 == 0) goto L_0x0069
                com.farsitel.bazaar.data.entity.PageItem$PromoRow r3 = (com.farsitel.bazaar.data.entity.PageItem.PromoRow) r3
                java.lang.String r0 = r2.title
                java.lang.String r1 = r3.title
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.subtitle
                java.lang.String r1 = r3.subtitle
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.link
                java.lang.String r1 = r3.link
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.image
                java.lang.String r1 = r3.image
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.getReferrer()
                java.lang.String r1 = r3.getReferrer()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.getJsonReferrer()
                java.lang.String r1 = r3.getJsonReferrer()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.getBackgroundColor()
                java.lang.String r1 = r3.getBackgroundColor()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.getTextColor()
                java.lang.String r3 = r3.getTextColor()
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0069
                goto L_0x006b
            L_0x0069:
                r3 = 0
                return r3
            L_0x006b:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageItem.PromoRow.equals(java.lang.Object):boolean");
        }

        public String getBackgroundColor() {
            return this.backgroundColor;
        }

        public final String getImage() {
            return this.image;
        }

        public String getJsonReferrer() {
            return this.jsonReferrer;
        }

        public final String getLink() {
            return this.link;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public final String getSubtitle() {
            return this.subtitle;
        }

        public String getTextColor() {
            return this.textColor;
        }

        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String str = this.title;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.subtitle;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.link;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.image;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            int hashCode5 = (hashCode4 + (referrer2 != null ? referrer2.hashCode() : 0)) * 31;
            String jsonReferrer2 = getJsonReferrer();
            int hashCode6 = (hashCode5 + (jsonReferrer2 != null ? jsonReferrer2.hashCode() : 0)) * 31;
            String backgroundColor2 = getBackgroundColor();
            int hashCode7 = (hashCode6 + (backgroundColor2 != null ? backgroundColor2.hashCode() : 0)) * 31;
            String textColor2 = getTextColor();
            if (textColor2 != null) {
                i2 = textColor2.hashCode();
            }
            return hashCode7 + i2;
        }

        public String toString() {
            return "PromoRow(title=" + this.title + ", subtitle=" + this.subtitle + ", link=" + this.link + ", image=" + this.image + ", referrer=" + getReferrer() + ", jsonReferrer=" + getJsonReferrer() + ", backgroundColor=" + getBackgroundColor() + ", textColor=" + getTextColor() + ")";
        }

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public PromoRow(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            super(null);
            j.b(str, "title");
            j.b(str3, "link");
            j.b(str4, "image");
            this.title = str;
            this.subtitle = str2;
            this.link = str3;
            this.image = str4;
            this.referrer = str5;
            this.jsonReferrer = str6;
            this.backgroundColor = str7;
            this.textColor = str8;
        }
    }

    /* compiled from: Page.kt */
    public static final class SerialRow extends PageItem {
        public final String backgroundColor;
        public final String coverUrl;
        public final String episodeId;
        public final String episodeIdx;
        public final boolean isAd;
        public final String jsonReferrer;
        public final String name;
        public final Integer price;
        public final Integer priceBeforeDiscount;
        public final Float rate;
        public final String referrer;
        public final String seasonIdx;
        public final String serialId;
        public final ShortInfo shortInfo;
        public final String textColor;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public SerialRow(String str, String str2, String str3, String str4, String str5, String str6, Float f2, Integer num, Integer num2, boolean z, ShortInfo shortInfo2, String str7, String str8, String str9, String str10) {
            super(null);
            j.b(str, "serialId");
            j.b(str5, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str6, "coverUrl");
            this.serialId = str;
            this.episodeId = str2;
            this.seasonIdx = str3;
            this.episodeIdx = str4;
            this.name = str5;
            this.coverUrl = str6;
            this.rate = f2;
            this.price = num;
            this.priceBeforeDiscount = num2;
            this.isAd = z;
            this.shortInfo = shortInfo2;
            this.referrer = str7;
            this.jsonReferrer = str8;
            this.backgroundColor = str9;
            this.textColor = str10;
        }

        public static /* synthetic */ SerialRow copy$default(SerialRow serialRow, String str, String str2, String str3, String str4, String str5, String str6, Float f2, Integer num, Integer num2, boolean z, ShortInfo shortInfo2, String str7, String str8, String str9, String str10, int i2, Object obj) {
            SerialRow serialRow2 = serialRow;
            int i3 = i2;
            return serialRow.copy((i3 & 1) != 0 ? serialRow2.serialId : str, (i3 & 2) != 0 ? serialRow2.episodeId : str2, (i3 & 4) != 0 ? serialRow2.seasonIdx : str3, (i3 & 8) != 0 ? serialRow2.episodeIdx : str4, (i3 & 16) != 0 ? serialRow2.name : str5, (i3 & 32) != 0 ? serialRow2.coverUrl : str6, (i3 & 64) != 0 ? serialRow2.rate : f2, (i3 & 128) != 0 ? serialRow2.price : num, (i3 & 256) != 0 ? serialRow2.priceBeforeDiscount : num2, (i3 & 512) != 0 ? serialRow2.isAd : z, (i3 & 1024) != 0 ? serialRow2.shortInfo : shortInfo2, (i3 & 2048) != 0 ? serialRow.getReferrer() : str7, (i3 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? serialRow.getJsonReferrer() : str8, (i3 & 8192) != 0 ? serialRow.getBackgroundColor() : str9, (i3 & 16384) != 0 ? serialRow.getTextColor() : str10);
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
            return getReferrer();
        }

        public final String component13() {
            return getJsonReferrer();
        }

        public final String component14() {
            return getBackgroundColor();
        }

        public final String component15() {
            return getTextColor();
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
            return this.name;
        }

        public final String component6() {
            return this.coverUrl;
        }

        public final Float component7() {
            return this.rate;
        }

        public final Integer component8() {
            return this.price;
        }

        public final Integer component9() {
            return this.priceBeforeDiscount;
        }

        public final SerialRow copy(String str, String str2, String str3, String str4, String str5, String str6, Float f2, Integer num, Integer num2, boolean z, ShortInfo shortInfo2, String str7, String str8, String str9, String str10) {
            String str11 = str;
            j.b(str11, "serialId");
            String str12 = str5;
            j.b(str12, DefaultAppMeasurementEventListenerRegistrar.NAME);
            String str13 = str6;
            j.b(str13, "coverUrl");
            SerialRow serialRow = new SerialRow(str11, str2, str3, str4, str12, str13, f2, num, num2, z, shortInfo2, str7, str8, str9, str10);
            return serialRow;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof SerialRow) {
                    SerialRow serialRow = (SerialRow) obj;
                    if (j.a((Object) this.serialId, (Object) serialRow.serialId) && j.a((Object) this.episodeId, (Object) serialRow.episodeId) && j.a((Object) this.seasonIdx, (Object) serialRow.seasonIdx) && j.a((Object) this.episodeIdx, (Object) serialRow.episodeIdx) && j.a((Object) this.name, (Object) serialRow.name) && j.a((Object) this.coverUrl, (Object) serialRow.coverUrl) && j.a((Object) this.rate, (Object) serialRow.rate) && j.a((Object) this.price, (Object) serialRow.price) && j.a((Object) this.priceBeforeDiscount, (Object) serialRow.priceBeforeDiscount)) {
                        if (!(this.isAd == serialRow.isAd) || !j.a((Object) this.shortInfo, (Object) serialRow.shortInfo) || !j.a((Object) getReferrer(), (Object) serialRow.getReferrer()) || !j.a((Object) getJsonReferrer(), (Object) serialRow.getJsonReferrer()) || !j.a((Object) getBackgroundColor(), (Object) serialRow.getBackgroundColor()) || !j.a((Object) getTextColor(), (Object) serialRow.getTextColor())) {
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public String getBackgroundColor() {
            return this.backgroundColor;
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

        public String getJsonReferrer() {
            return this.jsonReferrer;
        }

        public final String getName() {
            return this.name;
        }

        public final Integer getPrice() {
            return this.price;
        }

        public final Integer getPriceBeforeDiscount() {
            return this.priceBeforeDiscount;
        }

        public final Float getRate() {
            return this.rate;
        }

        public String getReferrer() {
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

        public String getTextColor() {
            return this.textColor;
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
            String str5 = this.name;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.coverUrl;
            int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
            Float f2 = this.rate;
            int hashCode7 = (hashCode6 + (f2 != null ? f2.hashCode() : 0)) * 31;
            Integer num = this.price;
            int hashCode8 = (hashCode7 + (num != null ? num.hashCode() : 0)) * 31;
            Integer num2 = this.priceBeforeDiscount;
            int hashCode9 = (hashCode8 + (num2 != null ? num2.hashCode() : 0)) * 31;
            boolean z = this.isAd;
            if (z) {
                z = true;
            }
            int i3 = (hashCode9 + (z ? 1 : 0)) * 31;
            ShortInfo shortInfo2 = this.shortInfo;
            int hashCode10 = (i3 + (shortInfo2 != null ? shortInfo2.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            int hashCode11 = (hashCode10 + (referrer2 != null ? referrer2.hashCode() : 0)) * 31;
            String jsonReferrer2 = getJsonReferrer();
            int hashCode12 = (hashCode11 + (jsonReferrer2 != null ? jsonReferrer2.hashCode() : 0)) * 31;
            String backgroundColor2 = getBackgroundColor();
            int hashCode13 = (hashCode12 + (backgroundColor2 != null ? backgroundColor2.hashCode() : 0)) * 31;
            String textColor2 = getTextColor();
            if (textColor2 != null) {
                i2 = textColor2.hashCode();
            }
            return hashCode13 + i2;
        }

        public final boolean isAd() {
            return this.isAd;
        }

        public String toString() {
            return "SerialRow(serialId=" + this.serialId + ", episodeId=" + this.episodeId + ", seasonIdx=" + this.seasonIdx + ", episodeIdx=" + this.episodeIdx + ", name=" + this.name + ", coverUrl=" + this.coverUrl + ", rate=" + this.rate + ", price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", isAd=" + this.isAd + ", shortInfo=" + this.shortInfo + ", referrer=" + getReferrer() + ", jsonReferrer=" + getJsonReferrer() + ", backgroundColor=" + getBackgroundColor() + ", textColor=" + getTextColor() + ")";
        }
    }

    /* compiled from: Page.kt */
    public static final class VideoRow extends PageItem {
        public final String backgroundColor;
        public final String coverUrl;
        public final String id;
        public final String info;
        public final boolean isAd;
        public final String jsonReferrer;
        public final String moreInfo;
        public final String name;
        public final int price;
        public final Float rate;
        public final String referrer;
        public final String textColor;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public VideoRow(String str, String str2, Float f2, String str3, String str4, int i2, boolean z, String str5, String str6, String str7, String str8, String str9) {
            super(null);
            j.b(str, "id");
            j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str3, "info");
            j.b(str4, "moreInfo");
            j.b(str5, "coverUrl");
            this.id = str;
            this.name = str2;
            this.rate = f2;
            this.info = str3;
            this.moreInfo = str4;
            this.price = i2;
            this.isAd = z;
            this.coverUrl = str5;
            this.referrer = str6;
            this.jsonReferrer = str7;
            this.backgroundColor = str8;
            this.textColor = str9;
        }

        public static /* synthetic */ VideoRow copy$default(VideoRow videoRow, String str, String str2, Float f2, String str3, String str4, int i2, boolean z, String str5, String str6, String str7, String str8, String str9, int i3, Object obj) {
            VideoRow videoRow2 = videoRow;
            int i4 = i3;
            return videoRow.copy((i4 & 1) != 0 ? videoRow2.id : str, (i4 & 2) != 0 ? videoRow2.name : str2, (i4 & 4) != 0 ? videoRow2.rate : f2, (i4 & 8) != 0 ? videoRow2.info : str3, (i4 & 16) != 0 ? videoRow2.moreInfo : str4, (i4 & 32) != 0 ? videoRow2.price : i2, (i4 & 64) != 0 ? videoRow2.isAd : z, (i4 & 128) != 0 ? videoRow2.coverUrl : str5, (i4 & 256) != 0 ? videoRow.getReferrer() : str6, (i4 & 512) != 0 ? videoRow.getJsonReferrer() : str7, (i4 & 1024) != 0 ? videoRow.getBackgroundColor() : str8, (i4 & 2048) != 0 ? videoRow.getTextColor() : str9);
        }

        public final String component1() {
            return this.id;
        }

        public final String component10() {
            return getJsonReferrer();
        }

        public final String component11() {
            return getBackgroundColor();
        }

        public final String component12() {
            return getTextColor();
        }

        public final String component2() {
            return this.name;
        }

        public final Float component3() {
            return this.rate;
        }

        public final String component4() {
            return this.info;
        }

        public final String component5() {
            return this.moreInfo;
        }

        public final int component6() {
            return this.price;
        }

        public final boolean component7() {
            return this.isAd;
        }

        public final String component8() {
            return this.coverUrl;
        }

        public final String component9() {
            return getReferrer();
        }

        public final VideoRow copy(String str, String str2, Float f2, String str3, String str4, int i2, boolean z, String str5, String str6, String str7, String str8, String str9) {
            j.b(str, "id");
            String str10 = str2;
            j.b(str10, DefaultAppMeasurementEventListenerRegistrar.NAME);
            String str11 = str3;
            j.b(str11, "info");
            String str12 = str4;
            j.b(str12, "moreInfo");
            String str13 = str5;
            j.b(str13, "coverUrl");
            VideoRow videoRow = new VideoRow(str, str10, f2, str11, str12, i2, z, str13, str6, str7, str8, str9);
            return videoRow;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof VideoRow) {
                    VideoRow videoRow = (VideoRow) obj;
                    if (j.a((Object) this.id, (Object) videoRow.id) && j.a((Object) this.name, (Object) videoRow.name) && j.a((Object) this.rate, (Object) videoRow.rate) && j.a((Object) this.info, (Object) videoRow.info) && j.a((Object) this.moreInfo, (Object) videoRow.moreInfo)) {
                        if (this.price == videoRow.price) {
                            if (!(this.isAd == videoRow.isAd) || !j.a((Object) this.coverUrl, (Object) videoRow.coverUrl) || !j.a((Object) getReferrer(), (Object) videoRow.getReferrer()) || !j.a((Object) getJsonReferrer(), (Object) videoRow.getJsonReferrer()) || !j.a((Object) getBackgroundColor(), (Object) videoRow.getBackgroundColor()) || !j.a((Object) getTextColor(), (Object) videoRow.getTextColor())) {
                                return false;
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public String getBackgroundColor() {
            return this.backgroundColor;
        }

        public final String getCoverUrl() {
            return this.coverUrl;
        }

        public final String getId() {
            return this.id;
        }

        public final String getInfo() {
            return this.info;
        }

        public String getJsonReferrer() {
            return this.jsonReferrer;
        }

        public final String getMoreInfo() {
            return this.moreInfo;
        }

        public final String getName() {
            return this.name;
        }

        public final int getPrice() {
            return this.price;
        }

        public final Float getRate() {
            return this.rate;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public String getTextColor() {
            return this.textColor;
        }

        public int hashCode() {
            String str = this.id;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.name;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            Float f2 = this.rate;
            int hashCode3 = (hashCode2 + (f2 != null ? f2.hashCode() : 0)) * 31;
            String str3 = this.info;
            int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.moreInfo;
            int hashCode5 = (((hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.price) * 31;
            boolean z = this.isAd;
            if (z) {
                z = true;
            }
            int i3 = (hashCode5 + (z ? 1 : 0)) * 31;
            String str5 = this.coverUrl;
            int hashCode6 = (i3 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            int hashCode7 = (hashCode6 + (referrer2 != null ? referrer2.hashCode() : 0)) * 31;
            String jsonReferrer2 = getJsonReferrer();
            int hashCode8 = (hashCode7 + (jsonReferrer2 != null ? jsonReferrer2.hashCode() : 0)) * 31;
            String backgroundColor2 = getBackgroundColor();
            int hashCode9 = (hashCode8 + (backgroundColor2 != null ? backgroundColor2.hashCode() : 0)) * 31;
            String textColor2 = getTextColor();
            if (textColor2 != null) {
                i2 = textColor2.hashCode();
            }
            return hashCode9 + i2;
        }

        public final boolean isAd() {
            return this.isAd;
        }

        public String toString() {
            return "VideoRow(id=" + this.id + ", name=" + this.name + ", rate=" + this.rate + ", info=" + this.info + ", moreInfo=" + this.moreInfo + ", price=" + this.price + ", isAd=" + this.isAd + ", coverUrl=" + this.coverUrl + ", referrer=" + getReferrer() + ", jsonReferrer=" + getJsonReferrer() + ", backgroundColor=" + getBackgroundColor() + ", textColor=" + getTextColor() + ")";
        }
    }

    /* compiled from: Page.kt */
    public static final class VitrinPage extends PageItem {
        public final String action;
        public final String backgroundColor;
        public final List<PageCell> items;
        public final String jsonReferrer;
        public final String referrer;
        public final String searchToken;
        public final String textColor;
        public final String title;

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public /* synthetic */ VitrinPage(java.lang.String r13, java.lang.String r14, java.util.List r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, int r21, h.f.b.f r22) {
            /*
                r12 = this;
                r0 = r21
                r1 = r0 & 16
                r2 = 0
                if (r1 == 0) goto L_0x0009
                r8 = r2
                goto L_0x000b
            L_0x0009:
                r8 = r17
            L_0x000b:
                r1 = r0 & 32
                if (r1 == 0) goto L_0x0011
                r9 = r2
                goto L_0x0013
            L_0x0011:
                r9 = r18
            L_0x0013:
                r1 = r0 & 64
                if (r1 == 0) goto L_0x0019
                r10 = r2
                goto L_0x001b
            L_0x0019:
                r10 = r19
            L_0x001b:
                r0 = r0 & 128(0x80, float:1.794E-43)
                if (r0 == 0) goto L_0x0021
                r11 = r2
                goto L_0x0023
            L_0x0021:
                r11 = r20
            L_0x0023:
                r3 = r12
                r4 = r13
                r5 = r14
                r6 = r15
                r7 = r16
                r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageItem.VitrinPage.<init>(java.lang.String, java.lang.String, java.util.List, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, h.f.b.f):void");
        }

        public static /* synthetic */ VitrinPage copy$default(VitrinPage vitrinPage, String str, String str2, List list, String str3, String str4, String str5, String str6, String str7, int i2, Object obj) {
            VitrinPage vitrinPage2 = vitrinPage;
            int i3 = i2;
            return vitrinPage.copy((i3 & 1) != 0 ? vitrinPage2.title : str, (i3 & 2) != 0 ? vitrinPage2.action : str2, (i3 & 4) != 0 ? vitrinPage2.items : list, (i3 & 8) != 0 ? vitrinPage.getReferrer() : str3, (i3 & 16) != 0 ? vitrinPage.getJsonReferrer() : str4, (i3 & 32) != 0 ? vitrinPage.getBackgroundColor() : str5, (i3 & 64) != 0 ? vitrinPage.getTextColor() : str6, (i3 & 128) != 0 ? vitrinPage2.searchToken : str7);
        }

        public final String component1() {
            return this.title;
        }

        public final String component2() {
            return this.action;
        }

        public final List<PageCell> component3() {
            return this.items;
        }

        public final String component4() {
            return getReferrer();
        }

        public final String component5() {
            return getJsonReferrer();
        }

        public final String component6() {
            return getBackgroundColor();
        }

        public final String component7() {
            return getTextColor();
        }

        public final String component8() {
            return this.searchToken;
        }

        public final VitrinPage copy(String str, String str2, List<? extends PageCell> list, String str3, String str4, String str5, String str6, String str7) {
            j.b(str, "title");
            j.b(list, "items");
            VitrinPage vitrinPage = new VitrinPage(str, str2, list, str3, str4, str5, str6, str7);
            return vitrinPage;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0066, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.searchToken, (java.lang.Object) r3.searchToken) != false) goto L_0x006b;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x006b
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.PageItem.VitrinPage
                if (r0 == 0) goto L_0x0069
                com.farsitel.bazaar.data.entity.PageItem$VitrinPage r3 = (com.farsitel.bazaar.data.entity.PageItem.VitrinPage) r3
                java.lang.String r0 = r2.title
                java.lang.String r1 = r3.title
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.action
                java.lang.String r1 = r3.action
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.util.List<com.farsitel.bazaar.data.entity.PageCell> r0 = r2.items
                java.util.List<com.farsitel.bazaar.data.entity.PageCell> r1 = r3.items
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.getReferrer()
                java.lang.String r1 = r3.getReferrer()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.getJsonReferrer()
                java.lang.String r1 = r3.getJsonReferrer()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.getBackgroundColor()
                java.lang.String r1 = r3.getBackgroundColor()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.getTextColor()
                java.lang.String r1 = r3.getTextColor()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0069
                java.lang.String r0 = r2.searchToken
                java.lang.String r3 = r3.searchToken
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0069
                goto L_0x006b
            L_0x0069:
                r3 = 0
                return r3
            L_0x006b:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.PageItem.VitrinPage.equals(java.lang.Object):boolean");
        }

        public final String getAction() {
            return this.action;
        }

        public String getBackgroundColor() {
            return this.backgroundColor;
        }

        public final List<PageCell> getItems() {
            return this.items;
        }

        public String getJsonReferrer() {
            return this.jsonReferrer;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public final String getSearchToken() {
            return this.searchToken;
        }

        public String getTextColor() {
            return this.textColor;
        }

        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String str = this.title;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.action;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            List<PageCell> list = this.items;
            int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            int hashCode4 = (hashCode3 + (referrer2 != null ? referrer2.hashCode() : 0)) * 31;
            String jsonReferrer2 = getJsonReferrer();
            int hashCode5 = (hashCode4 + (jsonReferrer2 != null ? jsonReferrer2.hashCode() : 0)) * 31;
            String backgroundColor2 = getBackgroundColor();
            int hashCode6 = (hashCode5 + (backgroundColor2 != null ? backgroundColor2.hashCode() : 0)) * 31;
            String textColor2 = getTextColor();
            int hashCode7 = (hashCode6 + (textColor2 != null ? textColor2.hashCode() : 0)) * 31;
            String str3 = this.searchToken;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return hashCode7 + i2;
        }

        public String toString() {
            return "VitrinPage(title=" + this.title + ", action=" + this.action + ", items=" + this.items + ", referrer=" + getReferrer() + ", jsonReferrer=" + getJsonReferrer() + ", backgroundColor=" + getBackgroundColor() + ", textColor=" + getTextColor() + ", searchToken=" + this.searchToken + ")";
        }

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public VitrinPage(String str, String str2, List<? extends PageCell> list, String str3, String str4, String str5, String str6, String str7) {
            super(null);
            j.b(str, "title");
            j.b(list, "items");
            this.title = str;
            this.action = str2;
            this.items = list;
            this.referrer = str3;
            this.jsonReferrer = str4;
            this.backgroundColor = str5;
            this.textColor = str6;
            this.searchToken = str7;
        }
    }

    public PageItem() {
    }

    public /* synthetic */ PageItem(f fVar) {
        this();
    }
}
