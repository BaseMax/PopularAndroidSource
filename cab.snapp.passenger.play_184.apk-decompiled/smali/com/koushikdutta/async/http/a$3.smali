.class final Lcom/koushikdutta/async/http/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a;->websocket(Lcom/koushikdutta/async/http/d;Ljava/lang/String;Lcom/koushikdutta/async/http/a$h;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/b/i;

.field final synthetic b:Lcom/koushikdutta/async/http/a$h;

.field final synthetic c:Lcom/koushikdutta/async/http/d;

.field final synthetic d:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/a$h;Lcom/koushikdutta/async/http/d;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$3;->d:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$3;->a:Lcom/koushikdutta/async/b/i;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$3;->b:Lcom/koushikdutta/async/http/a$h;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$3;->c:Lcom/koushikdutta/async/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/e;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 670
    iget-object p2, p0, Lcom/koushikdutta/async/http/a$3;->a:Lcom/koushikdutta/async/b/i;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 671
    iget-object p2, p0, Lcom/koushikdutta/async/http/a$3;->b:Lcom/koushikdutta/async/http/a$h;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 672
    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/http/a$h;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/z;)V

    :cond_0
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$3;->c:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/koushikdutta/async/http/ab;->finishHandshake(Lcom/koushikdutta/async/http/n;Lcom/koushikdutta/async/http/e;)Lcom/koushikdutta/async/http/z;

    move-result-object p2

    if-nez p2, :cond_2

    .line 678
    new-instance p1, Lcom/koushikdutta/async/http/aa;

    const-string v0, "Unable to complete websocket handshake"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/aa;-><init>(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$3;->a:Lcom/koushikdutta/async/b/i;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$3;->a:Lcom/koushikdutta/async/b/i;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 686
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$3;->b:Lcom/koushikdutta/async/http/a$h;

    if-eqz v0, :cond_4

    .line 687
    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/a$h;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/z;)V

    :cond_4
    return-void
.end method
