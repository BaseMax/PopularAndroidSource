.class final Lio/reactivex/internal/operators/c/cy$b;
.super Lio/reactivex/internal/operators/c/cy$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cy;
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
        "Lio/reactivex/internal/operators/c/cy$c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/ae<",
            "*>;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/c/cy$c;-><init>(Lio/reactivex/ag;Lio/reactivex/ae;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$b;->c:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method final b()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cy$b;->c()V

    return-void
.end method
