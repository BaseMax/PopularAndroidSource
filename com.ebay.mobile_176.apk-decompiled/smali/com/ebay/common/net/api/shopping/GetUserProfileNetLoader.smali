.class public Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetUserProfileNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/nautilus/domain/net/api/shopping/GetUserProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 23
    iput-object p2, p0, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    .line 24
    iput-object p3, p0, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/api/shopping/GetUserProfileResponse;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetUserProfileRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/shopping/GetUserProfileNetLoader;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/net/api/shopping/GetUserProfileRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;Ljava/lang/String;)V

    return-object v0
.end method
