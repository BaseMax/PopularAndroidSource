.class public Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetSuggestedCategoriesNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field private final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 16
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    .line 17
    iput-object p3, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesNetLoader;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesNetLoader;->query:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V

    return-object v0
.end method
