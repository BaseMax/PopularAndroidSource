.class public final Lio/reactivex/internal/operators/b/q;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lio/reactivex/e/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/b/q;->a:Lio/reactivex/z;

    .line 48
    iput-object p2, p0, Lio/reactivex/internal/operators/b/q;->b:Lio/reactivex/e/h;

    .line 49
    iput-boolean p3, p0, Lio/reactivex/internal/operators/b/q;->c:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q;->a:Lio/reactivex/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/b/q;->b:Lio/reactivex/e/h;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/b/r;->b(Ljava/lang/Object;Lio/reactivex/e/h;Lio/reactivex/ag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q;->a:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/b/q$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/b/q;->b:Lio/reactivex/e/h;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/b/q;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/b/q$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    :cond_0
    return-void
.end method
