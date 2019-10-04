.class public abstract Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;
.super Lcom/ebay/nautilus/domain/net/EbayCosResponse;
.source "BaseFollowInterestResponse.java"


# static fields
.field private static final DEFAULT_SUCCESS_CODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private successCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xc8

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xc9

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xcc

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->DEFAULT_SUCCESS_CODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/domain/net/EbayCosResponse;-><init>(Z)V

    .line 17
    sget-object p1, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->DEFAULT_SUCCESS_CODES:Ljava/util/List;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->successCodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getSuccessCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->successCodes:Ljava/util/List;

    return-object v0
.end method

.method public hasSuccessResponseCode()Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->getSuccessCodes()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->responseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSuccessCodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 32
    sget-object p1, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->DEFAULT_SUCCESS_CODES:Ljava/util/List;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->successCodes:Ljava/util/List;

    goto :goto_0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;->successCodes:Ljava/util/List;

    :goto_0
    return-void
.end method
