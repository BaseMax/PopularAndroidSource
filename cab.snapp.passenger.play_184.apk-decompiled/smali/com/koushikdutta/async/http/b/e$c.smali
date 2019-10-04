.class Lcom/koushikdutta/async/http/b/e$c;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final synthetic h:Z


# instance fields
.field d:Lcom/koushikdutta/async/http/b/e$g;

.field e:Lcom/koushikdutta/async/l;

.field f:Z

.field g:Ljava/lang/Runnable;

.field private i:Z

.field private j:Lcom/koushikdutta/async/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 414
    const-class v0, Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/b/e$c;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/b/e$g;J)V
    .locals 1

    .line 420
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    .line 416
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->e:Lcom/koushikdutta/async/l;

    .line 418
    new-instance v0, Lcom/koushikdutta/async/e/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/e/a;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->j:Lcom/koushikdutta/async/e/a;

    .line 425
    new-instance v0, Lcom/koushikdutta/async/http/b/e$c$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/b/e$c$1;-><init>(Lcom/koushikdutta/async/http/b/e$c;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->g:Ljava/lang/Runnable;

    .line 421
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$c;->d:Lcom/koushikdutta/async/http/b/e$g;

    .line 422
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/e$c;->j:Lcom/koushikdutta/async/e/a;

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/e/a;->setCurrentAlloc(I)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->e:Lcom/koushikdutta/async/l;

    invoke-super {p0, p0, v0}, Lcom/koushikdutta/async/v;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 435
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e$c;->j:Lcom/koushikdutta/async/e/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/e/a;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 442
    sget-boolean v2, Lcom/koushikdutta/async/http/b/e$c;->h:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 443
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/b/e$c;->d:Lcom/koushikdutta/async/http/b/e$g;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/e$g;->getBody()Ljava/io/FileInputStream;

    move-result-object v2

    .line 444
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 446
    invoke-static {v1}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 447
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$c;->f:Z

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/b/e$c;->report(Ljava/lang/Exception;)V

    return-void

    .line 451
    :cond_3
    iget-object v3, p0, Lcom/koushikdutta/async/http/b/e$c;->j:Lcom/koushikdutta/async/e/a;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/async/e/a;->track(J)V

    .line 452
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 453
    iget-object v2, p0, Lcom/koushikdutta/async/http/b/e$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->e:Lcom/koushikdutta/async/l;

    invoke-super {p0, p0, v0}, Lcom/koushikdutta/async/v;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 461
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-lez v0, :cond_4

    return-void

    .line 465
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$c;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e$c;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/h;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v1

    .line 456
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$c;->f:Z

    .line 457
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/b/e$c;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method final b()V
    .locals 2

    .line 469
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$c;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e$c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 3

    .line 485
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$c;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$c;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/b/e$c$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/b/e$c$2;-><init>(Lcom/koushikdutta/async/http/b/e$c;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$c;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->recycle()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 496
    iget-object v2, p0, Lcom/koushikdutta/async/http/b/e$c;->d:Lcom/koushikdutta/async/http/b/e$g;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/e$g;->getBody()Ljava/io/FileInputStream;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 497
    invoke-super {p0}, Lcom/koushikdutta/async/v;->close()V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$c;->i:Z

    return v0
.end method

.method public report(Ljava/lang/Exception;)V
    .locals 3

    .line 504
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$c;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 506
    iget-object v2, p0, Lcom/koushikdutta/async/http/b/e$c;->d:Lcom/koushikdutta/async/http/b/e$g;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/e$g;->getBody()Ljava/io/FileInputStream;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 507
    invoke-super {p0, p1}, Lcom/koushikdutta/async/v;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$c;->i:Z

    .line 475
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$c;->b()V

    return-void
.end method
