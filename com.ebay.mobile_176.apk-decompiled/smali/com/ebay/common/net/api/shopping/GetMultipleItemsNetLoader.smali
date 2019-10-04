.class public Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetMultipleItemsNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

.field private final itemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final selector:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 30
    iput-object p2, p0, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    .line 31
    iput-object p3, p0, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->itemIds:Ljava/util/List;

    .line 32
    iput-object p4, p0, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->selector:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->stringToLong(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private static stringToLong(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->itemIds:Ljava/util/List;

    iget-object v3, p0, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->selector:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
