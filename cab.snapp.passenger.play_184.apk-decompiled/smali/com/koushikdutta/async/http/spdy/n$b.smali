.class final Lcom/koushikdutta/async/http/spdy/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/l;

.field b:Lcom/koushikdutta/async/l;

.field private final c:Lcom/koushikdutta/async/k;

.field private final d:Z

.field private e:Z

.field private f:Lcom/koushikdutta/async/l;

.field private final g:Ljava/util/zip/Deflater;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/k;Z)V
    .locals 1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    .line 370
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->g:Ljava/util/zip/Deflater;

    .line 473
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->a:Lcom/koushikdutta/async/l;

    .line 489
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->b:Lcom/koushikdutta/async/l;

    .line 373
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    .line 374
    iput-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/n$b;->d:Z

    .line 376
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->g:Ljava/util/zip/Deflater;

    sget-object p2, Lcom/koushikdutta/async/http/spdy/n;->a:[B

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/koushikdutta/async/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;)",
            "Lcom/koushikdutta/async/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x2000

    .line 492
    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 493
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 494
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v0, v1, :cond_1

    .line 495
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/g;

    iget-object v5, v5, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    .line 496
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/c;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 497
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/c;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 498
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/g;

    iget-object v5, v5, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    .line 499
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/c;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 500
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/c;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 501
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    div-int/2addr v6, v4

    if-ge v5, v6, :cond_0

    .line 502
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 503
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 504
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 505
    invoke-static {v3}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V

    move-object v3, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 511
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 512
    :goto_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->g:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_3

    .line 513
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 516
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 517
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->g:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v1, v2, v5, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    goto :goto_2

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->g:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v1, v2, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 522
    :goto_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 523
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    goto :goto_1

    .line 525
    :cond_3
    invoke-static {v3}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 527
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->b:Lcom/koushikdutta/async/l;

    return-object p1

    .line 491
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final ackSettings()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 609
    :try_start_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized connectionPreface()V
    .locals 0

    monitor-enter p0

    .line 393
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized data(ZILcom/koushikdutta/async/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1476
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez v0, :cond_2

    .line 1477
    invoke-virtual {p3}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    int-to-long v1, v0

    const-wide/32 v3, 0xffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    const/16 v1, 0x100

    .line 1481
    invoke-static {v1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    .line 1482
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const p2, 0xffffff

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    .line 1483
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1484
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1485
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->a:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/l;->add(Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/l;

    .line 1486
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$b;->a:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 1479
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1476
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized goAway(ILcom/koushikdutta/async/http/spdy/d;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 571
    :try_start_0
    iget-boolean p3, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez p3, :cond_1

    .line 572
    iget p3, p2, Lcom/koushikdutta/async/http/spdy/d;->spdyGoAwayCode:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    const/16 p3, 0x100

    .line 578
    invoke-static {p3}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    const v0, -0x7ffcfff9

    .line 579
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v0, 0x8

    .line 580
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 581
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 582
    iget p1, p2, Lcom/koushikdutta/async/http/spdy/d;->spdyGoAwayCode:I

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 583
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 584
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    .line 573
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 571
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized headers(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 436
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/n$b;->a(Ljava/util/List;)Lcom/koushikdutta/async/l;

    move-result-object p2

    .line 440
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x100

    .line 442
    invoke-static {v1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const v2, -0x7ffcfff8

    .line 443
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x0

    .line 444
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 445
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 446
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 447
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/l;->add(Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    .line 436
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ping(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 554
    :try_start_0
    iget-boolean p3, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez p3, :cond_3

    .line 555
    iget-boolean p3, p0, Lcom/koushikdutta/async/http/spdy/n$b;->d:Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p3, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-ne p1, p3, :cond_2

    const/16 p1, 0x100

    .line 560
    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const p3, -0x7ffcfffa

    .line 561
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p3, 0x4

    .line 562
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 563
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 564
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 565
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    new-array v0, v2, [Ljava/nio/ByteBuffer;

    aput-object p1, v0, v1

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/l;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    .line 556
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "payload != reply"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 554
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final declared-synchronized rstStream(ILcom/koushikdutta/async/http/spdy/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 453
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez v0, :cond_1

    .line 454
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/d;->spdyRstCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x100

    .line 458
    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, -0x7ffcfffd

    .line 459
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    .line 460
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    .line 461
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 462
    iget p1, p2, Lcom/koushikdutta/async/http/spdy/d;->spdyRstCode:I

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 464
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/l;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 454
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 453
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized settings(Lcom/koushikdutta/async/http/spdy/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 532
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez v0, :cond_2

    .line 2128
    iget v0, p1, Lcom/koushikdutta/async/http/spdy/m;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/16 v2, 0x100

    .line 537
    invoke-static {v2}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const v3, -0x7ffcfffc

    .line 538
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/4 v4, 0x0

    or-int/2addr v1, v4

    .line 539
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 540
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 542
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/m;->b(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v5, v0, v3

    or-int/2addr v1, v5

    .line 544
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3115
    iget-object v1, p1, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    aget v1, v1, v0

    .line 545
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 548
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/l;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 532
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized synReply(ZILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez v0, :cond_1

    .line 420
    invoke-direct {p0, p3}, Lcom/koushikdutta/async/http/spdy/n$b;->a(Ljava/util/List;)Lcom/koushikdutta/async/l;

    move-result-object p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 423
    :goto_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x100

    .line 425
    invoke-static {v1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const v2, -0x7ffcfffe

    .line 426
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr p1, v0

    .line 427
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const p1, 0x7fffffff

    and-int/2addr p1, p2

    .line 428
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 429
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 430
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/koushikdutta/async/l;->add(Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 419
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 399
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez v0, :cond_1

    .line 400
    invoke-direct {p0, p5}, Lcom/koushikdutta/async/http/spdy/n$b;->a(Ljava/util/List;)Lcom/koushikdutta/async/l;

    move-result-object p5

    .line 401
    invoke-virtual {p5}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    const/16 p2, 0x100

    .line 406
    invoke-static {p2}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    const v2, -0x7ffcffff

    .line 407
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr p1, v0

    .line 408
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const p1, 0x7fffffff

    and-int/2addr p3, p1

    .line 409
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    and-int/2addr p1, p4

    .line 410
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 411
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 413
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {p3, p2}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/koushikdutta/async/l;->add(Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 399
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized windowUpdate(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 590
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/n$b;->e:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    const/16 v0, 0x100

    .line 598
    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, -0x7ffcfff7

    .line 599
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    .line 600
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 601
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    long-to-int p1, p2

    .line 602
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 603
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 604
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$b;->c:Lcom/koushikdutta/async/k;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$b;->f:Lcom/koushikdutta/async/l;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p2, p3}, Lcom/koushikdutta/async/l;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 592
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 590
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
