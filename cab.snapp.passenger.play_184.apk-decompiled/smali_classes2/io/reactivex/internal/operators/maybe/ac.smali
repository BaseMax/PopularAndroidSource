.class public final Lio/reactivex/internal/operators/maybe/ac;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/ac$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/ac;->b:Lio/reactivex/w;

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/ac;->c:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ac;->b:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/ac$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/ac;->c:Lio/reactivex/e/h;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/ac$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method
