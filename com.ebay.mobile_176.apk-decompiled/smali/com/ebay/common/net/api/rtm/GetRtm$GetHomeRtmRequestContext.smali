.class public Lcom/ebay/common/net/api/rtm/GetRtm$GetHomeRtmRequestContext;
.super Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetHomeRtmRequestContext"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    const-string v1, "CommonMobileAppServiceV2"

    const-string v3, "getRTMContent"

    const-string v9, "19792"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 143
    invoke-direct/range {v0 .. v9}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomeRtmRequestContext;->adRequest:Z

    move-object v0, p2

    .line 147
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomeRtmRequestContext;->placementId:Ljava/lang/String;

    move-object v0, p3

    .line 148
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomeRtmRequestContext;->promoPlacementId:Ljava/lang/String;

    move-object v0, p4

    .line 149
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomeRtmRequestContext;->promoPlacementId2:Ljava/lang/String;

    move-object/from16 v0, p5

    .line 150
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomeRtmRequestContext;->promoCguid:Ljava/lang/String;

    return-void
.end method
