.class public Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest;
.super Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.source "BulkDeleteFollowRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;,
        Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/following/BaseFollowingRequest<",
        "Lcom/ebay/common/net/api/search/following/EmptyResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "bulkDeleteFollows"

.field public static final SERVICE_NAME:Ljava/lang/String; = "FollowService"


# instance fields
.field protected final requestBody:Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Body;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 2
    .param p3    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/EbayCountry;",
            ")V"
        }
    .end annotation

    const-string v0, "FollowService"

    const-string v1, "bulkDeleteFollows"

    .line 104
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 105
    new-instance p2, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Body;

    invoke-direct {p2, p1}, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Body;-><init>(Ljava/util/Set;)V

    iput-object p2, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest;->requestBody:Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Body;

    return-void
.end method


# virtual methods
.method public buildRequest()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest;->defaultRequestMapper:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest;->requestBody:Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Body;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 3

    .line 119
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v1

    const-string v2, "relation/bulk_follow_and_unfollow"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;
    .locals 1

    .line 136
    new-instance v0, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/EmptyResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest;->getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;

    move-result-object v0

    return-object v0
.end method
