.class public final Lio/reactivex/internal/operators/flowable/ci;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ci$b;,
        Lio/reactivex/internal/operators/flowable/ci$c;,
        Lio/reactivex/internal/operators/flowable/ci$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/ah;

.field final d:Z

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/ah;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/ah;",
            "ZI)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 43
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ci;->c:Lio/reactivex/ah;

    .line 44
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/ci;->d:Z

    .line 45
    iput p4, p0, Lio/reactivex/internal/operators/flowable/ci;->e:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci;->c:Lio/reactivex/ah;

    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v0

    .line 52
    instance-of v1, p1, Lio/reactivex/internal/b/a;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ci;->b:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/ci$b;

    check-cast p1, Lio/reactivex/internal/b/a;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ci;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/ci;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/ci$b;-><init>(Lio/reactivex/internal/b/a;Lio/reactivex/ah$c;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ci;->b:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/ci$c;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ci;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/ci;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/ci$c;-><init>(Lorg/b/c;Lio/reactivex/ah$c;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
