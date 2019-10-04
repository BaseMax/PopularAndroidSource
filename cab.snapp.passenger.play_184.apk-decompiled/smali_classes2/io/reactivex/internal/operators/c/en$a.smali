.class final Lio/reactivex/internal/operators/c/en$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final c:[Lio/reactivex/internal/operators/c/en$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/c/en$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final e:Z

.field volatile f:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/c/en$a;->a:Lio/reactivex/ag;

    .line 91
    iput-object p2, p0, Lio/reactivex/internal/operators/c/en$a;->b:Lio/reactivex/e/h;

    .line 92
    new-array p1, p3, [Lio/reactivex/internal/operators/c/en$b;

    iput-object p1, p0, Lio/reactivex/internal/operators/c/en$a;->c:[Lio/reactivex/internal/operators/c/en$b;

    .line 93
    new-array p1, p3, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/operators/c/en$a;->d:[Ljava/lang/Object;

    .line 94
    iput-boolean p4, p0, Lio/reactivex/internal/operators/c/en$a;->e:Z

    return-void
.end method

.method private a()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/en$a;->c()V

    .line 132
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/en$a;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/c/en$a;->c:[Lio/reactivex/internal/operators/c/en$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 137
    invoke-virtual {v3}, Lio/reactivex/internal/operators/c/en$b;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/c/en$a;->c:[Lio/reactivex/internal/operators/c/en$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    iget-object v3, v3, Lio/reactivex/internal/operators/c/en$b;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/en$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/en$a;->f:Z

    .line 118
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/en$a;->b()V

    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/en$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/en$a;->c()V

    :cond_0
    return-void
.end method

.method public final drain()V
    .locals 16

    move-object/from16 v1, p0

    .line 148
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/c/en$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, v1, Lio/reactivex/internal/operators/c/en$a;->c:[Lio/reactivex/internal/operators/c/en$b;

    .line 155
    iget-object v2, v1, Lio/reactivex/internal/operators/c/en$a;->a:Lio/reactivex/ag;

    .line 156
    iget-object v3, v1, Lio/reactivex/internal/operators/c/en$a;->d:[Ljava/lang/Object;

    .line 157
    iget-boolean v4, v1, Lio/reactivex/internal/operators/c/en$a;->e:Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 164
    :cond_1
    :goto_0
    array-length v7, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v9, v7, :cond_c

    aget-object v12, v0, v9

    .line 165
    aget-object v13, v3, v11

    if-nez v13, :cond_a

    .line 166
    iget-boolean v13, v12, Lio/reactivex/internal/operators/c/en$b;->c:Z

    .line 167
    iget-object v14, v12, Lio/reactivex/internal/operators/c/en$b;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v14}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 1219
    :goto_2
    iget-boolean v8, v1, Lio/reactivex/internal/operators/c/en$a;->f:Z

    if-eqz v8, :cond_3

    .line 1220
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/c/en$a;->a()V

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    if-eqz v13, :cond_7

    if-eqz v4, :cond_5

    if-eqz v15, :cond_7

    .line 1227
    iget-object v8, v12, Lio/reactivex/internal/operators/c/en$b;->d:Ljava/lang/Throwable;

    .line 1228
    iput-boolean v5, v1, Lio/reactivex/internal/operators/c/en$a;->f:Z

    .line 1229
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/c/en$a;->a()V

    if-eqz v8, :cond_4

    .line 1231
    invoke-interface {v2, v8}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1233
    :cond_4
    invoke-interface {v2}, Lio/reactivex/ag;->onComplete()V

    goto :goto_3

    .line 1238
    :cond_5
    iget-object v8, v12, Lio/reactivex/internal/operators/c/en$b;->d:Ljava/lang/Throwable;

    if-eqz v8, :cond_6

    .line 1240
    iput-boolean v5, v1, Lio/reactivex/internal/operators/c/en$a;->f:Z

    .line 1241
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/c/en$a;->a()V

    .line 1242
    invoke-interface {v2, v8}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    if-eqz v15, :cond_7

    .line 1246
    iput-boolean v5, v1, Lio/reactivex/internal/operators/c/en$a;->f:Z

    .line 1247
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/c/en$a;->a()V

    .line 1248
    invoke-interface {v2}, Lio/reactivex/ag;->onComplete()V

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_8

    return-void

    :cond_8
    if-nez v15, :cond_9

    .line 174
    aput-object v14, v3, v11

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 179
    :cond_a
    iget-boolean v8, v12, Lio/reactivex/internal/operators/c/en$b;->c:Z

    if-eqz v8, :cond_b

    if-nez v4, :cond_b

    .line 180
    iget-object v8, v12, Lio/reactivex/internal/operators/c/en$b;->d:Ljava/lang/Throwable;

    if-eqz v8, :cond_b

    .line 182
    iput-boolean v5, v1, Lio/reactivex/internal/operators/c/en$a;->f:Z

    .line 183
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/c/en$a;->a()V

    .line 184
    invoke-interface {v2, v8}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    :goto_5
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_c
    if-nez v10, :cond_d

    .line 198
    :try_start_0
    iget-object v7, v1, Lio/reactivex/internal/operators/c/en$a;->b:Lio/reactivex/e/h;

    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The zipper returned a null value"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-interface {v2, v7}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    const/4 v7, 0x0

    .line 208
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 200
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 201
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/c/en$a;->a()V

    .line 202
    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    neg-int v6, v6

    .line 211
    invoke-virtual {v1, v6}, Lio/reactivex/internal/operators/c/en$a;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/en$a;->f:Z

    return v0
.end method

.method public final subscribe([Lio/reactivex/ae;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ae<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/c/en$a;->c:[Lio/reactivex/internal/operators/c/en$b;

    .line 99
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 101
    new-instance v4, Lio/reactivex/internal/operators/c/en$b;

    invoke-direct {v4, p0, p2}, Lio/reactivex/internal/operators/c/en$b;-><init>(Lio/reactivex/internal/operators/c/en$a;I)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/c/en$a;->lazySet(I)V

    .line 105
    iget-object p2, p0, Lio/reactivex/internal/operators/c/en$a;->a:Lio/reactivex/ag;

    invoke-interface {p2, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :goto_1
    if-ge v2, v1, :cond_2

    .line 107
    iget-boolean p2, p0, Lio/reactivex/internal/operators/c/en$a;->f:Z

    if-eqz p2, :cond_1

    return-void

    .line 110
    :cond_1
    aget-object p2, p1, v2

    aget-object v3, v0, v2

    invoke-interface {p2, v3}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
