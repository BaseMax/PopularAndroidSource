.class public abstract Lcom/ebay/common/content/SingleRequestNetLoader;
.super Lcom/ebay/nautilus/shell/content/NetLoader;
.source "SingleRequestNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/ebay/nautilus/domain/net/EbayResponse;",
        ">",
        "Lcom/ebay/nautilus/shell/content/NetLoader;"
    }
.end annotation


# instance fields
.field private volatile response:Lcom/ebay/nautilus/domain/net/EbayResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/content/NetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

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

.method protected doInBackground()V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/ebay/common/content/SingleRequestNetLoader;->createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/common/content/SingleRequestNetLoader;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/EbayResponse;

    iput-object v0, p0, Lcom/ebay/common/content/SingleRequestNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    return-void
.end method

.method public final getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/ebay/common/content/SingleRequestNetLoader;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    return-object v0
.end method
