.class final Lcom/koushikdutta/async/http/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b$g;

.field final synthetic b:Lcom/koushikdutta/async/http/a$c;

.field final synthetic c:Lcom/koushikdutta/async/http/d;

.field final synthetic d:Lcom/koushikdutta/async/http/c/a;

.field final synthetic e:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/b$g;Lcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$4;->e:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$4;->a:Lcom/koushikdutta/async/http/b$g;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$4;->b:Lcom/koushikdutta/async/http/a$c;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$4;->c:Lcom/koushikdutta/async/http/d;

    iput-object p5, p0, Lcom/koushikdutta/async/http/a$4;->d:Lcom/koushikdutta/async/http/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 241
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$4;->a:Lcom/koushikdutta/async/http/b$g;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$g;->socketCancellable:Lcom/koushikdutta/async/b/a;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$4;->a:Lcom/koushikdutta/async/http/b$g;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$g;->socketCancellable:Lcom/koushikdutta/async/b/a;

    invoke-interface {v0}, Lcom/koushikdutta/async/b/a;->cancel()Z

    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$4;->a:Lcom/koushikdutta/async/http/b$g;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$4;->a:Lcom/koushikdutta/async/http/b$g;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/a$4;->e:Lcom/koushikdutta/async/http/a;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$4;->b:Lcom/koushikdutta/async/http/a$c;

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/a$4;->c:Lcom/koushikdutta/async/http/d;

    iget-object v6, p0, Lcom/koushikdutta/async/http/a$4;->d:Lcom/koushikdutta/async/http/c/a;

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    return-void
.end method
