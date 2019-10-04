.class final Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;
.super Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HomeAdRequestContextQuery"
.end annotation


# instance fields
.field public placementID:Ljava/lang/String;

.field public promoCguid:Ljava/lang/String;

.field public promoPlacementId:Ljava/lang/String;

.field public promoPlacementId2:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, v0}, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
    .locals 11

    .line 353
    new-instance v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomeRtmRequestContext;

    iget-object v2, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->placementID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoPlacementId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoPlacementId2:Ljava/lang/String;

    iget-object v5, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoCguid:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 361
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/NautilusKernel;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v10

    move-object v1, p1

    move-object v6, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomeRtmRequestContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public validateResult(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;",
            "Ljava/util/List<",
            "Lcom/ebay/common/rtm/RtmContent$Ad;",
            ">;)Z"
        }
    .end annotation

    .line 368
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 370
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 371
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "Empty RTM Home Screen Ad content"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return v0

    .line 375
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_3

    .line 377
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_2

    .line 378
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "RTM exceeded absolute max Home Screen Ad instance limit (1)"

    invoke-virtual {p1, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 379
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 382
    :cond_3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/rtm/RtmContent$Ad;

    .line 383
    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContent$Ad;->adUnitId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 385
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_4

    .line 386
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "RTM Home Screen Ad content is missing adUnitId"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_4
    return v0

    :cond_5
    return v1
.end method
