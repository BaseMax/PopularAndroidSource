.class final Lcom/koushikdutta/async/http/spdy/o$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/o;->wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/a/b;

.field final synthetic c:Lcom/koushikdutta/async/http/spdy/o;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/o;Ljava/lang/String;Lcom/koushikdutta/async/a/b;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$3;->c:Lcom/koushikdutta/async/http/spdy/o;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/o$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/o$3;->b:Lcom/koushikdutta/async/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$3;->c:Lcom/koushikdutta/async/http/spdy/o;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/o;->y:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/o$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/o$b;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/spdy/o$b;->setComplete(Ljava/lang/Exception;)Z

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$3;->b:Lcom/koushikdutta/async/a/b;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    return-void
.end method
