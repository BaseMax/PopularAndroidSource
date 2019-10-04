.class public Lcom/ebay/common/net/api/sell/GetConditionsInfoLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetConditionsInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/nautilus/domain/net/api/trading/GetCategoryFeaturesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field public final categoryId:J


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 18
    iput-object p2, p0, Lcom/ebay/common/net/api/sell/GetConditionsInfoLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    .line 19
    iput-wide p3, p0, Lcom/ebay/common/net/api/sell/GetConditionsInfoLoader;->categoryId:J

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/api/trading/GetCategoryFeaturesResponse;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/ebay/nautilus/domain/net/api/trading/GetCategoryFeaturesRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/sell/GetConditionsInfoLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-wide v2, p0, Lcom/ebay/common/net/api/sell/GetConditionsInfoLoader;->categoryId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/net/api/trading/GetCategoryFeaturesRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/Long;)V

    return-object v0
.end method
