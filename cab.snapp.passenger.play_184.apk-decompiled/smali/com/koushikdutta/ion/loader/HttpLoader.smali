.class public Lcom/koushikdutta/ion/loader/HttpLoader;
.super Lcom/koushikdutta/ion/loader/SimpleLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/SimpleLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/Ion;",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/async/b/f<",
            "Lcom/koushikdutta/ion/Loader$LoaderEmitter;",
            ">;)",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/n;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion;->getHttpClient()Lcom/koushikdutta/async/http/a;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/ion/loader/HttpLoader$1;

    invoke-direct {v0, p0, p3}, Lcom/koushikdutta/ion/loader/HttpLoader$1;-><init>(Lcom/koushikdutta/ion/loader/HttpLoader;Lcom/koushikdutta/async/b/f;)V

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/http/a;->execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method
