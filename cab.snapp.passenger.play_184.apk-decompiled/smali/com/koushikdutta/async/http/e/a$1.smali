.class final Lcom/koushikdutta/async/http/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$1;->a:Lcom/koushikdutta/async/http/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccepted(Lcom/koushikdutta/async/j;)V
    .locals 3

    .line 72
    new-instance v0, Lcom/koushikdutta/async/http/e/a$1$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/e/a$1$1;-><init>(Lcom/koushikdutta/async/http/e/a$1;Lcom/koushikdutta/async/j;)V

    .line 1091
    iput-object p1, v0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    .line 1093
    new-instance v1, Lcom/koushikdutta/async/y;

    invoke-direct {v1}, Lcom/koushikdutta/async/y;-><init>()V

    .line 1094
    iget-object v2, v0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 1095
    iget-object v2, v0, Lcom/koushikdutta/async/http/e/c;->o:Lcom/koushikdutta/async/y$a;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/y;->setLineCallback(Lcom/koushikdutta/async/y$a;)V

    .line 1096
    iget-object v0, v0, Lcom/koushikdutta/async/http/e/c;->m:Lcom/koushikdutta/async/j;

    new-instance v1, Lcom/koushikdutta/async/a/a$a;

    invoke-direct {v1}, Lcom/koushikdutta/async/a/a$a;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 214
    invoke-interface {p1}, Lcom/koushikdutta/async/j;->resume()V

    return-void
.end method

.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1;->a:Lcom/koushikdutta/async/http/e/a;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/e/a;->a(Lcom/koushikdutta/async/http/e/a;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onListening(Lcom/koushikdutta/async/i;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$1;->a:Lcom/koushikdutta/async/http/e/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
