.class public Lcom/ebay/common/net/api/search/following/GetFollowsRequest;
.super Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.source "GetFollowsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/following/BaseFollowingRequest<",
        "Lcom/ebay/common/net/api/search/following/GetFollowsResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "getUserFollowSummary"

.field public static final SERVICE_NAME:Ljava/lang/String; = "FollowService"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 2
    .param p2    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FollowService"

    const-string v1, "getUserFollowSummary"

    .line 21
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    return-void
.end method


# virtual methods
.method public getRequestUrl()Ljava/net/URL;
    .locals 3

    .line 41
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "following/user/@self"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;->searchFollowRequestUsernameField:Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "?fields=username"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/following/GetFollowsResponse;
    .locals 1

    .line 27
    new-instance v0, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/GetFollowsRequest;->getResponse()Lcom/ebay/common/net/api/search/following/GetFollowsResponse;

    move-result-object v0

    return-object v0
.end method

.method protected isIdempotent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
