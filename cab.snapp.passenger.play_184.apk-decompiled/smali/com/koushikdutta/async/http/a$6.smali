.class final Lcom/koushikdutta/async/http/a$6;
.super Lcom/koushikdutta/async/http/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/koushikdutta/async/http/a$c;

.field final synthetic e:Lcom/koushikdutta/async/http/d;

.field final synthetic f:Lcom/koushikdutta/async/http/c/a;

.field final synthetic g:Lcom/koushikdutta/async/http/b$g;

.field final synthetic h:I

.field final synthetic i:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;Lcom/koushikdutta/async/http/b$g;I)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iput-object p5, p0, Lcom/koushikdutta/async/http/a$6;->f:Lcom/koushikdutta/async/http/c/a;

    iput-object p6, p0, Lcom/koushikdutta/async/http/a$6;->g:Lcom/koushikdutta/async/http/b$g;

    iput p7, p0, Lcom/koushikdutta/async/http/a$6;->h:I

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/f;-><init>(Lcom/koushikdutta/async/http/d;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 389
    invoke-super {p0}, Lcom/koushikdutta/async/http/f;->a()V

    .line 390
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a$c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a$c;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iget-object v1, v1, Lcom/koushikdutta/async/http/a$c;->scheduled:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received headers:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a$6;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/b;

    .line 401
    iget-object v2, p0, Lcom/koushikdutta/async/http/a$6;->g:Lcom/koushikdutta/async/http/b$g;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/http/b;->onHeadersReceived(Lcom/koushikdutta/async/http/b$d;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final a(Ljava/lang/Exception;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget-object v5, p0, Lcom/koushikdutta/async/http/a$6;->f:Lcom/koushikdutta/async/http/c/a;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    return-void

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    const-string v0, "request completed"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a$c;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/a$c;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->j:Lcom/koushikdutta/async/http/n;

    if-nez p1, :cond_2

    .line 331
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a$c;->scheduled:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/h;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->e:Lcom/koushikdutta/async/h;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iget-object v1, v1, Lcom/koushikdutta/async/http/a$c;->timeoutRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    invoke-static {v2}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/h;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/koushikdutta/async/http/a$c;->scheduled:Ljava/lang/Object;

    .line 335
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b;

    .line 336
    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->g:Lcom/koushikdutta/async/http/b$g;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/b;->onRequestSent(Lcom/koushikdutta/async/http/b$f;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final detachSocket()Lcom/koushikdutta/async/j;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    const-string v1, "Detaching socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a$6;->socket()Lcom/koushikdutta/async/j;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 442
    :cond_0
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 443
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 444
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 445
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/a$6;->a(Lcom/koushikdutta/async/j;)V

    return-object v0
.end method

.method public final report(Ljava/lang/Exception;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    const-string v1, "exception during response"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/d;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a$c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 414
    :cond_1
    instance-of v0, p1, Lcom/koushikdutta/async/d;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    const-string v1, "SSL Exception"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/d;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 416
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/d;

    .line 417
    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/d;->onHandshakeException(Lcom/koushikdutta/async/d;)V

    .line 418
    invoke-virtual {v0}, Lcom/koushikdutta/async/d;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a$6;->socket()Lcom/koushikdutta/async/j;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 424
    :cond_3
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/f;->report(Ljava/lang/Exception;)V

    .line 425
    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 426
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a$6;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 427
    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget-object v6, p0, Lcom/koushikdutta/async/http/a$6;->f:Lcom/koushikdutta/async/http/c/a;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    .line 430
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->g:Lcom/koushikdutta/async/http/b$g;

    iput-object p1, v0, Lcom/koushikdutta/async/http/b$g;->exception:Ljava/lang/Exception;

    .line 431
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b;

    .line 432
    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->g:Lcom/koushikdutta/async/http/b$g;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/b;->onResponseComplete(Lcom/koushikdutta/async/http/b$g;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final setDataEmitter(Lcom/koushikdutta/async/n;)V
    .locals 7

    .line 342
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->g:Lcom/koushikdutta/async/http/b$g;

    iput-object p1, v0, Lcom/koushikdutta/async/http/b$g;->bodyEmitter:Lcom/koushikdutta/async/n;

    .line 343
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b;

    .line 344
    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->g:Lcom/koushikdutta/async/http/b$g;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/b;->onBodyDecoder(Lcom/koushikdutta/async/http/b$b;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->g:Lcom/koushikdutta/async/http/b$g;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$g;->bodyEmitter:Lcom/koushikdutta/async/n;

    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/f;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    .line 349
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->j:Lcom/koushikdutta/async/http/n;

    .line 350
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a$6;->code()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x133

    if-ne v0, v1, :cond_4

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getFollowRedirect()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Location"

    .line 352
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 355
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 357
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "GET"

    .line 365
    :goto_1
    new-instance p1, Lcom/koushikdutta/async/http/d;

    invoke-direct {p1, v0, v1}, Lcom/koushikdutta/async/http/d;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget-wide v0, v0, Lcom/koushikdutta/async/http/d;->g:J

    iput-wide v0, p1, Lcom/koushikdutta/async/http/d;->g:J

    .line 367
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget v0, v0, Lcom/koushikdutta/async/http/d;->f:I

    iput v0, p1, Lcom/koushikdutta/async/http/d;->f:I

    .line 368
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/koushikdutta/async/http/d;->c:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget v0, v0, Lcom/koushikdutta/async/http/d;->d:I

    iput v0, p1, Lcom/koushikdutta/async/http/d;->d:I

    .line 371
    invoke-static {p1}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/d;)V

    .line 372
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    const-string v1, "User-Agent"

    invoke-static {v0, p1, v1}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/d;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    const-string v1, "Range"

    invoke-static {v0, p1, v1}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/d;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    const-string v1, "Redirecting"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logi(Ljava/lang/String;)V

    const-string v0, "Redirected"

    .line 375
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logi(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget v1, p0, Lcom/koushikdutta/async/http/a$6;->h:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iget-object v3, p0, Lcom/koushikdutta/async/http/a$6;->f:Lcom/koushikdutta/async/http/c/a;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    .line 378
    new-instance p1, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {p1}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/a$6;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 361
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    iget-object v4, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget-object v5, p0, Lcom/koushikdutta/async/http/a$6;->f:Lcom/koushikdutta/async/http/c/a;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    return-void

    .line 382
    :cond_4
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Final (post cache response) headers:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a$6;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/koushikdutta/async/http/a$6;->i:Lcom/koushikdutta/async/http/a;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$6;->d:Lcom/koushikdutta/async/http/a$c;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/a$6;->e:Lcom/koushikdutta/async/http/d;

    iget-object v6, p0, Lcom/koushikdutta/async/http/a$6;->f:Lcom/koushikdutta/async/http/c/a;

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/lang/Exception;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/c/a;)V

    return-void
.end method
