.class final Lcom/koushikdutta/async/http/spdy/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/koushikdutta/async/k;

.field private final b:Z

.field private final c:Lcom/koushikdutta/async/http/spdy/i$b;

.field private d:Z

.field private final e:Lcom/koushikdutta/async/l;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/k;Z)V
    .locals 1

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    .line 415
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    .line 416
    iput-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->b:Z

    .line 417
    new-instance p1, Lcom/koushikdutta/async/http/spdy/i$b;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/spdy/i$b;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->c:Lcom/koushikdutta/async/http/spdy/i$b;

    return-void
.end method

.method private a(IIBB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/j;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 621
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/j;->a()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/j$a;->a(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/16 v2, 0x3fff

    if-gt p2, v2, :cond_2

    const/high16 v3, -0x80000000

    and-int/2addr v3, p1

    if-nez v3, :cond_1

    const/16 v0, 0x100

    .line 627
    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/2addr p2, v2

    shl-int/lit8 p2, p2, 0x10

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    and-int/lit16 p3, p4, 0xff

    or-int/2addr p2, p3

    .line 628
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    .line 629
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 630
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 631
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    return-void

    :cond_1
    new-array p2, v0, [Ljava/lang/Object;

    .line 626
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 623
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/spdy/j;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method private a(Lcom/koushikdutta/async/l;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3fff

    .line 502
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 503
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0x9

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 504
    :goto_1
    invoke-direct {p0, p2, v0, v2, v1}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    .line 505
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 506
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ZILjava/util/List;)V
    .locals 6
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

    .line 485
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_3

    .line 486
    invoke-static {p3}, Lcom/koushikdutta/async/http/spdy/i$b;->a(Ljava/util/List;)Lcom/koushikdutta/async/l;

    move-result-object p3

    .line 488
    invoke-virtual {p3}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3fff

    .line 489
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v2, 0x1

    int-to-byte v2, p1

    :cond_1
    const/4 p1, 0x1

    .line 493
    invoke-direct {p0, p2, v3, p1, v2}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    .line 494
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p3, p1, v3}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 495
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    .line 497
    invoke-direct {p0, p3, p2}, Lcom/koushikdutta/async/http/spdy/j$c;->a(Lcom/koushikdutta/async/l;I)V

    :cond_2
    return-void

    .line 485
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized ackSettings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    invoke-direct {p0, v2, v2, v0, v1}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    .line 422
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    .line 616
    :try_start_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized connectionPreface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_2

    .line 433
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 434
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/j;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/j;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, ">> CONNECTION %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/koushikdutta/async/http/spdy/j;->b()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/c;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    new-instance v1, Lcom/koushikdutta/async/l;

    invoke-static {}, Lcom/koushikdutta/async/http/spdy/j;->b()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/c;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/l;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 432
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized data(ZILcom/koushikdutta/async/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 529
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_0

    .line 1537
    invoke-virtual {p3}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    .line 1538
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 529
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

.method public final declared-synchronized goAway(ILcom/koushikdutta/async/http/spdy/d;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 581
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_1

    .line 582
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/d;->httpCode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 583
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 587
    invoke-direct {p0, v2, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    const/16 v0, 0x100

    .line 588
    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 590
    iget p1, p2, Lcom/koushikdutta/async/http/spdy/d;->httpCode:I

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 591
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 593
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 582
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 581
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
    .locals 1
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

    .line 459
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 460
    invoke-direct {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/spdy/j$c;->a(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 459
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

    .line 565
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x6

    .line 570
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    const/16 p1, 0x100

    .line 571
    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 572
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 573
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 574
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 575
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p3, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    monitor-exit p0

    return-void

    .line 565
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

.method public final declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 8
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

    monitor-enter p0

    .line 466
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_2

    .line 467
    invoke-static {p3}, Lcom/koushikdutta/async/http/spdy/i$b;->a(Ljava/util/List;)Lcom/koushikdutta/async/l;

    move-result-object p3

    .line 469
    invoke-virtual {p3}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3ffb

    .line 470
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v6, v3, 0x4

    const/4 v7, 0x5

    .line 473
    invoke-direct {p0, p1, v6, v7, v2}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    const/16 v2, 0x2000

    .line 474
    invoke-static {v2}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const v6, 0x7fffffff

    and-int/2addr p2, v6

    .line 475
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 476
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 477
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 478
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p3, p2, v3}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 479
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    cmp-long p2, v0, v4

    if-lez p2, :cond_1

    .line 481
    invoke-direct {p0, p3, p1}, Lcom/koushikdutta/async/http/spdy/j$c;->a(Lcom/koushikdutta/async/l;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :cond_1
    monitor-exit p0

    return-void

    .line 466
    :cond_2
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

.method public final declared-synchronized rstStream(ILcom/koushikdutta/async/http/spdy/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_1

    .line 514
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/d;->spdyRstCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 519
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    const/16 p1, 0x2000

    .line 520
    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 521
    iget p2, p2, Lcom/koushikdutta/async/http/spdy/d;->httpCode:I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 522
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 523
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 514
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 513
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 543
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_4

    .line 2128
    iget v0, p1, Lcom/koushikdutta/async/http/spdy/m;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 548
    invoke-direct {p0, v2, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    const/16 v0, 0x2000

    .line 549
    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 551
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/http/spdy/m;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v2, v1, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    int-to-short v3, v3

    .line 555
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3115
    iget-object v3, p1, Lcom/koushikdutta/async/http/spdy/m;->b:[I

    aget v3, v3, v2

    .line 556
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 559
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    .line 543
    :cond_4
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

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized synReply(ZILjava/util/List;)V
    .locals 1
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

    .line 452
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_0

    .line 453
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/j$c;->a(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit p0

    return-void

    .line 452
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

.method public final declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 0
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

    if-nez p2, :cond_1

    .line 445
    :try_start_0
    iget-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez p2, :cond_0

    .line 446
    invoke-direct {p0, p1, p3, p5}, Lcom/koushikdutta/async/http/spdy/j$c;->a(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 445
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 444
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized windowUpdate(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 599
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/j$c;->d:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 607
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/j$c;->a(IIBB)V

    const/16 p1, 0x100

    .line 608
    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    long-to-int p3, p2

    .line 609
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 610
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 611
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$c;->a:Lcom/koushikdutta/async/k;

    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/j$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {p3, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 602
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    .line 601
    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/spdy/j;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 599
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
