.class public Lcom/koushikdutta/ion/mock/MockResponseFuture;
.super Lcom/koushikdutta/async/b/i;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/ion/future/ResponseFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/b/i<",
        "TT;>;",
        "Lcom/koushikdutta/ion/future/ResponseFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private request:Lcom/koushikdutta/async/http/d;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/d;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/ion/mock/MockResponseFuture;->request:Lcom/koushikdutta/async/http/d;

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/ion/mock/MockResponseFuture;Ljava/lang/Exception;Ljava/lang/Object;)Lcom/koushikdutta/ion/Response;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/mock/MockResponseFuture;->getResponse(Ljava/lang/Exception;Ljava/lang/Object;)Lcom/koushikdutta/ion/Response;

    move-result-object p0

    return-object p0
.end method

.method private getResponse(Ljava/lang/Exception;Ljava/lang/Object;)Lcom/koushikdutta/ion/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)",
            "Lcom/koushikdutta/ion/Response<",
            "TT;>;"
        }
    .end annotation

    .line 31
    new-instance v6, Lcom/koushikdutta/ion/Response;

    iget-object v1, p0, Lcom/koushikdutta/ion/mock/MockResponseFuture;->request:Lcom/koushikdutta/async/http/d;

    sget-object v2, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_NETWORK:Lcom/koushikdutta/ion/ResponseServedFrom;

    invoke-virtual {p0}, Lcom/koushikdutta/ion/mock/MockResponseFuture;->getHeadersResponse()Lcom/koushikdutta/ion/HeadersResponse;

    move-result-object v3

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/Response;-><init>(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method protected getHeaders()Lcom/koushikdutta/async/http/n;
    .locals 1

    .line 23
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    return-object v0
.end method

.method protected getHeadersResponse()Lcom/koushikdutta/ion/HeadersResponse;
    .locals 4

    .line 27
    new-instance v0, Lcom/koushikdutta/ion/HeadersResponse;

    invoke-virtual {p0}, Lcom/koushikdutta/ion/mock/MockResponseFuture;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v2, v3, v1}, Lcom/koushikdutta/ion/HeadersResponse;-><init>(ILjava/lang/String;Lcom/koushikdutta/async/http/n;)V

    return-object v0
.end method

.method public withResponse()Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/ion/Response<",
            "TT;>;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/koushikdutta/async/b/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 37
    new-instance v1, Lcom/koushikdutta/ion/mock/MockResponseFuture$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/ion/mock/MockResponseFuture$1;-><init>(Lcom/koushikdutta/ion/mock/MockResponseFuture;Lcom/koushikdutta/async/b/i;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/ion/mock/MockResponseFuture;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/i;

    .line 43
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/b/i;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    return-object v0
.end method
