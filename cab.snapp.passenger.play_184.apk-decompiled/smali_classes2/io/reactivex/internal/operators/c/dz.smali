.class public final Lio/reactivex/internal/operators/c/dz;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dz$a;,
        Lio/reactivex/internal/operators/c/dz$b;,
        Lio/reactivex/internal/operators/c/dz$c;,
        Lio/reactivex/internal/operators/c/dz$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/ae<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TV;>;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dz;->b:Lio/reactivex/ae;

    .line 40
    iput-object p3, p0, Lio/reactivex/internal/operators/c/dz;->c:Lio/reactivex/e/h;

    .line 41
    iput-object p4, p0, Lio/reactivex/internal/operators/c/dz;->d:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz;->d:Lio/reactivex/ae;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/c/dz$c;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/dz;->c:Lio/reactivex/e/h;

    invoke-direct {v0, p1, v3}, Lio/reactivex/internal/operators/c/dz$c;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;)V

    .line 48
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz;->b:Lio/reactivex/ae;

    if-eqz p1, :cond_0

    .line 1124
    new-instance v3, Lio/reactivex/internal/operators/c/dz$a;

    invoke-direct {v3, v1, v2, v0}, Lio/reactivex/internal/operators/c/dz$a;-><init>(JLio/reactivex/internal/operators/c/dz$d;)V

    .line 1125
    iget-object v1, v0, Lio/reactivex/internal/operators/c/dz$c;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1, v3}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    invoke-interface {p1, v3}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 50
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz;->a:Lio/reactivex/ae;

    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 52
    :cond_1
    new-instance v3, Lio/reactivex/internal/operators/c/dz$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/c/dz;->c:Lio/reactivex/e/h;

    invoke-direct {v3, p1, v4, v0}, Lio/reactivex/internal/operators/c/dz$b;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;Lio/reactivex/ae;)V

    .line 53
    invoke-interface {p1, v3}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 54
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz;->b:Lio/reactivex/ae;

    if-eqz p1, :cond_2

    .line 1253
    new-instance v0, Lio/reactivex/internal/operators/c/dz$a;

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/c/dz$a;-><init>(JLio/reactivex/internal/operators/c/dz$d;)V

    .line 1254
    iget-object v1, v3, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1255
    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 55
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz;->a:Lio/reactivex/ae;

    invoke-interface {p1, v3}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
