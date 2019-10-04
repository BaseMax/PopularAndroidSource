.class public Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "GetDeviceNotificationSubscriptionsRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "getDeviceNotificationSubscriptions"


# instance fields
.field private final deviceHandle:Lcom/ebay/common/model/mdns/DeviceHandle;

.field private final language:Ljava/lang/String;

.field private final useDeviceFingerprint:Z

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/common/model/mdns/DeviceHandle;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/common/model/mdns/DeviceHandle;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/common/model/mdns/DeviceHandle;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "MobileDeviceNotificationService"

    const-string v1, "getDeviceNotificationSubscriptions"

    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, v0, v2, v1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->iafToken:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->userId:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->deviceHandle:Lcom/ebay/common/model/mdns/DeviceHandle;

    .line 41
    iput-object p5, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->language:Ljava/lang/String;

    const-string p1, "SOAP12"

    .line 42
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->soaMessageProtocol:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 43
    iget-object p1, p3, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->GLOBAL_ID:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->soaGlobalId:Ljava/lang/String;

    const-string p1, "XML"

    .line 44
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->dataFormat:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->isConvertedToAlternateHttpFaultStatus:Z

    .line 46
    iput-boolean p6, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->useDeviceFingerprint:Z

    return-void
.end method


# virtual methods
.method public final buildRequest()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->getOperationName()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->language:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->deviceHandle:Lcom/ebay/common/model/mdns/DeviceHandle;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->writeCommonFirstElements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 61
    iget-boolean v1, p0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->useDeviceFingerprint:Z

    if-eqz v1, :cond_0

    const-string v1, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v2, "outputSelectors"

    .line 63
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v2, "outputSelector"

    const-string v3, "UseDeviceFingerPrint"

    .line 65
    invoke-static {p1, v1, v2, v3}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string v2, "outputSelectors"

    .line 66
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    :cond_0
    invoke-static {v0, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->writeCommonLastElements(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 88
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->notificationApi:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;
    .locals 1

    .line 74
    new-instance v0, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->getResponse()Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    const-string/jumbo v0, "x-ebay3pp-device-id"

    .line 81
    invoke-virtual {p0}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/identity/EbayIdentity;->get3ppFingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
