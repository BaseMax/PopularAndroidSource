.class final Lio/reactivex/internal/operators/e/ay$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
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

.field final c:[Lio/reactivex/internal/operators/e/ay$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/e/ay$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/al;ILio/reactivex/e/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TR;>;I",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 82
    iput-object p1, p0, Lio/reactivex/internal/operators/e/ay$b;->a:Lio/reactivex/al;

    .line 83
    iput-object p3, p0, Lio/reactivex/internal/operators/e/ay$b;->b:Lio/reactivex/e/h;

    .line 84
    new-array p1, p2, [Lio/reactivex/internal/operators/e/ay$c;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 86
    new-instance v0, Lio/reactivex/internal/operators/e/ay$c;

    invoke-direct {v0, p0, p3}, Lio/reactivex/internal/operators/e/ay$c;-><init>(Lio/reactivex/internal/operators/e/ay$b;I)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/e/ay$b;->c:[Lio/reactivex/internal/operators/e/ay$c;

    .line 89
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/operators/e/ay$b;->d:[Ljava/lang/Object;

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ay$b;->c:[Lio/reactivex/internal/operators/e/ay$c;

    .line 125
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 127
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/reactivex/internal/operators/e/ay$c;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_1

    .line 130
    aget-object v2, v0, p1

    invoke-virtual {v2}, Lio/reactivex/internal/operators/e/ay$c;->dispose()V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/e/ay$b;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/e/ay$b;->a(I)V

    .line 137
    iget-object p2, p0, Lio/reactivex/internal/operators/e/ay$b;->a:Lio/reactivex/al;

    invoke-interface {p2, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 139
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dispose()V
    .locals 4

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/e/ay$b;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lio/reactivex/internal/operators/e/ay$b;->c:[Lio/reactivex/internal/operators/e/ay$c;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 101
    invoke-virtual {v3}, Lio/reactivex/internal/operators/e/ay$c;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lio/reactivex/internal/operators/e/ay$b;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
