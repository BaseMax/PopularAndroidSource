.class public final Lio/reactivex/internal/operators/flowable/el;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/el$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/i/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/ah;

.field final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 30
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/el;->c:Lio/reactivex/ah;

    .line 31
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/el;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/i/b<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/el;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/el$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/el;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/el;->c:Lio/reactivex/ah;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/el$a;-><init>(Lorg/b/c;Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
