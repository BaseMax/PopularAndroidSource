.class final Lcom/koushikdutta/async/http/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/koushikdutta/async/http/d;

.field final synthetic c:Lcom/koushikdutta/async/http/a$c;

.field final synthetic d:Lcom/koushikdutta/async/http/c/a;

.field final synthetic e:Lcom/koushikdutta/async/http/b$g;

.field final synthetic f:I

.field final synthetic g:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;Lcom/koushikdutta/async/http/b$g;I)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$5;->g:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$5;->b:Lcom/koushikdutta/async/http/d;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$5;->c:Lcom/koushikdutta/async/http/a$c;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$5;->d:Lcom/koushikdutta/async/http/c/a;

    iput-object p5, p0, Lcom/koushikdutta/async/http/a$5;->e:Lcom/koushikdutta/async/http/b$g;

    iput p6, p0, Lcom/koushikdutta/async/http/a$5;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 257
    iget-boolean v2, v0, Lcom/koushikdutta/async/http/a$5;->a:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v2, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {v2}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 260
    new-instance v2, Lcom/koushikdutta/async/a/a$a;

    invoke-direct {v2}, Lcom/koushikdutta/async/a/a$a;-><init>()V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 261
    invoke-interface/range {p2 .. p2}, Lcom/koushikdutta/async/j;->close()V

    .line 262
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "double connect callback"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 265
    iput-boolean v2, v0, Lcom/koushikdutta/async/http/a$5;->a:Z

    .line 267
    iget-object v2, v0, Lcom/koushikdutta/async/http/a$5;->b:Lcom/koushikdutta/async/http/d;

    const-string v3, "socket connected"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 268
    iget-object v2, v0, Lcom/koushikdutta/async/http/a$5;->c:Lcom/koushikdutta/async/http/a$c;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/a$c;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 270
    invoke-interface/range {p2 .. p2}, Lcom/koushikdutta/async/j;->close()V

    :cond_2
    return-void

    .line 275
    :cond_3
    iget-object v2, v0, Lcom/koushikdutta/async/http/a$5;->c:Lcom/koushikdutta/async/http/a$c;

    iget-object v2, v2, Lcom/koushikdutta/async/http/a$c;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 276
    iget-object v2, v0, Lcom/koushikdutta/async/http/a$5;->g:Lcom/koushikdutta/async/http/a;

    iget-object v2, v2, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    iget-object v3, v0, Lcom/koushikdutta/async/http/a$5;->c:Lcom/koushikdutta/async/http/a$c;

    iget-object v3, v3, Lcom/koushikdutta/async/http/a$c;->scheduled:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/h;->removeAllCallbacks(Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 279
    iget-object v4, v0, Lcom/koushikdutta/async/http/a$5;->g:Lcom/koushikdutta/async/http/a;

    iget-object v5, v0, Lcom/koushikdutta/async/http/a$5;->c:Lcom/koushikdutta/async/http/a$c;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/koushikdutta/async/http/a$5;->b:Lcom/koushikdutta/async/http/d;

    iget-object v9, v0, Lcom/koushikdutta/async/http/a$5;->d:Lcom/koushikdutta/async/http/c/a;

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    return-void

    .line 283
    :cond_5
    iget-object v15, v0, Lcom/koushikdutta/async/http/a$5;->e:Lcom/koushikdutta/async/http/b$g;

    iput-object v1, v15, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    .line 284
    iget-object v13, v0, Lcom/koushikdutta/async/http/a$5;->c:Lcom/koushikdutta/async/http/a$c;

    iput-object v1, v13, Lcom/koushikdutta/async/http/a$c;->socket:Lcom/koushikdutta/async/j;

    .line 286
    iget-object v10, v0, Lcom/koushikdutta/async/http/a$5;->g:Lcom/koushikdutta/async/http/a;

    iget-object v11, v0, Lcom/koushikdutta/async/http/a$5;->b:Lcom/koushikdutta/async/http/d;

    iget v12, v0, Lcom/koushikdutta/async/http/a$5;->f:I

    iget-object v14, v0, Lcom/koushikdutta/async/http/a$5;->d:Lcom/koushikdutta/async/http/c/a;

    invoke-static/range {v10 .. v15}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;Lcom/koushikdutta/async/http/b$g;)V

    return-void
.end method
