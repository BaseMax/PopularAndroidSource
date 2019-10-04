.class public final Lcom/ebay/common/net/api/trading/GetUserRequest;
.super Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;
.source "GetUserRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest<",
        "Lcom/ebay/common/net/api/trading/GetUserResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)V
    .locals 1

    const-string v0, "GetUser"

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V

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

    .line 22
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

    const-string v0, ""

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 31
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "GetUserRequest"

    .line 32
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 34
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeErrorLocale(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "DetailLevel"

    const-string v2, "ReturnAll"

    .line 35
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "GetUserRequest"

    .line 37
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/trading/GetUserResponse;
    .locals 1

    .line 43
    new-instance v0, Lcom/ebay/common/net/api/trading/GetUserResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/trading/GetUserResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/ebay/common/net/api/trading/GetUserRequest;->getResponse()Lcom/ebay/common/net/api/trading/GetUserResponse;

    move-result-object v0

    return-object v0
.end method
