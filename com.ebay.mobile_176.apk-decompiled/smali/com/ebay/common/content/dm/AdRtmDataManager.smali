.class public Lcom/ebay/common/content/dm/AdRtmDataManager;
.super Lcom/ebay/nautilus/domain/content/DataManager;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;,
        Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DataManager<",
        "Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;",
        ">;"
    }
.end annotation


# static fields
.field private static anonCguid:Ljava/lang/String;

.field public static final logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private lastResult:Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

.field private lastResultAdType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

.field private final params:Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

.field private query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "ebayAdDataManager"

    const-string v2, "Log RTM-driven search ad data manager usage"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager;->anonCguid:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Ljava/lang/Class<",
            "Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;",
            ">;",
            "Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/ebay/nautilus/domain/content/DataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    .line 112
    iput-object p3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->params:Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager;->anonCguid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    sput-object p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->anonCguid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ebay/common/content/dm/AdRtmDataManager;Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/common/content/dm/AdRtmDataManager;->handleAdsLoaded(Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    return-void
.end method

.method private dispatchResult(Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V
    .locals 1

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->dispatcher:Ljava/lang/Object;

    check-cast p1, Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;->onAdsReady(Lcom/ebay/common/rtm/RtmHelper;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p1, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;->rtmHelper:Lcom/ebay/common/rtm/RtmHelper;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->dispatcher:Ljava/lang/Object;

    check-cast v0, Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;

    iget-object p1, p1, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;->rtmHelper:Lcom/ebay/common/rtm/RtmHelper;

    invoke-interface {v0, p1, p2}, Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;->onAdsReady(Lcom/ebay/common/rtm/RtmHelper;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->dispatcher:Ljava/lang/Object;

    check-cast v0, Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;

    iget-object p1, p1, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;->rtmRequestContext:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;->onAdsContextReady(Ljava/util/List;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    :goto_0
    return-void
.end method

.method private handleAdsLoaded(Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    .line 173
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 176
    :cond_0
    iput-object p2, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->lastResult:Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    .line 177
    iput-object p3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->lastResultAdType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    .line 180
    invoke-direct {p0, p2, p3}, Lcom/ebay/common/content/dm/AdRtmDataManager;->dispatchResult(Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    return-void
.end method


# virtual methods
.method public getAds(Ljava/lang/String;Ljava/lang/String;ILcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V
    .locals 2

    .line 280
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    .line 281
    iput-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    .line 282
    iput-object p1, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->keywords:Ljava/lang/String;

    .line 283
    iput p3, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->searchResultCount:I

    .line 284
    iput-object p4, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 285
    iput-object p5, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->iafToken:Ljava/lang/String;

    .line 286
    iput-object p2, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->categoryId:Ljava/lang/String;

    .line 288
    invoke-virtual {p0, p6}, Lcom/ebay/common/content/dm/AdRtmDataManager;->loadData(Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V

    return-void
.end method

.method public getAdsRtmContext(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V
    .locals 2

    .line 217
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    .line 218
    iput-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    .line 219
    iput-object p1, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 220
    iput-object p2, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->iafToken:Ljava/lang/String;

    const/4 p1, 0x1

    .line 221
    iput-boolean p1, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->generateRequestContextOnly:Z

    .line 222
    iput-object p3, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->placementID:Ljava/lang/String;

    .line 223
    iput-object p4, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoPlacementId:Ljava/lang/String;

    .line 224
    iput-object p5, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoPlacementId2:Ljava/lang/String;

    .line 226
    invoke-virtual {p0, p6}, Lcom/ebay/common/content/dm/AdRtmDataManager;->loadData(Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V

    return-void
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->params:Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

    return-object v0
.end method

.method public getPromoRtmContext(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V
    .locals 2

    .line 252
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    .line 253
    iput-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    .line 254
    iput-object p1, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 255
    iput-object p2, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->iafToken:Ljava/lang/String;

    const/4 p1, 0x1

    .line 256
    iput-boolean p1, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->generateRequestContextOnly:Z

    .line 257
    iput-object p3, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->promoPlacementId:Ljava/lang/String;

    .line 258
    iput-object p4, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->promoPlacementId2:Ljava/lang/String;

    .line 259
    iput-object p5, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->promoLowPriorityPlacementId:Ljava/lang/String;

    .line 261
    invoke-virtual {p0, p6}, Lcom/ebay/common/content/dm/AdRtmDataManager;->loadData(Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V

    return-void
.end method

.method public getViewItemPlaAds(Ljava/lang/String;JLjava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V
    .locals 2

    .line 307
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    .line 308
    iput-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    .line 309
    iput-object p1, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;->title:Ljava/lang/String;

    .line 310
    iput-wide p2, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;->itemId:J

    .line 311
    iput-object p5, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 312
    iput-object p6, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;->iafToken:Ljava/lang/String;

    .line 313
    iput-object p4, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;->categoryId:Ljava/lang/String;

    .line 314
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->PLA:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    iput-object p1, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$ViewItemPlaAdQuery;->adType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    .line 316
    invoke-virtual {p0, p7}, Lcom/ebay/common/content/dm/AdRtmDataManager;->loadData(Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V

    return-void
.end method

.method public loadData(Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->lastResult:Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->lastResultAdType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    sget-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->NONE:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    if-ne p1, v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->lastResult:Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    iget-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->lastResultAdType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    invoke-direct {p0, p1, v0}, Lcom/ebay/common/content/dm/AdRtmDataManager;->dispatchResult(Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->lastResult:Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    .line 136
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->lastResultAdType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    .line 139
    new-instance p1, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;

    iget-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    iget-object v0, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;->adType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ebay/common/content/dm/AdRtmDataManager;->query:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/ebay/common/content/dm/AdRtmDataManager;->executeOnThreadPool(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager;->loadData(Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;)V

    return-void
.end method

.method public track(Lcom/ebay/common/rtm/RtmContent$Ad;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 150
    iget-object v0, p1, Lcom/ebay/common/rtm/RtmContent$Ad;->trackingClickID:Ljava/lang/String;

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/common/rtm/RtmContent$Ad;->trackingURL:Ljava/net/URL;

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    .line 154
    iput-object p1, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    .line 155
    iput-object p2, v0, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;->trackingData:Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    .line 156
    new-instance p1, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;

    invoke-direct {p1, p0, v1}, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager;Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/ebay/common/content/dm/AdRtmDataManager;->executeOnThreadPool(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method
