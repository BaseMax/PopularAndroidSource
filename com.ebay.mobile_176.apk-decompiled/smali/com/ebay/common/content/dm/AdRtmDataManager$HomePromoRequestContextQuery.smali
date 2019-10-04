.class final Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;
.super Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HomePromoRequestContextQuery"
.end annotation


# instance fields
.field public promoLowPriorityPlacementId:Ljava/lang/String;

.field public promoPlacementId:Ljava/lang/String;

.field public promoPlacementId2:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, v0}, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
    .locals 10

    .line 410
    new-instance v9, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;

    iget-object v2, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->promoPlacementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->promoPlacementId2:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->promoLowPriorityPlacementId:Ljava/lang/String;

    iget-object v6, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 417
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/NautilusKernel;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public validateResult(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;",
            "Ljava/util/List<",
            "Lcom/ebay/common/rtm/RtmContent$Ad;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
