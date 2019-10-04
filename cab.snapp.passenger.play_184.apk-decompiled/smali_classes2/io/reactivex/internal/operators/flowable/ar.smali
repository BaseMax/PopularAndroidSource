.class public final Lio/reactivex/internal/operators/flowable/ar;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ar$a;,
        Lio/reactivex/internal/operators/flowable/ar$b;
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
.field final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/e/a;

.field final f:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ar;->c:Lio/reactivex/e/g;

    .line 39
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ar;->d:Lio/reactivex/e/g;

    .line 40
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ar;->e:Lio/reactivex/e/a;

    .line 41
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ar;->f:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    instance-of v0, p1, Lio/reactivex/internal/b/a;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/ar$a;

    move-object v2, p1

    check-cast v2, Lio/reactivex/internal/b/a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ar;->c:Lio/reactivex/e/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ar;->d:Lio/reactivex/e/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ar;->e:Lio/reactivex/e/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/ar;->f:Lio/reactivex/e/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/ar$a;-><init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/ar$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ar;->c:Lio/reactivex/e/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ar;->d:Lio/reactivex/e/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ar;->e:Lio/reactivex/e/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/ar;->f:Lio/reactivex/e/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/ar$b;-><init>(Lorg/b/c;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
