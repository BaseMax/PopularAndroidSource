.class final Lio/reactivex/internal/operators/c/ct$d;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
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
.field final a:Lio/reactivex/internal/operators/c/ct$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ct$j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ct$j;Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ct$j<",
            "TT;>;",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 440
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 441
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$d;->a:Lio/reactivex/internal/operators/c/ct$j;

    .line 442
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ct$d;->b:Lio/reactivex/ag;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 452
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ct$d;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ct$d;->d:Z

    .line 455
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$d;->a:Lio/reactivex/internal/operators/c/ct$j;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/c/ct$j;->a(Lio/reactivex/internal/operators/c/ct$d;)V

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lio/reactivex/internal/operators/c/ct$d;->c:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ct$d;->d:Z

    return v0
.end method
