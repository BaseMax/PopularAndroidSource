.class public Lcom/ebay/common/net/api/cart/GetUserIncentivesNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetUserIncentivesNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/common/net/api/cart/EbayCartApi;

.field private final type:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/cart/EbayCartApi;Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 23
    iput-object p2, p0, Lcom/ebay/common/net/api/cart/GetUserIncentivesNetLoader;->api:Lcom/ebay/common/net/api/cart/EbayCartApi;

    .line 24
    iput-object p3, p0, Lcom/ebay/common/net/api/cart/GetUserIncentivesNetLoader;->type:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesResponse;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/cart/GetUserIncentivesNetLoader;->api:Lcom/ebay/common/net/api/cart/EbayCartApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetUserIncentivesNetLoader;->type:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesRequest;-><init>(Lcom/ebay/common/net/api/cart/EbayCartApi;Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;)V

    return-object v0
.end method

.method public isServiceError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
