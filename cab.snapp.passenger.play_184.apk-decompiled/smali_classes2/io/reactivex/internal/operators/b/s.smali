.class public final Lio/reactivex/internal/operators/b/s;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/s$a;
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
.field final a:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/b/s;->a:Lio/reactivex/ao;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/b/s;->b:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/b/s$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/b/s;->b:Lio/reactivex/e/h;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/b/s$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;)V

    .line 48
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/b/s;->a:Lio/reactivex/ao;

    invoke-interface {p1, v0}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
