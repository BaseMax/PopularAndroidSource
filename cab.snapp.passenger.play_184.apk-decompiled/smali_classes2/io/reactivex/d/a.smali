.class public abstract Lio/reactivex/d/a;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    return-void
.end method

.method private a()Lio/reactivex/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation

    .line 79
    instance-of v0, p0, Lio/reactivex/internal/operators/flowable/cs;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/operators/flowable/cs;

    .line 82
    new-instance v1, Lio/reactivex/internal/operators/flowable/cr;

    .line 83
    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/cs;->publishSource()Lorg/b/b;

    move-result-object v2

    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/cs;->publishBufferSize()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/flowable/cr;-><init>(Lorg/b/b;I)V

    .line 82
    invoke-static {v1}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/d/a;)Lio/reactivex/d/a;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public autoConnect()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0, v0}, Lio/reactivex/d/a;->autoConnect(I)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public autoConnect(I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 289
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/d/a;->autoConnect(ILio/reactivex/e/g;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public autoConnect(ILio/reactivex/e/g;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 317
    invoke-virtual {p0, p2}, Lio/reactivex/d/a;->connect(Lio/reactivex/e/g;)V

    .line 318
    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/d/a;)Lio/reactivex/d/a;

    move-result-object p1

    return-object p1

    .line 320
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/k;-><init>(Lio/reactivex/d/a;ILio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final connect()Lio/reactivex/b/c;
    .locals 1

    .line 66
    new-instance v0, Lio/reactivex/internal/util/f;

    invoke-direct {v0}, Lio/reactivex/internal/util/f;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Lio/reactivex/d/a;->connect(Lio/reactivex/e/g;)V

    .line 68
    iget-object v0, v0, Lio/reactivex/internal/util/f;->disposable:Lio/reactivex/b/c;

    return-object v0
.end method

.method public abstract connect(Lio/reactivex/e/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public refCount()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lio/reactivex/internal/operators/flowable/da;

    invoke-direct {p0}, Lio/reactivex/d/a;->a()Lio/reactivex/d/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/da;-><init>(Lio/reactivex/d/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final refCount(I)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 132
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/d/a;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final refCount(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 208
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/d/a;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriberCount"

    .line 234
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 235
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 236
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    new-instance v0, Lio/reactivex/internal/operators/flowable/da;

    invoke-direct {p0}, Lio/reactivex/d/a;->a()Lio/reactivex/d/a;

    move-result-object v2

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/da;-><init>(Lio/reactivex/d/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final refCount(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 157
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/d/a;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final refCount(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 182
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/d/a;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method
