.class public final Lcom/ebay/common/net/api/shopping/FindProductsRequest;
.super Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingRequest;
.source "FindProductsRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingRequest<",
        "Lcom/ebay/common/net/api/shopping/FindProductsResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field private final categoryId:Ljava/lang/String;

.field private final domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/EbayProductDomain;",
            ">;"
        }
    .end annotation
.end field

.field private final maxEntries:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final productIdType:Ljava/lang/String;

.field private final queryKeywords:Ljava/lang/String;

.field private final singleProduct:Z


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;J)V
    .locals 1

    const-string v0, "FindProducts"

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productId:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productIdType:Ljava/lang/String;

    const-string v0, "100"

    .line 71
    iput-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->maxEntries:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->singleProduct:Z

    .line 73
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->domains:Ljava/util/List;

    .line 74
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->categoryId:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->queryKeywords:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;)V
    .locals 1

    const-string v0, "FindProducts"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productId:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productIdType:Ljava/lang/String;

    const-string v0, "200"

    .line 47
    iput-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->maxEntries:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->singleProduct:Z

    .line 49
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->categoryId:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->domains:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->queryKeywords:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "FindProducts"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productId:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productIdType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->queryKeywords:Ljava/lang/String;

    const-string p2, "1"

    .line 35
    iput-object p2, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->maxEntries:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->domains:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->categoryId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->singleProduct:Z

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/EbayProductDomain;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FindProducts"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productId:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productIdType:Ljava/lang/String;

    const-string v0, "200"

    .line 59
    iput-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->maxEntries:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->singleProduct:Z

    .line 61
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->categoryId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->queryKeywords:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->domains:Ljava/util/List;

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

    .line 81
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 90
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "FindProductsRequest"

    .line 91
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "MaxEntries"

    .line 93
    iget-object v2, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->maxEntries:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "HideDuplicateItems"

    const-string/jumbo v2, "true"

    .line 94
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "AvailableItemsOnly"

    const-string v2, "false"

    .line 95
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->singleProduct:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const-string v3, "ProductID"

    .line 99
    iget-object v4, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productId:Ljava/lang/String;

    const-string/jumbo v5, "type"

    iget-object v6, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->productIdType:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeTagWithAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ProductSort"

    const-string v2, "Title"

    .line 100
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->queryKeywords:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "QueryKeywords"

    .line 106
    iget-object v2, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->queryKeywords:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "IncludeSelector"

    const-string v2, "DomainHistogram"

    .line 107
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->domains:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->domains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/EbayProductDomain;

    const-string/jumbo v2, "urn:ebay:apis:eBLBaseComponents"

    const-string v3, "DomainName"

    .line 113
    invoke-virtual {v1}, Lcom/ebay/common/model/EbayProductDomain;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->categoryId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "CategoryID"

    .line 120
    iget-object v2, p0, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->categoryId:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "FindProductsRequest"

    .line 123
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/shopping/FindProductsResponse;
    .locals 1

    .line 129
    new-instance v0, Lcom/ebay/common/net/api/shopping/FindProductsResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/ebay/common/net/api/shopping/FindProductsRequest;->getResponse()Lcom/ebay/common/net/api/shopping/FindProductsResponse;

    move-result-object v0

    return-object v0
.end method
