.class final Lcom/koushikdutta/async/http/i$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/i$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/net/InetAddress;

.field final synthetic c:Lcom/koushikdutta/async/http/i$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/i$1;Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/i$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/i$1$2;->b:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContinue(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attempting connection to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$1$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1;->e:Lcom/koushikdutta/async/http/i;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i;->h:Lcom/koushikdutta/async/http/a;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a;->getServer()Lcom/koushikdutta/async/h;

    move-result-object p1

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$1$2;->b:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget v2, v2, Lcom/koushikdutta/async/http/i$1;->d:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object v2, v1, Lcom/koushikdutta/async/http/i$1;->e:Lcom/koushikdutta/async/http/i;

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object v3, v1, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object v4, v1, Lcom/koushikdutta/async/http/i$1;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget v5, v1, Lcom/koushikdutta/async/http/i$1;->d:I

    new-instance v7, Lcom/koushikdutta/async/http/i$1$2$1;

    invoke-direct {v7, p0, p2}, Lcom/koushikdutta/async/http/i$1$2$1;-><init>(Lcom/koushikdutta/async/http/i$1$2;Lcom/koushikdutta/async/a/a;)V

    const/4 v6, 0x0

    .line 223
    invoke-virtual/range {v2 .. v7}, Lcom/koushikdutta/async/http/i;->wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;

    move-result-object p2

    .line 222
    invoke-virtual {p1, v0, p2}, Lcom/koushikdutta/async/h;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;

    return-void
.end method
