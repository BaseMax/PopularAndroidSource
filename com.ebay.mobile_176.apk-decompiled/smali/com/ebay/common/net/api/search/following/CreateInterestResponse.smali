.class public Lcom/ebay/common/net/api/search/following/CreateInterestResponse;
.super Lcom/ebay/nautilus/domain/net/EbayCosResponse;
.source "CreateInterestResponse.java"


# instance fields
.field public interestDescriptor:Lcom/ebay/common/net/api/search/following/InterestDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Lcom/ebay/nautilus/domain/net/EbayCosResponse;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public hasSuccessResponseCode()Z
    .locals 2

    .line 28
    invoke-super {p0}, Lcom/ebay/nautilus/domain/net/EbayCosResponse;->hasSuccessResponseCode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;->responseCode:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;->responseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 21
    const-class v0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-virtual {p0, p1, v0}, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;->readJsonStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;->interestDescriptor:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    return-void
.end method
