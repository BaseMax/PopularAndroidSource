.class public final Lcom/ebay/common/net/EbayRequestHelper;
.super Ljava/lang/Object;
.source "EbayRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/domain/net/EbayResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/ebay/nautilus/domain/net/EbayResponse;",
            ">(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/nautilus/kernel/net/Request<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/domain/net/EbayResponse;

    .line 44
    invoke-static {p0}, Lcom/ebay/common/net/EbayRequestHelper;->verify(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p0
.end method

.method public static verify(Lcom/ebay/nautilus/domain/net/EbayResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;->hasSuccessResponseCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget v0, p0, Lcom/ebay/nautilus/domain/net/EbayResponse;->ackCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;-><init>(Ljava/util/List;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/kernel/net/HostErrorException;

    iget v1, p0, Lcom/ebay/nautilus/domain/net/EbayResponse;->responseCode:I

    iget-object p0, p0, Lcom/ebay/nautilus/domain/net/EbayResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/ebay/nautilus/kernel/net/HostErrorException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
