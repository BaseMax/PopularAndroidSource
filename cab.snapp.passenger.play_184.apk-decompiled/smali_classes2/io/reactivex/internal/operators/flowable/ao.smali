.class public final Lio/reactivex/internal/operators/flowable/ao;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ao$a;,
        Lio/reactivex/internal/operators/flowable/ao$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;Lio/reactivex/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;TK;>;",
            "Lio/reactivex/e/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ao;->c:Lio/reactivex/e/h;

    .line 33
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ao;->d:Lio/reactivex/e/d;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    instance-of v0, p1, Lio/reactivex/internal/b/a;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lio/reactivex/internal/b/a;

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ao$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ao;->c:Lio/reactivex/e/h;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ao;->d:Lio/reactivex/e/d;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/ao$a;-><init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/h;Lio/reactivex/e/d;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ao$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ao;->c:Lio/reactivex/e/h;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ao;->d:Lio/reactivex/e/d;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/ao$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;Lio/reactivex/e/d;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
