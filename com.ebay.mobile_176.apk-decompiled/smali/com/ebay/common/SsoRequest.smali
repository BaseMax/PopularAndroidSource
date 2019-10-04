.class public abstract Lcom/ebay/common/SsoRequest;
.super Lcom/ebay/nautilus/kernel/net/Request;
.source "SsoRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/ebay/common/SsoResponse;",
        ">",
        "Lcom/ebay/nautilus/kernel/net/Request<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public responseCode:I

.field private final url:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Sso"

    .line 16
    invoke-direct {p0, v0, p2}, Lcom/ebay/nautilus/kernel/net/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 12
    iput p2, p0, Lcom/ebay/common/SsoRequest;->responseCode:I

    .line 20
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ebay/common/SsoRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Lcom/ebay/common/DevLogicException;

    invoke-direct {p2, p1}, Lcom/ebay/common/DevLogicException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ebay/common/SsoRequest;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/ebay/common/SsoRequest;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayAppCredentials;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/EbayAppCredentials;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbayAppCredentials;->userAgent:Ljava/lang/String;

    return-object v0
.end method
