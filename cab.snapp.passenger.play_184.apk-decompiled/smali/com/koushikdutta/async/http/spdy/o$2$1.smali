.class final Lcom/koushikdutta/async/http/spdy/o$2$1;
.super Lcom/koushikdutta/async/http/spdy/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/o$2;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field n:Z

.field final synthetic o:Lcom/koushikdutta/async/http/spdy/o$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/o$2;Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/Protocol;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->o:Lcom/koushikdutta/async/http/spdy/o$2;

    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/spdy/a;-><init>(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/Protocol;)V

    return-void
.end method


# virtual methods
.method public final settings(ZLcom/koushikdutta/async/http/spdy/m;)V
    .locals 2

    .line 229
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/a;->settings(ZLcom/koushikdutta/async/http/spdy/m;)V

    .line 230
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->n:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->n:Z

    .line 233
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->o:Lcom/koushikdutta/async/http/spdy/o$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/o$2;->d:Lcom/koushikdutta/async/http/spdy/o;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/o;->y:Ljava/util/Hashtable;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->o:Lcom/koushikdutta/async/http/spdy/o$2;

    iget-object p2, p2, Lcom/koushikdutta/async/http/spdy/o$2;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/o$b;

    .line 235
    iget-object p2, p1, Lcom/koushikdutta/async/http/spdy/o$b;->c:Lcom/koushikdutta/async/b/h;

    invoke-virtual {p2}, Lcom/koushikdutta/async/b/h;->setComplete()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 236
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->o:Lcom/koushikdutta/async/http/spdy/o$2;

    iget-object p2, p2, Lcom/koushikdutta/async/http/spdy/o$2;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object p2, p2, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using new spdy connection for host: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->o:Lcom/koushikdutta/async/http/spdy/o$2;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/o$2;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object v1, v1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 237
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->o:Lcom/koushikdutta/async/http/spdy/o$2;

    iget-object p2, p2, Lcom/koushikdutta/async/http/spdy/o$2;->a:Lcom/koushikdutta/async/http/b$a;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$2$1;->o:Lcom/koushikdutta/async/http/spdy/o$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/o$2;->c:Lcom/koushikdutta/async/a/b;

    invoke-static {p2, p0, v0}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/http/spdy/a;Lcom/koushikdutta/async/a/b;)V

    .line 240
    :cond_0
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/spdy/o$b;->setComplete(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
