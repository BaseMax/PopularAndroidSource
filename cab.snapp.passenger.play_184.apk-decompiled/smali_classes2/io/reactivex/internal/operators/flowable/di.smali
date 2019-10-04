.class public final Lio/reactivex/internal/operators/flowable/di;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/di$a;,
        Lio/reactivex/internal/operators/flowable/di$b;,
        Lio/reactivex/internal/operators/flowable/di$d;,
        Lio/reactivex/internal/operators/flowable/di$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Lorg/b/b;Lorg/b/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;",
            "Lorg/b/b<",
            "*>;Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/di;->b:Lorg/b/b;

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/di;->c:Lorg/b/b;

    .line 35
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/di;->d:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/reactivex/k/d;

    invoke-direct {v0, p1}, Lio/reactivex/k/d;-><init>(Lorg/b/c;)V

    .line 41
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/di;->d:Z

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/di;->b:Lorg/b/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/di$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/di;->c:Lorg/b/b;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/di$a;-><init>(Lorg/b/c;Lorg/b/b;)V

    invoke-interface {p1, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void

    .line 44
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/di;->b:Lorg/b/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/di$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/di;->c:Lorg/b/b;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/di$b;-><init>(Lorg/b/c;Lorg/b/b;)V

    invoke-interface {p1, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
