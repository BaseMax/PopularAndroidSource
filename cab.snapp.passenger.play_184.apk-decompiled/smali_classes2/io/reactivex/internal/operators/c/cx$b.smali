.class final Lio/reactivex/internal/operators/c/cx$b;
.super Lio/reactivex/internal/operators/c/cx$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/cx$c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct/range {p0 .. p5}, Lio/reactivex/internal/operators/c/cx$c;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cx$b;->b:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final run()V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cx$b;->b()V

    return-void
.end method
