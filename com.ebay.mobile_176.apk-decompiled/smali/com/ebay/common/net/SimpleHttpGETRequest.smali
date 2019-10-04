.class public Lcom/ebay/common/net/SimpleHttpGETRequest;
.super Lcom/ebay/nautilus/shell/content/FwNetLoader;
.source "SimpleHttpGETRequest.java"


# instance fields
.field private final Url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/net/URL;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/content/FwNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 22
    iput-object p2, p0, Lcom/ebay/common/net/SimpleHttpGETRequest;->Url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method protected doInBackgroundInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    :try_start_0
    new-instance v0, Lcom/ebay/nautilus/domain/net/DataRequest;

    iget-object v1, p0, Lcom/ebay/common/net/SimpleHttpGETRequest;->Url:Ljava/net/URL;

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/net/DataRequest;-><init>(Ljava/net/URL;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/SimpleHttpGETRequest;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
