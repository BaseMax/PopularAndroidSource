.class public abstract Lio/reactivex/f/a;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    return-void
.end method

.method private a()Lio/reactivex/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 78
    instance-of v0, p0, Lio/reactivex/internal/operators/c/ci;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lio/reactivex/internal/operators/c/ch;

    move-object v1, p0

    check-cast v1, Lio/reactivex/internal/operators/c/ci;

    .line 80
    invoke-interface {v1}, Lio/reactivex/internal/operators/c/ci;->publishSource()Lio/reactivex/ae;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/c/ch;-><init>(Lio/reactivex/ae;)V

    .line 79
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/f/a;)Lio/reactivex/f/a;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public autoConnect()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, v0}, Lio/reactivex/f/a;->autoConnect(I)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public autoConnect(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 261
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/f/a;->autoConnect(ILio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public autoConnect(ILio/reactivex/e/g;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 289
    invoke-virtual {p0, p2}, Lio/reactivex/f/a;->connect(Lio/reactivex/e/g;)V

    .line 290
    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/f/a;)Lio/reactivex/f/a;

    move-result-object p1

    return-object p1

    .line 292
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/c/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/k;-><init>(Lio/reactivex/f/a;ILio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final connect()Lio/reactivex/b/c;
    .locals 1

    .line 64
    new-instance v0, Lio/reactivex/internal/util/f;

    invoke-direct {v0}, Lio/reactivex/internal/util/f;-><init>()V

    .line 65
    invoke-virtual {p0, v0}, Lio/reactivex/f/a;->connect(Lio/reactivex/e/g;)V

    .line 66
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

.method public refCount()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lio/reactivex/internal/operators/c/cp;

    invoke-direct {p0}, Lio/reactivex/f/a;->a()Lio/reactivex/f/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/c/cp;-><init>(Lio/reactivex/f/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final refCount(I)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 121
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/f/a;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final refCount(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 185
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/f/a;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriberCount"

    .line 207
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 208
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 209
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    new-instance v0, Lio/reactivex/internal/operators/c/cp;

    invoke-direct {p0}, Lio/reactivex/f/a;->a()Lio/reactivex/f/a;

    move-result-object v2

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/cp;-><init>(Lio/reactivex/f/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final refCount(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 142
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/f/a;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final refCount(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 163
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/f/a;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
