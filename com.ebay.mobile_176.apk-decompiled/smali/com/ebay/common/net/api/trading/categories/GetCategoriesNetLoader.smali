.class public Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetCategoriesNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field private final category:Lcom/ebay/nautilus/domain/data/EbayCategory;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Lcom/ebay/nautilus/domain/data/EbayCategory;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 30
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    .line 31
    iput-object p3, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Lcom/ebay/nautilus/domain/data/EbayCategory;)V

    return-object v0
.end method

.method protected doInBackgroundInternal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetCategories"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/EbaySite;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v2, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/ebay/common/net/ResponseCache;->getResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 49
    new-instance v0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;-><init>(Z)V

    .line 50
    new-instance v1, Lcom/ebay/nautilus/kernel/io/DirectByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/kernel/io/DirectByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;->parse(Ljava/io/InputStream;)V

    .line 51
    iput-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    return-void

    .line 55
    :cond_1
    invoke-super {p0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->doInBackgroundInternal()V

    .line 57
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    check-cast v2, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;->xml:[B

    const-wide/32 v3, 0x5265c00

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ebay/common/net/ResponseCache;->setResponse(Landroid/content/Context;Ljava/lang/String;[BJ)V

    :cond_2
    return-void
.end method

.method public getCategory()Lcom/ebay/nautilus/domain/data/EbayCategory;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesNetLoader;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    return-object v0
.end method
