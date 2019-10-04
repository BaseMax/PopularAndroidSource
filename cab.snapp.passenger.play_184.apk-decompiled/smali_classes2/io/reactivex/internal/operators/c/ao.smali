.class public final Lio/reactivex/internal/operators/c/ao;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ao$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/a;

.field final e:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ao;->b:Lio/reactivex/e/g;

    .line 35
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ao;->c:Lio/reactivex/e/g;

    .line 36
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ao;->d:Lio/reactivex/e/a;

    .line 37
    iput-object p5, p0, Lio/reactivex/internal/operators/c/ao;->e:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ao;->a:Lio/reactivex/ae;

    new-instance v7, Lio/reactivex/internal/operators/c/ao$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ao;->b:Lio/reactivex/e/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/c/ao;->c:Lio/reactivex/e/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/ao;->d:Lio/reactivex/e/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/c/ao;->e:Lio/reactivex/e/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/ao$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    invoke-interface {v0, v7}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
