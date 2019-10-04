.class public Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;
.super Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.source "DeleteFollowRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/following/BaseFollowingRequest<",
        "Lcom/ebay/common/net/api/search/following/EmptyResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "deleteFollowByInterest"

.field public static final SERVICE_NAME:Ljava/lang/String; = "FollowService"


# instance fields
.field public final followType:Lcom/ebay/nautilus/domain/data/FollowType;

.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 2
    .param p4    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FollowService"

    const-string v1, "deleteFollowByInterest"

    .line 23
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 24
    iput-object p2, p0, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;->id:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    return-void
.end method


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE"

    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 4

    .line 54
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relation/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/FollowType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;
    .locals 1

    .line 46
    new-instance v0, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/EmptyResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;->getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;

    move-result-object v0

    return-object v0
.end method

.method protected isIdempotent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
