.class public Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "GetOrderShippingInfoRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field itemId:Ljava/lang/String;

.field transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "CoreShippingService"

    const-string v1, "getOrderShippingInfo"

    const/4 v2, 0x1

    .line 24
    invoke-direct {p0, v0, v2, v1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->iafToken:Ljava/lang/String;

    const-string/jumbo p1, "x-ebay-soa-security-appname"

    .line 26
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaAppIdHeaderName:Ljava/lang/String;

    const-string p1, "SOAP12"

    .line 27
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaMessageProtocol:Ljava/lang/String;

    const-string/jumbo p1, "text/xml; charset=UTF-8"

    .line 28
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaContentType:Ljava/lang/String;

    .line 29
    iget-object p1, p2, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaGlobalId:Ljava/lang/String;

    const-string p1, "XML"

    .line 30
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->dataFormat:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoRequest;->itemId:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoRequest;->transactionId:Ljava/lang/String;

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

    .line 39
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "soapenv"

    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    .line 45
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const/4 v1, 0x0

    .line 46
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Envelope"

    .line 47
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Body"

    .line 48
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string v1, "getOrderShippingInfoRequest"

    .line 49
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string v1, "orderShippingInfo"

    .line 50
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "transactionIdentity"

    .line 51
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string v1, "itemId"

    .line 52
    iget-object v2, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoRequest;->itemId:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "transactionId"

    .line 53
    iget-object v2, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoRequest;->transactionId:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string/jumbo v1, "transactionIdentity"

    .line 54
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string v1, "orderShippingInfo"

    .line 55
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    const-string v1, "getOrderShippingInfoRequest"

    .line 56
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Body"

    .line 57
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Envelope"

    .line 58
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 64
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->shippingApi:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;
    .locals 1

    .line 70
    new-instance v0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoRequest;->getResponse()Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    move-result-object v0

    return-object v0
.end method
