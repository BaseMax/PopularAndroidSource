.class public Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;
.super Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSearchRtmRequest"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    const-string v1, "CommonMobileAppServiceV2"

    const-string v3, "getRTMContent"

    const-string v9, "19791"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 242
    invoke-direct/range {v0 .. v9}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, p3

    .line 245
    iput v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;->searchResultCount:I

    move-object v0, p2

    .line 246
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;->adKeywords:Ljava/lang/String;

    move-object v0, p4

    .line 247
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;->adCategoryIdString:Ljava/lang/String;

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;->adRequest:Z

    const-string v0, "SOAP12"

    .line 251
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->soaMessageProtocol:Ljava/lang/String;

    const-string v0, "1.1.0"

    .line 252
    iput-object v0, v10, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->soaServiceVersion:Ljava/lang/String;

    .line 254
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;->initRtmContext(Landroid/content/Context;)V

    .line 255
    sget-object v0, Lcom/ebay/mobile/merch/AplsInfo$Product;->PLA:Lcom/ebay/mobile/merch/AplsInfo$Product;

    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;->addAplsServiceInfo(Lcom/ebay/mobile/merch/AplsInfo$Product;)V

    return-void
.end method
