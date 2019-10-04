.class public Lcom/ebay/common/net/api/search/following/PatchFollowRequest;
.super Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.source "PatchFollowRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/following/BaseFollowingRequest<",
        "Lcom/ebay/common/net/api/search/following/EmptyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

.field private requestUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/util/Date;)V
    .locals 2
    .param p2    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FollowService"

    const-string v1, "patchSingleFollow"

    .line 27
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 28
    new-instance p1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    invoke-direct {p1}, Lcom/ebay/common/model/search/following/FollowDescriptor;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    .line 29
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    iput-object p4, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    .line 30
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    iput-object p3, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->interestId:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->notifications:Ljava/util/List;

    .line 32
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    iput-object p2, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->visibility:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    .line 33
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    invoke-static {p5}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->lastViewDate:Ljava/lang/String;

    .line 37
    :try_start_0
    sget-object p1, Lcom/ebay/nautilus/domain/data/FollowType;->USER:Lcom/ebay/nautilus/domain/data/FollowType;

    if-ne p4, p1, :cond_0

    .line 38
    new-instance p1, Ljava/net/URL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    .line 39
    invoke-static {p5}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p5, "relation/"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "/~"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->requestUrl:Ljava/net/URL;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/net/URL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {p5}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p5, "relation/"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->requestUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public buildRequest()[B
    .locals 2

    .line 58
    sget-object v0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->defaultRequestMapper:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "PATCH"

    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->requestUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;
    .locals 1

    .line 70
    new-instance v0, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/EmptyResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;->getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;

    move-result-object v0

    return-object v0
.end method

.method protected isIdempotent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
