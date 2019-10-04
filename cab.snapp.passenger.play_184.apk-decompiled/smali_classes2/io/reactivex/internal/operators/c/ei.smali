.class public final Lio/reactivex/internal/operators/c/ei;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ei$a;,
        Lio/reactivex/internal/operators/c/ei$b;,
        Lio/reactivex/internal/operators/c/ei$d;,
        Lio/reactivex/internal/operators/c/ei$c;
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
        "Lio/reactivex/internal/operators/c/a<",
        "TT;",
        "Lio/reactivex/z<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TB;+",
            "Lio/reactivex/ae<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/ae<",
            "TB;>;",
            "Lio/reactivex/e/h<",
            "-TB;+",
            "Lio/reactivex/ae<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 44
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ei;->b:Lio/reactivex/ae;

    .line 45
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ei;->c:Lio/reactivex/e/h;

    .line 46
    iput p4, p0, Lio/reactivex/internal/operators/c/ei;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ei;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/ei$c;

    new-instance v2, Lio/reactivex/observers/d;

    invoke-direct {v2, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/ag;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/c/ei;->b:Lio/reactivex/ae;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ei;->c:Lio/reactivex/e/h;

    iget v4, p0, Lio/reactivex/internal/operators/c/ei;->d:I

    invoke-direct {v1, v2, p1, v3, v4}, Lio/reactivex/internal/operators/c/ei$c;-><init>(Lio/reactivex/ag;Lio/reactivex/ae;Lio/reactivex/e/h;I)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
