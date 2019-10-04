.class final Lcom/koushikdutta/async/http/b/e$a;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field d:Lcom/koushikdutta/async/http/b/e$h;

.field e:Lcom/koushikdutta/async/l;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/koushikdutta/async/http/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$a;->d:Lcom/koushikdutta/async/http/b/e$h;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e$h;->a()V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/koushikdutta/async/http/b/e$a;->d:Lcom/koushikdutta/async/http/b/e$h;

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .line 395
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$a;->abort()V

    .line 396
    invoke-super {p0}, Lcom/koushikdutta/async/v;->close()V

    return-void
.end method

.method public final commit()V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$a;->d:Lcom/koushikdutta/async/http/b/e$h;

    if-eqz v0, :cond_1

    .line 1814
    iget-object v1, v0, Lcom/koushikdutta/async/http/b/e$h;->c:[Ljava/io/FileOutputStream;

    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 1815
    iget-boolean v1, v0, Lcom/koushikdutta/async/http/b/e$h;->d:Z

    if-nez v1, :cond_0

    .line 1817
    iget-object v1, v0, Lcom/koushikdutta/async/http/b/e$h;->e:Lcom/koushikdutta/async/http/b/e;

    invoke-static {v1}, Lcom/koushikdutta/async/http/b/e;->b(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/e/c;

    move-result-object v1

    iget-object v2, v0, Lcom/koushikdutta/async/http/b/e$h;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/koushikdutta/async/http/b/e$h;->b:[Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/e/c;->commitTempFiles(Ljava/lang/String;[Ljava/io/File;)V

    .line 1818
    iget-object v1, v0, Lcom/koushikdutta/async/http/b/e$h;->e:Lcom/koushikdutta/async/http/b/e;

    invoke-static {v1}, Lcom/koushikdutta/async/http/b/e;->c(Lcom/koushikdutta/async/http/b/e;)I

    const/4 v1, 0x1

    .line 1819
    iput-boolean v1, v0, Lcom/koushikdutta/async/http/b/e$h;->d:Z

    :cond_0
    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/koushikdutta/async/http/b/e$a;->d:Lcom/koushikdutta/async/http/b/e$h;

    :cond_1
    return-void
.end method

.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$a;->e:Lcom/koushikdutta/async/l;

    if-eqz v0, :cond_1

    .line 349
    invoke-super {p0, p1, v0}, Lcom/koushikdutta/async/v;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 351
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$a;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/koushikdutta/async/http/b/e$a;->e:Lcom/koushikdutta/async/l;

    .line 357
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e$a;->d:Lcom/koushikdutta/async/http/b/e$h;

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e$a;->d:Lcom/koushikdutta/async/http/b/e$h;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/b/e$h;->a(I)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 362
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 363
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remove()Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    :try_start_1
    invoke-static {v1, v2}, Lcom/koushikdutta/async/l;->writeOutputStream(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    throw v1

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$a;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 381
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    .line 382
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 378
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$a;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 385
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/v;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 387
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/e$a;->d:Lcom/koushikdutta/async/http/b/e$h;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    if-lez p1, :cond_4

    .line 388
    new-instance p1, Lcom/koushikdutta/async/l;

    invoke-direct {p1}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$a;->e:Lcom/koushikdutta/async/l;

    .line 389
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/e$a;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    :cond_4
    return-void

    .line 381
    :goto_3
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    .line 382
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final report(Ljava/lang/Exception;)V
    .locals 0

    .line 341
    invoke-super {p0, p1}, Lcom/koushikdutta/async/v;->report(Ljava/lang/Exception;)V

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$a;->abort()V

    :cond_0
    return-void
.end method
