.class final Lcom/koushikdutta/async/h$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/f<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/b;

.field final synthetic b:Lcom/koushikdutta/async/b/i;

.field final synthetic c:Ljava/net/InetSocketAddress;

.field final synthetic d:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/a/b;Lcom/koushikdutta/async/b/i;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/koushikdutta/async/h$13;->d:Lcom/koushikdutta/async/h;

    iput-object p2, p0, Lcom/koushikdutta/async/h$13;->a:Lcom/koushikdutta/async/a/b;

    iput-object p3, p0, Lcom/koushikdutta/async/h$13;->b:Lcom/koushikdutta/async/b/i;

    iput-object p4, p0, Lcom/koushikdutta/async/h$13;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 403
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/h$13;->onCompleted(Ljava/lang/Exception;Ljava/net/InetAddress;)V

    return-void
.end method

.method public final onCompleted(Ljava/lang/Exception;Ljava/net/InetAddress;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 407
    iget-object p2, p0, Lcom/koushikdutta/async/h$13;->a:Lcom/koushikdutta/async/a/b;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    .line 408
    iget-object p2, p0, Lcom/koushikdutta/async/h$13;->b:Lcom/koushikdutta/async/b/i;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/h$13;->b:Lcom/koushikdutta/async/b/i;

    iget-object v0, p0, Lcom/koushikdutta/async/h$13;->d:Lcom/koushikdutta/async/h;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/h$13;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {v1, p2, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object p2, p0, Lcom/koushikdutta/async/h$13;->a:Lcom/koushikdutta/async/a/b;

    invoke-static {v0, v1, p2}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/h$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/b/i;->setComplete(Lcom/koushikdutta/async/b/e;)Lcom/koushikdutta/async/b/i;

    return-void
.end method
