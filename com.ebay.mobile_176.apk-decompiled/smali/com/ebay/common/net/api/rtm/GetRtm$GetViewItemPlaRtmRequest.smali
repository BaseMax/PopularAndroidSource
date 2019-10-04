.class public Lcom/ebay/common/net/api/rtm/GetRtm$GetViewItemPlaRtmRequest;
.super Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetViewItemPlaRtmRequest"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    const-string v1, "CommonMobileAppServiceV2"

    const-string v3, "getRTMContent"

    const-string v9, "20188"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 215
    invoke-direct/range {v0 .. v9}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetViewItemPlaRtmRequest;->itemId:Ljava/lang/String;

    move-object/from16 v0, p5

    .line 219
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetViewItemPlaRtmRequest;->categoryId:Ljava/lang/String;

    move-object v0, p2

    .line 220
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetViewItemPlaRtmRequest;->title:Ljava/lang/String;

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetViewItemPlaRtmRequest;->adRequest:Z

    const-string v0, "SOAP12"

    .line 224
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->soaMessageProtocol:Ljava/lang/String;

    const-string v0, "1.1.0"

    .line 225
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->soaServiceVersion:Ljava/lang/String;

    .line 227
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetViewItemPlaRtmRequest;->initRtmContext(Landroid/content/Context;)V

    .line 228
    sget-object v0, Lcom/ebay/mobile/merch/AplsInfo$Product;->PLA:Lcom/ebay/mobile/merch/AplsInfo$Product;

    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetViewItemPlaRtmRequest;->addAplsServiceInfo(Lcom/ebay/mobile/merch/AplsInfo$Product;)V

    return-void
.end method
