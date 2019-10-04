.class public Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;
.super Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetHomePromoRtmRequestContext"
.end annotation


# instance fields
.field protected promoLowPriorityPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    const-string v1, "CommonMobileAppServiceV2"

    const-string v3, "getRTMContent"

    const-string v9, "19792"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 169
    invoke-direct/range {v0 .. v9}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoLowPriorityPlacementId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->adRequest:Z

    move-object v0, p2

    .line 173
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoPlacementId:Ljava/lang/String;

    move-object v0, p3

    .line 174
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoPlacementId2:Ljava/lang/String;

    move-object v0, p4

    .line 175
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoLowPriorityPlacementId:Ljava/lang/String;

    move-object/from16 v0, p8

    .line 176
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoCguid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPromoRtmContext(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/uss/KeyValue;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    const-string v2, "phone"

    .line 187
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string v1, "RTM"

    .line 195
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoPlacementId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->getPromoKeyValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoPlacementId2:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "RTM2"

    .line 198
    iget-object v3, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoPlacementId2:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->getPromoKeyValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoLowPriorityPlacementId:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "RTM3"

    .line 201
    iget-object v3, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->promoLowPriorityPlacementId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->getPromoKeyValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v1
.end method
