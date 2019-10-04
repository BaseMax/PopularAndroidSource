.class public Lcom/ebay/common/net/api/search/following/CreateFollowRequest;
.super Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.source "CreateFollowRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/following/BaseFollowingRequest<",
        "Lcom/ebay/common/net/api/search/following/EmptyResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "createFollow"

.field public static final SERVICE_NAME:Ljava/lang/String; = "FollowService"


# instance fields
.field public final followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;Ljava/util/List;)V
    .locals 2
    .param p5    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/EbayCountry;",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FollowService"

    const-string v1, "createFollow"

    .line 25
    invoke-direct {p0, v0, v1, p4, p5}, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 27
    new-instance p4, Lcom/ebay/common/model/search/following/FollowDescriptor;

    invoke-direct {p4}, Lcom/ebay/common/model/search/following/FollowDescriptor;-><init>()V

    iput-object p4, p0, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    .line 28
    iget-object p4, p0, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    iput-object p3, p4, Lcom/ebay/common/model/search/following/FollowDescriptor;->customTitle:Ljava/lang/String;

    .line 29
    iget-object p3, p0, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    iput-object p6, p3, Lcom/ebay/common/model/search/following/FollowDescriptor;->notifications:Ljava/util/List;

    .line 30
    iget-object p3, p0, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    iput-object p1, p3, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    iput-object p2, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    .line 33
    sget-object p1, Lcom/ebay/nautilus/domain/data/FollowType;->INTEREST:Lcom/ebay/nautilus/domain/data/FollowType;

    if-eq p2, p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    sget-object p2, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->PUBLIC:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    iput-object p2, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->visibility:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    :cond_0
    return-void
.end method


# virtual methods
.method public buildRequest()[B
    .locals 2

    .line 40
    sget-object v0, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->defaultRequestMapper:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 3

    .line 68
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v1

    const-string/jumbo v2, "relation"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;
    .locals 4

    .line 55
    new-instance v0, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/EmptyResponse;-><init>()V

    const/4 v1, 0x2

    .line 58
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->setSuccessCodes(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;

    move-result-object v0

    return-object v0
.end method

.method protected isIdempotent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
