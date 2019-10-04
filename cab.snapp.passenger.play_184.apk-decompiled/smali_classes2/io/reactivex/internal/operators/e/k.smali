.class public final Lio/reactivex/internal/operators/e/k;
.super Lio/reactivex/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;",
            "Lio/reactivex/y<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ai;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ai<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;",
            "Lio/reactivex/y<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/e/k;->a:Lio/reactivex/ai;

    .line 40
    iput-object p2, p0, Lio/reactivex/internal/operators/e/k;->b:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/e/k;->a:Lio/reactivex/ai;

    new-instance v1, Lio/reactivex/internal/operators/e/k$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/e/k;->b:Lio/reactivex/e/h;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/e/k$a;-><init>(Lio/reactivex/t;Lio/reactivex/e/h;)V

    invoke-virtual {v0, v1}, Lio/reactivex/ai;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
