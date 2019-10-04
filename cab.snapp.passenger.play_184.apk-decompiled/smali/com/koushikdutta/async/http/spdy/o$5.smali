.class final Lcom/koushikdutta/async/http/spdy/o$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/f;


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
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/f<",
        "Lcom/koushikdutta/async/http/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b$c;

.field final synthetic b:Lcom/koushikdutta/async/http/spdy/a$a;

.field final synthetic c:Lcom/koushikdutta/async/http/spdy/o;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/o;Lcom/koushikdutta/async/http/b$c;Lcom/koushikdutta/async/http/spdy/a$a;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$5;->c:Lcom/koushikdutta/async/http/spdy/o;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$5;->a:Lcom/koushikdutta/async/http/b$c;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/o$5;->b:Lcom/koushikdutta/async/http/spdy/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/n;)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$5;->a:Lcom/koushikdutta/async/http/b$c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$c;->receiveHeadersCallback:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    .line 433
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$5;->b:Lcom/koushikdutta/async/http/spdy/a$a;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/a$a;->getConnection()Lcom/koushikdutta/async/http/spdy/a;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/a;->g:Lcom/koushikdutta/async/http/Protocol;

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/koushikdutta/async/http/q;->getBodyDecoder(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/n;Z)Lcom/koushikdutta/async/n;

    move-result-object p1

    .line 434
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$5;->a:Lcom/koushikdutta/async/http/b$c;

    iget-object p2, p2, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/b$h;->emitter(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/http/b$h;

    return-void
.end method

.method public final bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 429
    check-cast p2, Lcom/koushikdutta/async/http/n;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/o$5;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/n;)V

    return-void
.end method
