.class public final Lio/reactivex/internal/operators/c/bj;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/bj$c;,
        Lio/reactivex/internal/operators/c/bj$b;,
        Lio/reactivex/internal/operators/c/bj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;",
        "Lio/reactivex/f/b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 40
    iput-object p2, p0, Lio/reactivex/internal/operators/c/bj;->b:Lio/reactivex/e/h;

    .line 41
    iput-object p3, p0, Lio/reactivex/internal/operators/c/bj;->c:Lio/reactivex/e/h;

    .line 42
    iput p4, p0, Lio/reactivex/internal/operators/c/bj;->d:I

    .line 43
    iput-boolean p5, p0, Lio/reactivex/internal/operators/c/bj;->e:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/f/b<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bj;->a:Lio/reactivex/ae;

    new-instance v7, Lio/reactivex/internal/operators/c/bj$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/bj;->b:Lio/reactivex/e/h;

    iget-object v4, p0, Lio/reactivex/internal/operators/c/bj;->c:Lio/reactivex/e/h;

    iget v5, p0, Lio/reactivex/internal/operators/c/bj;->d:I

    iget-boolean v6, p0, Lio/reactivex/internal/operators/c/bj;->e:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/bj$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;Lio/reactivex/e/h;IZ)V

    invoke-interface {v0, v7}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
