.class final Lcom/koushikdutta/async/http/i$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/i$1$2;->onContinue(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/a;

.field final synthetic b:Lcom/koushikdutta/async/http/i$1$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/i$1$2;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/i$1$2$1;->a:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/i$1;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "internal error during connect to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object v2, v2, Lcom/koushikdutta/async/http/i$1$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lcom/koushikdutta/async/http/i$1;->a:Ljava/lang/Exception;

    .line 228
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 234
    iget-object p2, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p2, p2, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iput-object p1, p2, Lcom/koushikdutta/async/http/i$1;->a:Ljava/lang/Exception;

    .line 235
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/i$1;->isDone()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/i$1;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    invoke-virtual {p1, v1, p2}, Lcom/koushikdutta/async/http/i$1;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 248
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->connectCallback:Lcom/koushikdutta/async/a/b;

    invoke-interface {p1, v1, p2}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    :cond_3
    return-void

    .line 241
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string v0, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1;->e:Lcom/koushikdutta/async/http/i;

    .line 1023
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/j;)V

    .line 243
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1;->e:Lcom/koushikdutta/async/http/i;

    iget-object v0, p0, Lcom/koushikdutta/async/http/i$1$2$1;->b:Lcom/koushikdutta/async/http/i$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/i$1$2;->c:Lcom/koushikdutta/async/http/i$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    .line 2023
    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/d;)V

    return-void
.end method
