package com.farsitel.bazaar.common.model.page;

import android.content.Context;
import c.c.a.c.a;
import com.farsitel.bazaar.common.model.DownloadableEntity;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.EntityType;
import com.farsitel.bazaar.common.model.PurchasableEntity;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.f;
import h.f.b.j;

/* compiled from: AppItem.kt */
public final class PageAppItem implements RecyclerData, DownloadableEntity, PurchasableEntity {
    public String _iconUrl;
    public String appName;
    public final String authorName;
    public final String entityId;
    public EntityState entityState;
    public final EntityType entityType;
    public EntityState getEntityStateForInitializeView;
    public final Boolean hasInAppPurchase;
    public final boolean iapVisibility;
    public final String iconUrl;
    public final Integer inlineVersion;
    public Long installedVersionCode;
    public final Boolean isAd;
    public boolean isApplicationInstalled;
    public boolean isBought;
    public final boolean isCompatible;
    public final Boolean isEnabled;
    public final boolean isFree;
    public Long latestVersionCodeOnServer;
    public final String longInfo;
    public final Integer minSDK;
    public PageMiniAppDetailItem miniAppDetails;
    public final String noDiscountPriceString;
    public final String packageName;
    public final int price;
    public final String priceString;
    public DownloaderProgressInfo progressInfo;
    public final Float rate;
    public String referrer;
    public final String shortInfo;
    public final int viewType;

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00b4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public PageAppItem(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.Long r10, java.lang.Float r11, int r12, java.lang.String r13, java.lang.String r14, java.lang.Boolean r15, java.lang.Boolean r16, java.lang.Boolean r17, java.lang.String r18, java.lang.Integer r19, java.lang.Integer r20, boolean r21, java.lang.String r22, com.farsitel.bazaar.common.model.page.PageMiniAppDetailItem r23, java.lang.String r24, java.lang.String r25, com.farsitel.bazaar.common.model.ui.EntityState r26, com.farsitel.bazaar.common.model.DownloaderProgressInfo r27) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r22
            r4 = r26
            java.lang.String r5 = "packageName"
            h.f.b.j.b(r7, r5)
            java.lang.String r5 = "appName"
            h.f.b.j.b(r8, r5)
            java.lang.String r5 = "referrer"
            h.f.b.j.b(r3, r5)
            java.lang.String r5 = "_entityState"
            h.f.b.j.b(r4, r5)
            r6.<init>()
            r0.packageName = r1
            r0.appName = r2
            r1 = r9
            r0.authorName = r1
            r1 = r10
            r0.latestVersionCodeOnServer = r1
            r1 = r11
            r0.rate = r1
            r1 = r12
            r0.price = r1
            r1 = r13
            r0.priceString = r1
            r1 = r14
            r0.noDiscountPriceString = r1
            r1 = r15
            r0.isEnabled = r1
            r1 = r16
            r0.hasInAppPurchase = r1
            r1 = r17
            r0.isAd = r1
            r1 = r18
            r0._iconUrl = r1
            r1 = r19
            r0.inlineVersion = r1
            r1 = r20
            r0.minSDK = r1
            r1 = r21
            r0.isCompatible = r1
            r0.referrer = r3
            r1 = r23
            r0.miniAppDetails = r1
            r1 = r24
            r0.shortInfo = r1
            r1 = r25
            r0.longInfo = r1
            r1 = r27
            r0.progressInfo = r1
            r0.entityState = r4
            com.farsitel.bazaar.common.model.ui.EntityState r1 = r6.getEntityState()
            r0.getEntityStateForInitializeView = r1
            com.farsitel.bazaar.common.model.EntityType r1 = com.farsitel.bazaar.common.model.EntityType.APP
            r0.entityType = r1
            java.lang.String r1 = r0.packageName
            r0.entityId = r1
            com.farsitel.bazaar.common.model.page.CommonItemType r1 = com.farsitel.bazaar.common.model.page.CommonItemType.VITRIN_APP
            int r1 = r1.getValue()
            r0.viewType = r1
            java.lang.Boolean r1 = r0.hasInAppPurchase
            r2 = 0
            if (r1 == 0) goto L_0x0083
            boolean r1 = r1.booleanValue()
            goto L_0x0084
        L_0x0083:
            r1 = 0
        L_0x0084:
            r3 = 1
            if (r1 == 0) goto L_0x0095
            java.lang.Boolean r1 = r0.isEnabled
            if (r1 == 0) goto L_0x0090
            boolean r1 = r1.booleanValue()
            goto L_0x0091
        L_0x0090:
            r1 = 1
        L_0x0091:
            if (r1 == 0) goto L_0x0095
            r1 = 1
            goto L_0x0096
        L_0x0095:
            r1 = 0
        L_0x0096:
            r0.iapVisibility = r1
            java.lang.String r1 = r0.priceString
            if (r1 == 0) goto L_0x00a5
            int r1 = r1.length()
            if (r1 != 0) goto L_0x00a3
            goto L_0x00a5
        L_0x00a3:
            r1 = 0
            goto L_0x00a6
        L_0x00a5:
            r1 = 1
        L_0x00a6:
            if (r1 != 0) goto L_0x00ac
            int r1 = r0.price
            if (r1 != 0) goto L_0x00ad
        L_0x00ac:
            r2 = 1
        L_0x00ad:
            r0.isFree = r2
            java.lang.String r1 = r0._iconUrl
            if (r1 == 0) goto L_0x00b4
            goto L_0x00cc
        L_0x00b4:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "https://cafe.bzrcdn.net/1/icons/"
            r1.append(r2)
            java.lang.String r2 = r0.packageName
            r1.append(r2)
            java.lang.String r2 = "_128x128.webp"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
        L_0x00cc:
            r0.iconUrl = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.PageAppItem.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.Long, java.lang.Float, int, java.lang.String, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Integer, java.lang.Integer, boolean, java.lang.String, com.farsitel.bazaar.common.model.page.PageMiniAppDetailItem, java.lang.String, java.lang.String, com.farsitel.bazaar.common.model.ui.EntityState, com.farsitel.bazaar.common.model.DownloaderProgressInfo):void");
    }

    public final String getAppName() {
        return this.appName;
    }

    public final String getAuthorName() {
        return this.authorName;
    }

    public final boolean getCanBeInstalled() {
        return this.isFree || isBought();
    }

    public String getEntityId() {
        return this.entityId;
    }

    public EntityState getEntityState() {
        return !this.isCompatible ? EntityState.INCOMPATIBLE : this.entityState;
    }

    public EntityType getEntityType() {
        return this.entityType;
    }

    public final EntityState getGetEntityStateForInitializeView() {
        if (getEntityState() != EntityState.FILE_EXISTS || !this.isApplicationInstalled) {
            return getEntityState();
        }
        return EntityState.UPDATE_NEEDED;
    }

    public final Boolean getHasInAppPurchase() {
        return this.hasInAppPurchase;
    }

    public final boolean getIapVisibility() {
        return this.iapVisibility;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final Integer getInlineVersion() {
        return this.inlineVersion;
    }

    public final String getInstallButtonLabel(Context context) {
        j.b(context, "context");
        if (isInlineOnly()) {
            String string = context.getString(a.run_inline);
            j.a((Object) string, "context.getString(R.string.run_inline)");
            return string;
        } else if (getCanBeInstalled()) {
            String string2 = context.getString(a.install);
            j.a((Object) string2, "context.getString(R.string.install)");
            return string2;
        } else {
            String str = this.priceString;
            if (!(str == null || str.length() == 0)) {
                return this.priceString;
            }
            String string3 = context.getString(a.install);
            j.a((Object) string3, "context.getString(R.string.install)");
            return string3;
        }
    }

    public final Long getInstalledVersionCode() {
        return this.installedVersionCode;
    }

    public final Long getLatestVersionCodeOnServer() {
        return this.latestVersionCodeOnServer;
    }

    public final String getLongInfo() {
        return this.longInfo;
    }

    public final Integer getMinSDK() {
        return this.minSDK;
    }

    public final PageMiniAppDetailItem getMiniAppDetails() {
        return this.miniAppDetails;
    }

    public final String getNoDiscountPriceString() {
        return this.noDiscountPriceString;
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

    public DownloaderProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    public final Float getRate() {
        return this.rate;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getShortInfo() {
        return this.shortInfo;
    }

    public int getViewType() {
        return this.viewType;
    }

    public final String get_iconUrl() {
        return this._iconUrl;
    }

    public final Boolean isAd() {
        return this.isAd;
    }

    public final boolean isApplicationInstalled() {
        return this.isApplicationInstalled;
    }

    public boolean isBought() {
        return this.isBought;
    }

    public final boolean isCompatible() {
        return this.isCompatible;
    }

    public final Boolean isEnabled() {
        return this.isEnabled;
    }

    public final boolean isFree() {
        return this.isFree;
    }

    public final boolean isInline() {
        Integer num = this.inlineVersion;
        if (num == null || num.intValue() != -1) {
            Integer num2 = this.inlineVersion;
            if (num2 != null && (num2 == null || num2.intValue() != 0)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001d, code lost:
        if (r0.intValue() != 0) goto L_0x0021;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean isInlineOnly() {
        /*
            r2 = this;
            boolean r0 = r2.isInline()
            if (r0 == 0) goto L_0x0021
            java.lang.Integer r0 = r2.minSDK
            if (r0 != 0) goto L_0x000b
            goto L_0x0012
        L_0x000b:
            int r0 = r0.intValue()
            r1 = -1
            if (r0 == r1) goto L_0x001f
        L_0x0012:
            java.lang.Integer r0 = r2.minSDK
            if (r0 == 0) goto L_0x001f
            if (r0 != 0) goto L_0x0019
            goto L_0x0021
        L_0x0019:
            int r0 = r0.intValue()
            if (r0 != 0) goto L_0x0021
        L_0x001f:
            r0 = 1
            goto L_0x0022
        L_0x0021:
            r0 = 0
        L_0x0022:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.PageAppItem.isInlineOnly():boolean");
    }

    public final void setAppName(String str) {
        j.b(str, "<set-?>");
        this.appName = str;
    }

    public final void setApplicationInstalled(boolean z) {
        this.isApplicationInstalled = z;
    }

    public void setBought(boolean z) {
        this.isBought = z;
    }

    public void setEntityState(EntityState entityState2) {
        j.b(entityState2, "value");
        if (this.entityState != EntityState.MALICIOUS_APP) {
            this.entityState = entityState2;
        }
    }

    public final void setGetEntityStateForInitializeView(EntityState entityState2) {
        j.b(entityState2, "<set-?>");
        this.getEntityStateForInitializeView = entityState2;
    }

    public final void setInstalledVersionCode(Long l2) {
        this.installedVersionCode = l2;
    }

    public final void setLatestVersionCodeOnServer(Long l2) {
        this.latestVersionCodeOnServer = l2;
    }

    public final void setMiniAppDetails(PageMiniAppDetailItem pageMiniAppDetailItem) {
        this.miniAppDetails = pageMiniAppDetailItem;
    }

    public void setProgressInfo(DownloaderProgressInfo downloaderProgressInfo) {
        this.progressInfo = downloaderProgressInfo;
    }

    public final void setReferrer(String str) {
        j.b(str, "<set-?>");
        this.referrer = str;
    }

    public final void set_iconUrl(String str) {
        this._iconUrl = str;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageAppItem(String str, String str2, String str3, Long l2, Float f2, int i2, String str4, String str5, Boolean bool, Boolean bool2, Boolean bool3, String str6, Integer num, Integer num2, boolean z, String str7, PageMiniAppDetailItem pageMiniAppDetailItem, String str8, String str9, EntityState entityState2, DownloaderProgressInfo downloaderProgressInfo, int i3, f fVar) {
        this(str, str2, str3, l2, f2, i2, str4, str5, bool, bool2, bool3, str6, num, num2, z, str7, pageMiniAppDetailItem, (i3 & 131072) != 0 ? null : str8, (i3 & 262144) != 0 ? null : str9, (i3 & 524288) != 0 ? EntityState.NONE : entityState2, (i3 & 1048576) != 0 ? null : downloaderProgressInfo);
    }
}
