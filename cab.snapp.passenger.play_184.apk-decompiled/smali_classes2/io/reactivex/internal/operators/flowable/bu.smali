.class public final Lio/reactivex/internal/operators/flowable/bu;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT",
            "Left;",
            "+",
            "Lorg/b/b<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lorg/b/b<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lorg/b/b;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT",
            "Left;",
            ">;",
            "Lorg/b/b<",
            "+TTRight;>;",
            "Lio/reactivex/e/h<",
            "-TT",
            "Left;",
            "+",
            "Lorg/b/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lorg/b/b<",
            "TTRightEnd;>;>;",
            "Lio/reactivex/e/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 50
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bu;->c:Lorg/b/b;

    .line 51
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/bu;->d:Lio/reactivex/e/h;

    .line 52
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/bu;->e:Lio/reactivex/e/h;

    .line 53
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/bu;->f:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Lio/reactivex/internal/operators/flowable/bu$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bu;->d:Lio/reactivex/e/h;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bu;->e:Lio/reactivex/e/h;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/bu;->f:Lio/reactivex/e/c;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/bu$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)V

    .line 62
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 64
    new-instance p1, Lio/reactivex/internal/operators/flowable/bo$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/bo$d;-><init>(Lio/reactivex/internal/operators/flowable/bo$b;Z)V

    .line 65
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v1, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 66
    new-instance v1, Lio/reactivex/internal/operators/flowable/bo$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/bo$d;-><init>(Lio/reactivex/internal/operators/flowable/bo$b;Z)V

    .line 67
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu;->b:Lio/reactivex/j;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    .line 70
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bu;->c:Lorg/b/b;

    invoke-interface {p1, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
