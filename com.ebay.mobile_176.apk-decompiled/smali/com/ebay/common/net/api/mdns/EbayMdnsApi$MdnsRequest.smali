.class public abstract Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "EbayMdnsApi.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/mdns/EbayMdnsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MdnsRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field private final deviceHandle:Lcom/ebay/common/model/mdns/DeviceHandle;

.field private final language:Ljava/lang/String;

.field private final metaCategories:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lcom/ebay/nautilus/domain/EbaySite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MobileDeviceNotificationService"

    const/4 v1, 0x1

    .line 420
    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 421
    iput-object p2, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->iafToken:Ljava/lang/String;

    .line 422
    iput-object p3, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->userId:Ljava/lang/String;

    .line 423
    iput-object p6, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->deviceHandle:Lcom/ebay/common/model/mdns/DeviceHandle;

    .line 424
    iput-object p4, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->language:Ljava/lang/String;

    const-string p1, "SOAP12"

    .line 425
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->soaMessageProtocol:Ljava/lang/String;

    if-eqz p7, :cond_0

    .line 426
    iget-object p1, p7, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->GLOBAL_ID:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->soaGlobalId:Ljava/lang/String;

    const-string p1, "XML"

    .line 427
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->dataFormat:Ljava/lang/String;

    .line 428
    iput-boolean v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->isConvertedToAlternateHttpFaultStatus:Z

    .line 429
    iput-object p5, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->metaCategories:Ljava/lang/String;

    .line 433
    iget-object p1, p6, Lcom/ebay/common/model/mdns/DeviceHandle;->deviceToken:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "GOOGLENOW"

    .line 435
    iget-object p2, p6, Lcom/ebay/common/model/mdns/DeviceHandle;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 436
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Device token required!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public buildRequest()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 457
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract buildSpecificXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->getOperationName()Ljava/lang/String;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->language:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->deviceHandle:Lcom/ebay/common/model/mdns/DeviceHandle;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->writeCommonFirstElements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->buildSpecificXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 466
    invoke-static {v0, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->writeCommonLastElements(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 478
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->notificationApi:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;
    .locals 1

    .line 472
    new-instance v0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->getResponse()Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;

    move-result-object v0

    return-object v0
.end method

.method public onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 2

    .line 445
    invoke-super {p0, p1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    const-string/jumbo v0, "x-ebay3pp-device-id"

    .line 446
    invoke-virtual {p0}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/identity/EbayIdentity;->get3ppFingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/notifications/NotificationUtil;->getMdnsPayloadVersion(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "x-ebay-notification-payload-version"

    .line 451
    invoke-interface {p1, v1, v0}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
