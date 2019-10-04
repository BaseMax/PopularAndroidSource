.class public Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "GetRtm.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetRtmRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field protected adCategoryIdString:Ljava/lang/String;

.field protected adKeywords:Ljava/lang/String;

.field protected adRequest:Z

.field private campaignSelector:Ljava/lang/String;

.field protected categoryId:Ljava/lang/String;

.field private cguid:Ljava/lang/String;

.field private installedApps:Ljava/lang/String;

.field protected itemId:Ljava/lang/String;

.field protected placementId:Ljava/lang/String;

.field protected promoCguid:Ljava/lang/String;

.field protected promoPlacementId:Ljava/lang/String;

.field protected promoPlacementId2:Ljava/lang/String;

.field private rtmClientVersion:Ljava/lang/String;

.field private rtmContextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;",
            ">;"
        }
    .end annotation
.end field

.field protected searchResultCount:I

.field private sojournerGuid:Ljava/lang/String;

.field private strDisplayHeight:Ljava/lang/String;

.field private strDisplayWidth:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmClientVersion:Ljava/lang/String;

    .line 276
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->sojournerGuid:Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->cguid:Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->installedApps:Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->strDisplayWidth:Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->strDisplayHeight:Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->campaignSelector:Ljava/lang/String;

    const/4 p2, 0x0

    .line 283
    iput p2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->searchResultCount:I

    .line 284
    iput-boolean p2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adRequest:Z

    .line 285
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adKeywords:Ljava/lang/String;

    .line 286
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adCategoryIdString:Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->itemId:Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->title:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->categoryId:Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->placementId:Ljava/lang/String;

    .line 291
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId:Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId2:Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoCguid:Ljava/lang/String;

    .line 315
    iput-object p5, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->iafToken:Ljava/lang/String;

    .line 316
    iget-object p1, p6, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaGlobalId:Ljava/lang/String;

    const-string p1, "XML"

    .line 317
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->dataFormat:Ljava/lang/String;

    const-string/jumbo p1, "text/xml"

    .line 318
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaContentType:Ljava/lang/String;

    const-string/jumbo p1, "x-ebay-soa-security-appname"

    .line 319
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaAppIdHeaderName:Ljava/lang/String;

    .line 320
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->cguid:Ljava/lang/String;

    .line 321
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmClientVersion:Ljava/lang/String;

    .line 322
    invoke-static {p4}, Lcom/ebay/nautilus/kernel/identity/EbayIdentity;->getDeviceIdString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->sojournerGuid:Ljava/lang/String;

    .line 323
    iput-object p9, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->placementId:Ljava/lang/String;

    return-void
.end method

.method private getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "phone"

    .line 471
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getDevice()Ljava/lang/String;
    .locals 2

    .line 465
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

    return-object v0
.end method


# virtual methods
.method protected addAplsServiceInfo(Lcom/ebay/mobile/merch/AplsInfo$Product;)V
    .locals 2

    .line 507
    sget-object v0, Lcom/ebay/mobile/merch/AplsInfo$Domain;->EADS:Lcom/ebay/mobile/merch/AplsInfo$Domain;

    iget-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->placementId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/ebay/mobile/merch/AplsInfo;->getServiceInfo(Lcom/ebay/mobile/merch/AplsInfo$Domain;Lcom/ebay/mobile/merch/AplsInfo$Product;Ljava/lang/String;)Lcom/ebay/nautilus/kernel/net/AplsServiceInfo;

    move-result-object p1

    .line 508
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->setAplsServiceInfo(Lcom/ebay/nautilus/kernel/net/AplsServiceInfo;)V

    return-void
.end method

