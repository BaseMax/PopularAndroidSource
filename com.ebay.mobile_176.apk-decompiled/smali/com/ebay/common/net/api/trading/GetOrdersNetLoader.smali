.class public Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetOrdersNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/common/net/api/trading/GetOrdersResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field private final iafToken:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private final orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 27
    iput-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->iafToken:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    .line 29
    iput-object p5, p0, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->orderId:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->locale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/common/net/api/trading/GetOrdersResponse;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/ebay/common/net/api/trading/GetOrdersRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->iafToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/ebay/common/net/api/trading/GetOrdersNetLoader;->orderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ebay/common/net/api/trading/GetOrdersRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    return-object v0
.end method
