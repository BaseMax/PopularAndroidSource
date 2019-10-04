.class final Lcom/koushikdutta/async/http/e/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/koushikdutta/async/http/e/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/e;Z)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    iput-boolean p2, p0, Lcom/koushikdutta/async/http/e/e$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/e/e;->a(Ljava/lang/Exception;)V

    return-void

    .line 110
    :cond_0
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/e/e$1;->a:Z

    if-eqz p1, :cond_1

    .line 111
    new-instance p1, Lcom/koushikdutta/async/http/d/c;

    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/e;->b:Lcom/koushikdutta/async/j;

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/d/c;-><init>(Lcom/koushikdutta/async/q;)V

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d/c;->setMaxBuffer(I)V

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    iput-object p1, v0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    iget-object v0, p1, Lcom/koushikdutta/async/http/e/e;->b:Lcom/koushikdutta/async/j;

    iput-object v0, p1, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/e;->j:Lcom/koushikdutta/async/a/a;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/q;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 120
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/koushikdutta/async/http/e/e;->j:Lcom/koushikdutta/async/a/a;

    .line 121
    iget-object p1, p1, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    iget-object v1, v1, Lcom/koushikdutta/async/http/e/e;->f:Lcom/koushikdutta/async/a/g;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 122
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    iput-object v0, p1, Lcom/koushikdutta/async/http/e/e;->f:Lcom/koushikdutta/async/a/g;

    .line 123
    iget-boolean p1, p1, Lcom/koushikdutta/async/http/e/e;->g:Z

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/e/e;->getServer()Lcom/koushikdutta/async/h;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/e/e$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/e/e$1$1;-><init>(Lcom/koushikdutta/async/http/e/e$1;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method
