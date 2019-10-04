.class public final Lio/reactivex/internal/operators/flowable/cx;
.super Lio/reactivex/q;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/cx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;",
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

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cx;->a:Lio/reactivex/j;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cx;->b:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final fuseToFlowable()Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lio/reactivex/internal/operators/flowable/cw;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/cx;->a:Lio/reactivex/j;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cx;->b:Lio/reactivex/e/c;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/cw;-><init>(Lio/reactivex/j;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final source()Lorg/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cx;->a:Lio/reactivex/j;

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cx;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/cx$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cx;->b:Lio/reactivex/e/c;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/cx$a;-><init>(Lio/reactivex/t;Lio/reactivex/e/c;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
