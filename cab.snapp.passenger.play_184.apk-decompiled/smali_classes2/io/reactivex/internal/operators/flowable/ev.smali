.class public final Lio/reactivex/internal/operators/flowable/ev;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ev$a;,
        Lio/reactivex/internal/operators/flowable/ev$b;,
        Lio/reactivex/internal/operators/flowable/ev$d;,
        Lio/reactivex/internal/operators/flowable/ev$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TB;+",
            "Lorg/b/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lorg/b/b;Lio/reactivex/e/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lorg/b/b<",
            "TB;>;",
            "Lio/reactivex/e/h<",
            "-TB;+",
            "Lorg/b/b<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ev;->c:Lorg/b/b;

    .line 47
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ev;->d:Lio/reactivex/e/h;

    .line 48
    iput p4, p0, Lio/reactivex/internal/operators/flowable/ev;->e:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ev$c;

    new-instance v2, Lio/reactivex/k/d;

    invoke-direct {v2, p1}, Lio/reactivex/k/d;-><init>(Lorg/b/c;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ev;->c:Lorg/b/b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ev;->d:Lio/reactivex/e/h;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/ev;->e:I

    invoke-direct {v1, v2, p1, v3, v4}, Lio/reactivex/internal/operators/flowable/ev$c;-><init>(Lorg/b/c;Lorg/b/b;Lio/reactivex/e/h;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
