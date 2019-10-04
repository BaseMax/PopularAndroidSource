.class public final Lcom/ebay/common/net/api/trading/categories/GetCategoriesRequest;
.super Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;
.source "GetCategoriesRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest<",
        "Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field private final parentCategory:Lcom/ebay/nautilus/domain/data/EbayCategory;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Lcom/ebay/nautilus/domain/data/EbayCategory;)V
    .locals 1

    const-string v0, "GetCategories"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesRequest;->parentCategory:Lcom/ebay/nautilus/domain/data/EbayCategory;

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

    .line 26
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

    const-string v0, ""

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 36
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "GetCategoriesRequest"

    .line 37
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 40
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeErrorLocale(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesRequest;->parentCategory:Lcom/ebay/nautilus/domain/data/EbayCategory;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v2, "CategoryParent"

    .line 43
    iget-object v3, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesRequest;->parentCategory:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v3, v3, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesRequest;->parentCategory:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget v0, v0, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    add-int/2addr v1, v0

    :cond_0
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v2, "LevelLimit"

    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ViewAllNodes"

    const-string/jumbo v2, "true"

    .line 47
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "DetailLevel"

    const-string v2, "ReturnAll"

    .line 48
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "GetCategoriesRequest"

    .line 51
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;
    .locals 2

    .line 57
    new-instance v0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesRequest;->getResponse()Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    move-result-object v0

    return-object v0
.end method
