.class public final Lio/reactivex/internal/operators/flowable/cc;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TU;>;"
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

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/b;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cc;->b:Lorg/b/b;

    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cc;->c:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cc;->b:Lorg/b/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ca$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cc;->c:Lio/reactivex/e/h;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/ca$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;)V

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
