.class public final Lio/reactivex/internal/operators/flowable/em;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/em$a;,
        Lio/reactivex/internal/operators/flowable/em$b;,
        Lio/reactivex/internal/operators/flowable/em$d;,
        Lio/reactivex/internal/operators/flowable/em$c;
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
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TU;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final e:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lorg/b/b;Lio/reactivex/e/h;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lorg/b/b<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "TV;>;>;",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/em;->c:Lorg/b/b;

    .line 43
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/em;->d:Lio/reactivex/e/h;

    .line 44
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/em;->e:Lorg/b/b;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em;->e:Lorg/b/b;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lio/reactivex/internal/operators/flowable/em$d;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/em;->d:Lio/reactivex/e/h;

    invoke-direct {v0, p1, v3}, Lio/reactivex/internal/operators/flowable/em$d;-><init>(Lorg/b/c;Lio/reactivex/e/h;)V

    .line 51
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 52
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em;->c:Lorg/b/b;

    if-eqz p1, :cond_0

    .line 1130
    new-instance v3, Lio/reactivex/internal/operators/flowable/em$a;

    invoke-direct {v3, v1, v2, v0}, Lio/reactivex/internal/operators/flowable/em$a;-><init>(JLio/reactivex/internal/operators/flowable/em$c;)V

    .line 1131
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/em$d;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1, v3}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-interface {p1, v3}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 53
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 55
    :cond_1
    new-instance v3, Lio/reactivex/internal/operators/flowable/em$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/em;->d:Lio/reactivex/e/h;

    invoke-direct {v3, p1, v4, v0}, Lio/reactivex/internal/operators/flowable/em$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;Lorg/b/b;)V

    .line 56
    invoke-interface {p1, v3}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 57
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em;->c:Lorg/b/b;

    if-eqz p1, :cond_2

    .line 1265
    new-instance v0, Lio/reactivex/internal/operators/flowable/em$a;

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/em$a;-><init>(JLio/reactivex/internal/operators/flowable/em$c;)V

    .line 1266
    iget-object v1, v3, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1267
    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 58
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em;->b:Lio/reactivex/j;

    invoke-virtual {p1, v3}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
