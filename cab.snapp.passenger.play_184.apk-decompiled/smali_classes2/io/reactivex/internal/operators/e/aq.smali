.class public final Lio/reactivex/internal/operators/e/aq;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/aq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/ah;


# direct methods
.method public constructor <init>(Lio/reactivex/ao;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/e/aq;->a:Lio/reactivex/ao;

    .line 29
    iput-object p2, p0, Lio/reactivex/internal/operators/e/aq;->b:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lio/reactivex/internal/operators/e/aq$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/e/aq;->a:Lio/reactivex/ao;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/e/aq$a;-><init>(Lio/reactivex/al;Lio/reactivex/ao;)V

    .line 35
    invoke-interface {p1, v0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    .line 37
    iget-object p1, p0, Lio/reactivex/internal/operators/e/aq;->b:Lio/reactivex/ah;

    invoke-virtual {p1, v0}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    move-result-object p1

    .line 39
    iget-object v0, v0, Lio/reactivex/internal/operators/e/aq$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
