.class public final Lio/reactivex/internal/operators/c/bk;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/bk$c;,
        Lio/reactivex/internal/operators/c/bk$d;,
        Lio/reactivex/internal/operators/c/bk$a;,
        Lio/reactivex/internal/operators/c/bk$b;
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
        "Lio/reactivex/internal/operators/c/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/ae<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lio/reactivex/ae<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/z<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT",
            "Left;",
            ">;",
            "Lio/reactivex/ae<",
            "+TTRight;>;",
            "Lio/reactivex/e/h<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/ae<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lio/reactivex/ae<",
            "TTRightEnd;>;>;",
            "Lio/reactivex/e/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/z<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/c/bk;->b:Lio/reactivex/ae;

    .line 53
    iput-object p3, p0, Lio/reactivex/internal/operators/c/bk;->c:Lio/reactivex/e/h;

    .line 54
    iput-object p4, p0, Lio/reactivex/internal/operators/c/bk;->d:Lio/reactivex/e/h;

    .line 55
    iput-object p5, p0, Lio/reactivex/internal/operators/c/bk;->e:Lio/reactivex/e/c;

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

    .line 61
    new-instance v0, Lio/reactivex/internal/operators/c/bk$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/bk;->c:Lio/reactivex/e/h;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/bk;->d:Lio/reactivex/e/h;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/bk;->e:Lio/reactivex/e/c;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/c/bk$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)V

    .line 64
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 66
    new-instance p1, Lio/reactivex/internal/operators/c/bk$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/c/bk$d;-><init>(Lio/reactivex/internal/operators/c/bk$b;Z)V

    .line 67
    iget-object v1, v0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v1, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 68
    new-instance v1, Lio/reactivex/internal/operators/c/bk$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/c/bk$d;-><init>(Lio/reactivex/internal/operators/c/bk$b;Z)V

    .line 69
    iget-object v0, v0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk;->a:Lio/reactivex/ae;

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/c/bk;->b:Lio/reactivex/ae;

    invoke-interface {p1, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method