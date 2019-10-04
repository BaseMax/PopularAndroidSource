.class public final Lio/reactivex/internal/operators/c/cu;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lio/reactivex/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/e/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cu;->b:Lio/reactivex/e/d;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 35
    new-instance v0, Lio/reactivex/internal/disposables/f;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/f;-><init>()V

    .line 36
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 38
    new-instance v1, Lio/reactivex/internal/operators/c/cu$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/cu;->b:Lio/reactivex/e/d;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/cu;->a:Lio/reactivex/ae;

    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/internal/operators/c/cu$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/d;Lio/reactivex/internal/disposables/f;Lio/reactivex/ae;)V

    .line 39
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/cu$a;->a()V

    return-void
.end method
