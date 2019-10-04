.class final Lcom/koushikdutta/async/http/spdy/o$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/o;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/f<",
        "Lcom/koushikdutta/async/http/spdy/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b$a;

.field final synthetic b:Lcom/koushikdutta/async/b/h;

.field final synthetic c:Lcom/koushikdutta/async/http/spdy/o;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/b/h;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$4;->c:Lcom/koushikdutta/async/http/spdy/o;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$4;->a:Lcom/koushikdutta/async/http/b$a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/o$4;->b:Lcom/koushikdutta/async/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/spdy/a;)V
    .locals 2

    .line 376
    instance-of v0, p1, Lcom/koushikdutta/async/http/spdy/o$a;

    if-eqz v0, :cond_0

    .line 377
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$4;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string p2, "spdy not available"

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$4;->b:Lcom/koushikdutta/async/b/h;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$4;->c:Lcom/koushikdutta/async/http/spdy/o;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$4;->a:Lcom/koushikdutta/async/http/b$a;

    invoke-static {p2, v0}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/b/h;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/h;

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 382
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$4;->b:Lcom/koushikdutta/async/b/h;

    invoke-virtual {p2}, Lcom/koushikdutta/async/b/h;->setComplete()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 383
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$4;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object p2, p2, Lcom/koushikdutta/async/http/b$a;->connectCallback:Lcom/koushikdutta/async/a/b;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    :cond_1
    return-void

    .line 386
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$4;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using existing spdy connection for host: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o$4;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object v1, v1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$4;->b:Lcom/koushikdutta/async/b/h;

    invoke-virtual {p1}, Lcom/koushikdutta/async/b/h;->setComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 388
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$4;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->connectCallback:Lcom/koushikdutta/async/a/b;

    invoke-static {p1, p2, v0}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/http/spdy/a;Lcom/koushikdutta/async/a/b;)V

    :cond_3
    return-void
.end method

.method public final bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 373
    check-cast p2, Lcom/koushikdutta/async/http/spdy/a;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/o$4;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/spdy/a;)V

    return-void
.end method
