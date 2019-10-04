.class public final Lio/reactivex/internal/operators/flowable/be;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/be$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I


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
            "Lio/reactivex/ao<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/be;->c:Lio/reactivex/e/h;

    .line 48
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/be;->d:Z

    .line 49
    iput p4, p0, Lio/reactivex/internal/operators/flowable/be;->e:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/be$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/be;->c:Lio/reactivex/e/h;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/be;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/be;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/be$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;ZI)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
