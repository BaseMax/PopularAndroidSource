.class public Lcom/koushikdutta/ion/loader/FileLoader;
.super Lcom/koushikdutta/ion/loader/StreamLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/StreamLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;
    .locals 9
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

    .line 86
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 88
    :cond_0
    new-instance v0, Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;

    invoke-direct {v0, v1}, Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;-><init>(Lcom/koushikdutta/ion/loader/FileLoader$1;)V

    .line 89
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion;->getHttpClient()Lcom/koushikdutta/async/http/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v1

    new-instance v8, Lcom/koushikdutta/ion/loader/FileLoader$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/ion/loader/FileLoader$2;-><init>(Lcom/koushikdutta/ion/loader/FileLoader;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;Lcom/koushikdutta/async/b/f;)V

    invoke-virtual {v1, v8}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-object v0
.end method

.method public loadBitmap(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/b/e;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/koushikdutta/ion/Ion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v3, p4

    if-eqz v3, :cond_1

    const-string v0, "file:/"

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v9, Lcom/koushikdutta/async/b/i;

    invoke-direct {v9}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 42
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->getBitmapLoadExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v11, Lcom/koushikdutta/ion/loader/FileLoader$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v9

    move-object/from16 v3, p4

    move-object v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/koushikdutta/ion/loader/FileLoader$1;-><init>(Lcom/koushikdutta/ion/loader/FileLoader;Lcom/koushikdutta/async/b/i;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v9

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
