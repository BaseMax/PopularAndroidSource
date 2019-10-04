.class public Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "GetShipmentTrackingRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field itemId:J

.field realTime:Z

.field transactionId:J

.field useEventTimeHack:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;JJZZ)V
    .locals 3

    const-string v0, "CoreShippingService"

    const-string v1, "getShipmentTracking"

    const/4 v2, 0x1

    .line 26
    invoke-direct {p0, v0, v2, v1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->useEventTimeHack:Z

    .line 27
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->iafToken:Ljava/lang/String;

    const-string/jumbo p1, "x-ebay-soa-security-appname"

    .line 28
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaAppIdHeaderName:Ljava/lang/String;

    const-string p1, "SOAP12"

    .line 29
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaMessageProtocol:Ljava/lang/String;

    const-string/jumbo p1, "text/xml; charset=UTF-8"

    .line 30
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaContentType:Ljava/lang/String;

    .line 31
    iget-object p1, p2, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaGlobalId:Ljava/lang/String;

    const-string p1, "XML"

    .line 32
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->dataFormat:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->itemId:J

    .line 35
    iput-wide p5, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->transactionId:J

    .line 36
    iput-boolean p7, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->realTime:Z

    .line 37
    iput-boolean p8, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->useEventTimeHack:Z

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

    .line 43
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

    const-string/jumbo v0, "soapenv"

    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    .line 49
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const/4 v1, 0x0

    .line 50
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Envelope"

    .line 51
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Body"

    .line 52
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "shipmentTrackingRequest"

    .line 53
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "shipmentTrackingRequestInfo"

    .line 54
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "shipmentTrackingTransactionalInfo"

    .line 55
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "transactionInformation"

    .line 56
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string v1, "itemId"

    .line 57
    iget-wide v2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->itemId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "transactionId"

    .line 58
    iget-wide v2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->transactionId:J

    .line 59
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "transactionInformation"

    .line 60
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "shipmentTrackingTransactionalInfo"

    .line 61
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "shipmentTrackingRequestInfo"

    .line 62
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string v1, "level"

    const-string v2, "1"

    .line 63
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "realTime"

    .line 64
    iget-boolean v2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->realTime:Z

    .line 65
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "shipmentTrackingRequest"

    .line 66
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Body"

    .line 67
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Envelope"

    .line 68
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 74
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->shippingApi:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
    .locals 2

    .line 80
    new-instance v0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->useEventTimeHack:Z

    invoke-direct {v0, v1}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingRequest;->getResponse()Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    move-result-object v0

    return-object v0
.end method
