.class final Lcom/koushikdutta/async/http/i$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/i$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/i$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/i$1;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 6

    .line 208
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1;->a:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    new-instance v0, Lcom/koushikdutta/async/http/m;

    const-string v1, "Unable to connect to remote address"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/koushikdutta/async/http/i$1;->a:Ljava/lang/Exception;

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    iget-object v0, p1, Lcom/koushikdutta/async/http/i$1;->a:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/i$1;->setComplete(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    iget-object v0, p1, Lcom/koushikdutta/async/http/i$1;->e:Lcom/koushikdutta/async/http/i;

    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    iget-object v1, p1, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    iget-object v2, p1, Lcom/koushikdutta/async/http/i$1;->c:Landroid/net/Uri;

    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    iget v3, p1, Lcom/koushikdutta/async/http/i$1;->d:I

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iget-object v5, p1, Lcom/koushikdutta/async/http/b$a;->connectCallback:Lcom/koushikdutta/async/a/b;

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/i;->wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/koushikdutta/async/http/i$1$1;->a:Lcom/koushikdutta/async/http/i$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/i$1;->a:Ljava/lang/Exception;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    :cond_1
    return-void
.end method
