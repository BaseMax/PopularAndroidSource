.class public Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "AddMemberMessageRTQNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageRTQResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field private final body:Ljava/lang/String;

.field private final itemId:Ljava/lang/Long;

.field private final parentMessageId:Ljava/lang/String;

.field private final pictureUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final recipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 30
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    .line 31
    iput-object p3, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->parentMessageId:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->itemId:Ljava/lang/Long;

    .line 33
    iput-object p5, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->recipient:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->body:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->pictureUrls:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageRTQResponse;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v7, Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageRTQRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->parentMessageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->itemId:Ljava/lang/Long;

    iget-object v4, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->recipient:Ljava/lang/String;

    iget-object v5, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->body:Ljava/lang/String;

    iget-object v6, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;->pictureUrls:Ljava/util/ArrayList;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageRTQRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v7
.end method
