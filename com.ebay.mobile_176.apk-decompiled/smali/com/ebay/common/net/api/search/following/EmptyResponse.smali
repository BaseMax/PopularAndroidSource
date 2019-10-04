.class public Lcom/ebay/common/net/api/search/following/EmptyResponse;
.super Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;
.source "EmptyResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/search/following/BaseFollowInterestResponse;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getDataHandler()Lcom/ebay/nautilus/kernel/net/IResponseDataHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "EmptyResponse does not expect any response body"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
