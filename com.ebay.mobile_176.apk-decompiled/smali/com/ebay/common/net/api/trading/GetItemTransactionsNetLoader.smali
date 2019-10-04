.class public Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetItemTransactionsNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field private final itemId:J

.field public myEbayListItem:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

.field private final transactionId:J


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;JJ)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 25
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    .line 26
    iput-wide p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->itemId:J

    .line 27
    iput-wide p5, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->transactionId:J

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v6, Lcom/ebay/common/net/api/trading/GetItemTransactionsRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-wide v2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->itemId:J

    iget-wide v4, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsNetLoader;->transactionId:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/trading/GetItemTransactionsRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;JJ)V

    return-object v6
.end method
