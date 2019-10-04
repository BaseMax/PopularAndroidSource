.class public final Lio/reactivex/internal/operators/flowable/bb;
.super Lio/reactivex/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;",
        "Lio/reactivex/internal/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;ZI)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bb;->a:Lio/reactivex/j;

    .line 49
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bb;->b:Lio/reactivex/e/h;

    .line 50
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/bb;->d:Z

    .line 51
    iput p4, p0, Lio/reactivex/internal/operators/flowable/bb;->c:I

    return-void
.end method


# virtual methods
.method public final fuseToFlowable()Lio/reactivex/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lio/reactivex/internal/operators/flowable/ba;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bb;->a:Lio/reactivex/j;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bb;->b:Lio/reactivex/e/h;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/bb;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/bb;->c:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/ba;-><init>(Lio/reactivex/j;Lio/reactivex/e/h;ZI)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 5

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/bb$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bb;->b:Lio/reactivex/e/h;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/bb;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/bb;->c:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/bb$a;-><init>(Lio/reactivex/d;Lio/reactivex/e/h;ZI)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
