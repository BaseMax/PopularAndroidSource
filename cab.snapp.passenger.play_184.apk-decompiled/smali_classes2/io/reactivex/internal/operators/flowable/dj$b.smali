.class final Lio/reactivex/internal/operators/flowable/dj$b;
.super Lio/reactivex/internal/operators/flowable/dj$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dj;
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
        "Lio/reactivex/internal/operators/flowable/dj$c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 141
    invoke-direct/range {p0 .. p5}, Lio/reactivex/internal/operators/flowable/dj$c;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$b;->b:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final run()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dj$b;->b()V

    return-void
.end method
