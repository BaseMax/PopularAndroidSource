.class final Lcom/koushikdutta/async/http/spdy/o$6;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/o;->exchangeHeaders(Lcom/koushikdutta/async/http/b$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "Lcom/koushikdutta/async/http/n;",
        "Ljava/util/List<",
        "Lcom/koushikdutta/async/http/spdy/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b$c;

.field final synthetic b:Lcom/koushikdutta/async/http/spdy/o;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$c;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$6;->b:Lcom/koushikdutta/async/http/spdy/o;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$6;->a:Lcom/koushikdutta/async/http/b$c;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic transform(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    check-cast p1, Ljava/util/List;

    .line 1413
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    .line 1414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/g;

    .line 1415
    iget-object v2, v1, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/c;->utf8()Ljava/lang/String;

    move-result-object v2

    .line 1416
    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/c;->utf8()Ljava/lang/String;

    move-result-object v1

    .line 1417
    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    goto :goto_0

    .line 1419
    :cond_0
    sget-object p1, Lcom/koushikdutta/async/http/spdy/g;->RESPONSE_STATUS:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/c;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/n;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const-string v2, " "

    .line 1420
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 1421
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/o$6;->a:Lcom/koushikdutta/async/http/b$c;

    iget-object v2, v2, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/b$h;->code(I)Lcom/koushikdutta/async/http/b$h;

    .line 1422
    array-length v2, p1

    if-ne v2, v1, :cond_1

    .line 1423
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o$6;->a:Lcom/koushikdutta/async/http/b$c;

    iget-object v1, v1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/http/b$h;->message(Ljava/lang/String;)Lcom/koushikdutta/async/http/b$h;

    .line 1424
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$6;->a:Lcom/koushikdutta/async/http/b$c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/g;->VERSION:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/c;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/http/b$h;->protocol(Ljava/lang/String;)Lcom/koushikdutta/async/http/b$h;

    .line 1425
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$6;->a:Lcom/koushikdutta/async/http/b$c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/b$h;->headers(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/b$h;

    .line 1426
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/spdy/o$6;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
