.class public Lcom/ebay/common/net/api/search/following/CreateInterestRequest;
.super Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.source "CreateInterestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/following/BaseFollowingRequest<",
        "Lcom/ebay/common/net/api/search/following/CreateInterestResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "createInterest"

.field public static final SERVICE_NAME:Ljava/lang/String; = "InterestService"


# instance fields
.field public final interestContainer:Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/following/InterestParameters;Ljava/lang/String;)V
    .locals 3

    const-string v0, "InterestService"

    const-string v1, "createInterest"

    .line 17
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 18
    new-instance p2, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;

    invoke-direct {p2, p1}, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;-><init>(Lcom/ebay/common/net/api/search/following/InterestParameters;)V

    iput-object p2, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRequest;->interestContainer:Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;

    return-void
.end method


# virtual methods
.method public buildRequest()[B
    .locals 2

    .line 24
    sget-object v0, Lcom/ebay/common/net/api/search/following/CreateInterestRequest;->defaultRequestMapper:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRequest;->interestContainer:Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 3

    .line 44
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->interestBaseUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v1

    const-string v2, "metadata"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/following/CreateInterestResponse;
    .locals 1

    .line 36
    new-instance v0, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/CreateInterestRequest;->getResponse()Lcom/ebay/common/net/api/search/following/CreateInterestResponse;

    move-result-object v0

    return-object v0
.end method

.method protected isIdempotent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
