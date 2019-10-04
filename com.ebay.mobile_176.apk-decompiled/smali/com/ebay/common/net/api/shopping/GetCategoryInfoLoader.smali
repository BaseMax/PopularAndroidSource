.class public Lcom/ebay/common/net/api/shopping/GetCategoryInfoLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetCategoryInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/nautilus/domain/net/api/shopping/GetCategoryInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

.field public final categoryId:J

.field public includeChildCategories:Z


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/ebay/common/net/api/shopping/GetCategoryInfoLoader;->includeChildCategories:Z

    .line 19
    iput-object p2, p0, Lcom/ebay/common/net/api/shopping/GetCategoryInfoLoader;->api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    .line 20
    iput-wide p3, p0, Lcom/ebay/common/net/api/shopping/GetCategoryInfoLoader;->categoryId:J

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/api/shopping/GetCategoryInfoResponse;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetCategoryInfoRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/shopping/GetCategoryInfoLoader;->api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    iget-wide v2, p0, Lcom/ebay/common/net/api/shopping/GetCategoryInfoLoader;->categoryId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/net/api/shopping/GetCategoryInfoRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;J)V

    .line 27
    iget-boolean v1, p0, Lcom/ebay/common/net/api/shopping/GetCategoryInfoLoader;->includeChildCategories:Z

    iput-boolean v1, v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetCategoryInfoRequest;->includeChildCategories:Z

    return-object v0
.end method
