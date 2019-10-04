.class public abstract Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.super Lcom/ebay/nautilus/domain/net/EbayCosRequest;
.source "BaseFollowingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ebay/nautilus/domain/net/EbayCosResponse;",
        ">",
        "Lcom/ebay/nautilus/domain/net/EbayCosRequest<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 1
    .param p4    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    sget-object v0, Lcom/ebay/nautilus/domain/net/CosVersionType;->V2:Lcom/ebay/nautilus/domain/net/CosVersionType;

    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/nautilus/domain/net/EbayCosRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/net/CosVersionType;)V

    const-string p1, "Country must not be non-null, use userContext.ensureCountry()"

    .line 22
    invoke-static {p4, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;->iafToken:Ljava/lang/String;

    const-string p1, "application/json"

    .line 26
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;->requestBodyContentType:Ljava/lang/String;

    const-string p1, "application/json"

    .line 27
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;->responseBodyContentType:Ljava/lang/String;

    .line 28
    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteGlobalId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;->marketPlaceId:Ljava/lang/String;

    return-void
.end method
