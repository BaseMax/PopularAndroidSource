.class final Lcom/koushikdutta/async/http/h$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/h$2;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/j;

.field final synthetic b:Lcom/koushikdutta/async/http/h$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/h$2;Lcom/koushikdutta/async/j;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2$1;->b:Lcom/koushikdutta/async/http/h$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h$2;->a:Lcom/koushikdutta/async/a/b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    return-void

    .line 123
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/y;

    invoke-direct {p1}, Lcom/koushikdutta/async/y;-><init>()V

    .line 124
    new-instance v0, Lcom/koushikdutta/async/http/h$2$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/h$2$1$1;-><init>(Lcom/koushikdutta/async/http/h$2$1;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/y;->setLineCallback(Lcom/koushikdutta/async/y$a;)V

    .line 145
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 147
    iget-object p1, p0, Lcom/koushikdutta/async/http/h$2$1;->a:Lcom/koushikdutta/async/j;

    new-instance v0, Lcom/koushikdutta/async/http/h$2$1$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/h$2$1$2;-><init>(Lcom/koushikdutta/async/http/h$2$1;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
