.class final Lio/reactivex/internal/operators/flowable/di$b;
.super Lio/reactivex/internal/operators/flowable/di$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/di;
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
        "Lio/reactivex/internal/operators/flowable/di$c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/b/c;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lorg/b/b<",
            "*>;)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/di$c;-><init>(Lorg/b/c;Lorg/b/b;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$b;->c:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method final b()V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/di$b;->c()V

    return-void
.end method
