.class public Lcom/ebay/common/net/api/search/following/GetInterestsRequest;
.super Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.source "GetInterestsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/following/BaseFollowingRequest<",
        "Lcom/ebay/common/net/api/search/following/GetInterestResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "getInterests"

.field public static final SERVICE_NAME:Ljava/lang/String; = "InterestService"


# instance fields
.field private final interestIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 2
    .param p3    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/EbayCountry;",
            ")V"
        }
    .end annotation

    const-string v0, "InterestService"

    const-string v1, "getInterests"

    .line 23
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 24
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/GetInterestsRequest;->interestIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRequestUrl()Ljava/net/URL;
    .locals 3

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->interestBaseUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "metadata?interestIds="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/GetInterestsRequest;->interestIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 47
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/GetInterestsRequest;->interestIds:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
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

    .line 55
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/following/GetInterestResponse;
    .locals 1

    .line 36
    new-instance v0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/GetInterestResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/GetInterestsRequest;->getResponse()Lcom/ebay/common/net/api/search/following/GetInterestResponse;

    move-result-object v0

    return-object v0
.end method

.method protected isIdempotent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
