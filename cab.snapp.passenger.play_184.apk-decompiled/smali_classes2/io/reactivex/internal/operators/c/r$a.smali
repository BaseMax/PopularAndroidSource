.class final Lio/reactivex/internal/operators/c/r$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/c/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/internal/operators/c/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:I

.field e:J

.field volatile f:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/c/r<",
            "TT;>;)V"
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 358
    iput-object p1, p0, Lio/reactivex/internal/operators/c/r$a;->a:Lio/reactivex/ag;

    .line 359
    iput-object p2, p0, Lio/reactivex/internal/operators/c/r$a;->b:Lio/reactivex/internal/operators/c/r;

    .line 360
    iget-object p1, p2, Lio/reactivex/internal/operators/c/r;->h:Lio/reactivex/internal/operators/c/r$b;

    iput-object p1, p0, Lio/reactivex/internal/operators/c/r$a;->c:Lio/reactivex/internal/operators/c/r$b;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 8

    .line 365
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/r$a;->f:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/r$a;->f:Z

    .line 367
    iget-object v1, p0, Lio/reactivex/internal/operators/c/r$a;->b:Lio/reactivex/internal/operators/c/r;

    .line 1172
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/c/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/internal/operators/c/r$a;

    .line 1173
    array-length v3, v2

    if-eqz v3, :cond_4

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    .line 1180
    aget-object v7, v2, v6

    if-ne v7, p0, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v4, :cond_4

    if-ne v3, v0, :cond_3

    .line 1192
    sget-object v3, Lio/reactivex/internal/operators/c/r;->e:[Lio/reactivex/internal/operators/c/r$a;

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v3, -0x1

    .line 1194
    new-array v6, v6, [Lio/reactivex/internal/operators/c/r$a;

    .line 1195
    invoke-static {v2, v5, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v4, 0x1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 1196
    invoke-static {v2, v5, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v6

    .line 1199
    :goto_2
    iget-object v4, v1, Lio/reactivex/internal/operators/c/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/r$a;->f:Z

    return v0
.end method
