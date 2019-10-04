.class public final Lio/reactivex/internal/operators/c/w;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
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

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "II)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/c/w;->b:Lio/reactivex/e/h;

    .line 47
    iput-object p3, p0, Lio/reactivex/internal/operators/c/w;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 48
    iput p4, p0, Lio/reactivex/internal/operators/c/w;->d:I

    .line 49
    iput p5, p0, Lio/reactivex/internal/operators/c/w;->e:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w;->a:Lio/reactivex/ae;

    new-instance v7, Lio/reactivex/internal/operators/c/w$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/w;->b:Lio/reactivex/e/h;

    iget v4, p0, Lio/reactivex/internal/operators/c/w;->d:I

    iget v5, p0, Lio/reactivex/internal/operators/c/w;->e:I

    iget-object v6, p0, Lio/reactivex/internal/operators/c/w;->c:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/w$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-interface {v0, v7}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
