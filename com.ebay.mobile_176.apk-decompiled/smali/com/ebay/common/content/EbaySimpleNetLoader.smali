.class public abstract Lcom/ebay/common/content/EbaySimpleNetLoader;
.super Lcom/ebay/nautilus/shell/content/FwNetLoader;
.source "EbaySimpleNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/ebay/nautilus/domain/net/EbayResponse;",
        ">",
        "Lcom/ebay/nautilus/shell/content/FwNetLoader;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected volatile response:Lcom/ebay/nautilus/domain/net/EbayResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/content/FwNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method


# virtual methods
.method protected abstract createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "TR;>;"
        }
    .end annotation
.end method

.method protected doInBackgroundInternal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/EbayResponse;

    iput-object v0, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    .line 36
    iget-object v0, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/EbayResponse;->hasSuccessResponseCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/EbayResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->setResultStatus(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/ebay/nautilus/kernel/net/HostErrorException;

    iget-object v1, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    iget v1, v1, Lcom/ebay/nautilus/domain/net/EbayResponse;->responseCode:I

    iget-object v2, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/EbayResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/kernel/net/HostErrorException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    return-object v0
.end method

.method public final getServiceErrorsAndWarnings()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 78
    instance-of v4, v3, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    :cond_1
    check-cast v3, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public isServiceError()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/EbayResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isWarning()Z
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/content/EbaySimpleNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    iget v0, v0, Lcom/ebay/nautilus/domain/net/EbayResponse;->ackCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
