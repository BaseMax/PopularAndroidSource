.class final Lio/reactivex/internal/operators/c/cg$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cg;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
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


# direct methods
.method constructor <init>(Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 301
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cg$a;->a:Lio/reactivex/ag;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 312
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/c/cg$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 314
    check-cast v0, Lio/reactivex/internal/operators/c/cg$b;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/c/cg$b;->a(Lio/reactivex/internal/operators/c/cg$a;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 306
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cg$a;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
