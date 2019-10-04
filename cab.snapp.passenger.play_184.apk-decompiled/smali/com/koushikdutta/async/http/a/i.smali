.class public abstract Lcom/koushikdutta/async/http/a/i;
.super Lcom/koushikdutta/async/http/a/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/t;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/a/g;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/i;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 20
    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    invoke-interface {p2, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