.method public buildRequest()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 514
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    iget-boolean v0, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adRequest:Z

    if-eqz v0, :cond_0

    const-string v0, "http://www.ebay.com/marketplace/mobileor/v2/commonservices"

    goto :goto_0

    :cond_0
    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/commonservices"

    :goto_0
    const-string/jumbo v1, "soap"

    const-string v2, "http://schemas.xmlsoap.org/soap/envelope/"

    .line 522
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-boolean v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adRequest:Z

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, "com"

    :goto_1
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v2, "Envelope"

    .line 524
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v2, "Body"

    .line 525
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "getRTMContentRequest"

    .line 526
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "placements"

    .line 528
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->placementId:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "correlationGuid"

    .line 529
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->cguid:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sojournerGuid"

    .line 530
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->sojournerGuid:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "rtmContext"

    .line 532
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 535
    :goto_2
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    const-string v3, "KeyValuePair"

    .line 538
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "key"

    .line 539
    iget-object v4, v2, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;->name:Ljava/lang/String;

    invoke-static {p1, v0, v3, v4}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "value"

    .line 540
    iget-object v2, v2, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;->value:Ljava/lang/String;

    invoke-static {p1, v0, v3, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyValuePair"

    .line 541
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "rtmContext"

    .line 544
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "getRTMContentRequest"

    .line 545
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Body"

    .line 547
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Envelope"

    .line 548
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getMfeContext(Lcom/ebay/nautilus/domain/AdvertisingIdClientOverride$Info;Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/AdvertisingIdClientOverride$Info;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/uss/KeyValue;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    new-instance v1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "MERCH"

    const-string/jumbo v3, "placementId"

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->placementId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "MERCH"

    const-string v3, "deviceTargetedAdvertisingOptOut"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/AdvertisingIdClientOverride$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "true"

    goto :goto_0

    :cond_0
    const-string v4, "false"

    :goto_0
    invoke-direct {v1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/AdvertisingIdClientOverride$Info;->getId()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    new-instance v1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "MERCH"

    const-string v3, "deviceAdvertisingIdentifier"

    invoke-direct {v1, v2, v3, p1}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_1
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v1, "MERCH"

    const-string/jumbo v2, "pageFamily"

    sget-object v3, Lcom/ebay/nautilus/domain/net/api/recommendation/GetPlacementRequestV2;->PAGE_FAMILY_MAP:Ljava/util/Map;

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->placementId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p1, v1, v2, v3}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-direct {p0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getDevice()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-direct {p0, p2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 455
    iget-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "RTM"

    .line 456
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getPromoKeyValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId2:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "RTM2"

    .line 458
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId2:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getPromoKeyValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method protected getPromoKeyValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/uss/KeyValue;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_CARRIER:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v2}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object v1, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_OS_VERSION:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p4, p1, v1, v2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object v1, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_INSTALLED_APPS:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->installedApps:Ljava/lang/String;

    invoke-direct {p4, p1, v1, v2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object v1, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_VERSION:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmClientVersion:Ljava/lang/String;

    invoke-direct {p4, p1, v1, v2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object v1, Lcom/ebay/common/rtm/RtmContextProperty;->REFERRER_NAME:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->sojournerGuid:Ljava/lang/String;

    invoke-direct {p4, p1, v1, v2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v1, "CORRELATION_GUID"

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoCguid:Ljava/lang/String;

    invoke-direct {p4, p1, v1, v2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object v1, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_NEW_USER:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-direct {p4, p1, v1, v2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v1, "CID"

    sget-object v2, Lcom/ebay/common/rtm/RtmContextTypeId;->MOBILE_APP_HOME_PAGE_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    invoke-virtual {v2}, Lcom/ebay/common/rtm/RtmContextTypeId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p4, p1, v1, v2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v1, "SOJOURNER_GUID"

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->sojournerGuid:Ljava/lang/String;

    invoke-direct {p4, p1, v1, v2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance p4, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string/jumbo v1, "placements"

    invoke-direct {p4, p1, v1, p2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance p2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object p4, Lcom/ebay/common/rtm/RtmContextProperty;->SITE_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {p4}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->soaGlobalId:Ljava/lang/String;

    invoke-direct {p2, p1, p4, v1}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance p2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object p4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_DEVICE_TYPE:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {p4}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p4, p3}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance p2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object p3, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {p3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "AEAPP"

    invoke-direct {p2, p1, p3, p4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance p2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    sget-object p3, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_NEW_UPDATE:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {p3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "false"

    invoke-direct {p2, p1, p3, p4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adRequest:Z

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->rtmAds:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 556
    :cond_0
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->rtm:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;
    .locals 1

    .line 562
    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getResponse()Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRtmContext(ZLandroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/uss/KeyValue;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-direct {p0, p2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance v2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v3, "RTM2"

    const-string v4, "CID"

    sget-object v5, Lcom/ebay/common/rtm/RtmContextTypeId;->ANDROID_MOBILE_APP_CONTEXT_ID_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

    invoke-virtual {v5}, Lcom/ebay/common/rtm/RtmContextTypeId;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v3, "RTM2"

    sget-object v4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_VERSION:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v4}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmClientVersion:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v3, "RTM2"

    sget-object v4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v4}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AEAPP"

    invoke-direct {v2, v3, v4, v5}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v3, "RTM2"

    sget-object v4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_DEVICE_TYPE:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v4}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v3, "RTM2"

    sget-object v4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_OS_VERSION:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v4}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v2, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v3, "RTM2"

    sget-object v4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_CARRIER:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v4}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 400
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    const-string v3, "IS_ANONYMOUS"

    const-string v4, "TRUE"

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_0
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    const-string v3, "IS_ANONYMOUS"

    const-string v4, "FALSE"

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :goto_0
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->SITE_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->soaGlobalId:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    const-string v3, "CORRELATION_GUID"

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->cguid:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    const-string v3, "SOJOURNER_GUID"

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->sojournerGuid:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->campaignSelector:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 409
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_MESSAGE_SELECTOR:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->campaignSelector:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    iget-boolean p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adRequest:Z

    if-eqz p1, :cond_5

    .line 414
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adKeywords:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 415
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->KEYWORDS:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adKeywords:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_2
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->CAT_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adCategoryIdString:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->CLIENT_CHANNEL:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MAPP"

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 420
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->ITEM_TITLE:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->title:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_3
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->itemId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 422
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->ITEM_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->itemId:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_4
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->categoryId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 424
    new-instance p1, Lcom/ebay/nautilus/domain/data/uss/KeyValue;

    const-string v2, "RTM2"

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->ITEM_CATEGORY:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3}, Lcom/ebay/common/rtm/RtmContextProperty;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->categoryId:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/uss/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_5
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string p1, "RTM"

    .line 428
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getPromoKeyValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 429
    :cond_6
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId2:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string p1, "RTM2"

    .line 430
    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->promoPlacementId2:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getPromoKeyValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-object v1
.end method

.method protected initRtmContext(Landroid/content/Context;)V
    .locals 5

    .line 330
    invoke-direct {p0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    .line 335
    iget-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v2, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    const-string v3, "CID"

    sget-object v4, Lcom/ebay/common/rtm/RtmContextTypeId;->ANDROID_MOBILE_APP_CONTEXT_ID_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

    invoke-virtual {v4}, Lcom/ebay/common/rtm/RtmContextTypeId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v2, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_VERSION:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmClientVersion:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v2, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AEAPP"

    invoke-direct {v2, p0, v3, v4}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v2, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_DEVICE_TYPE:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v1, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_OS_VERSION:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v1, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_CARRIER:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->campaignSelector:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_MESSAGE_SELECTOR:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->campaignSelector:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adRequest:Z

    if-eqz p1, :cond_4

    .line 349
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adKeywords:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 350
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->KEYWORDS:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adKeywords:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->CAT_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adCategoryIdString:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->CATEGORY_ID_FILTER:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->adCategoryIdString:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->UNMODIFIED_KEYWORDS:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->SEARCH_RESULT:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->searchResultCount:I

    .line 357
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->CLIENT_CHANNEL:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPP"

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 361
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->ITEM_TITLE:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->title:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_2
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->itemId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 363
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->ITEM_ID:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->itemId:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_3
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->categoryId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 365
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->ITEM_CATEGORY:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->categoryId:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 370
    :cond_4
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->REFERRER_NAME:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->sojournerGuid:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_NEW_USER:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_NEW_UPDATE:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_INSTALLED_APPS:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->installedApps:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_SCREEN_WIDTH:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->strDisplayWidth:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->rtmContextList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/common/rtm/RtmContextProperty;->MOBILE_APP_SCREEN_HEIGHT:Lcom/ebay/common/rtm/RtmContextProperty;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->strDisplayHeight:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void
.end method
