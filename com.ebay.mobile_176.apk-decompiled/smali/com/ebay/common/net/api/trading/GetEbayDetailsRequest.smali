.class public final Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;
.super Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;
.source "GetEbayDetailsRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest<",
        "Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field private final details:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final siteForHeader:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/util/ArrayList;Lcom/ebay/nautilus/domain/EbaySite;)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/util/ArrayList;Lcom/ebay/nautilus/domain/EbaySite;)V
    .locals 1
    .param p3    # Lcom/ebay/nautilus/domain/EbaySite;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ebay/nautilus/domain/EbaySite;",
            ")V"
        }
    .end annotation

    const-string v0, "GetEbayDetails"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;->details:Ljava/util/ArrayList;

    .line 43
    iput-object p3, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;->siteForHeader:Lcom/ebay/nautilus/domain/EbaySite;

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

    .line 49
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

    const-string v0, ""

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 58
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "GeteBayDetailsRequest"

    .line 59
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 61
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeErrorLocale(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;->details:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;->details:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "urn:ebay:apis:eBLBaseComponents"

    const-string v3, "DetailName"

    .line 67
    invoke-static {p1, v2, v3, v1}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "GeteBayDetailsRequest"

    .line 71
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;
    .locals 1

    .line 86
    new-instance v0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;->getResponse()Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    move-result-object v0

    return-object v0
.end method

.method public onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;->onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    .line 79
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;->siteForHeader:Lcom/ebay/nautilus/domain/EbaySite;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "x-ebay-api-siteid"

    .line 80
    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsRequest;->siteForHeader:Lcom/ebay/nautilus/domain/EbaySite;

    iget v1, v1, Lcom/ebay/nautilus/domain/EbaySite;->idInt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
