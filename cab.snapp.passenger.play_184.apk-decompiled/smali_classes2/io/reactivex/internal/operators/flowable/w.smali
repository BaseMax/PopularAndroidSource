.class public final Lio/reactivex/internal/operators/flowable/w;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/w$d;,
        Lio/reactivex/internal/operators/flowable/w$e;,
        Lio/reactivex/internal/operators/flowable/w$b;,
        Lio/reactivex/internal/operators/flowable/w$f;,
        Lio/reactivex/internal/operators/flowable/w$c;,
        Lio/reactivex/internal/operators/flowable/w$a;
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
            "Lorg/b/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/w;->c:Lio/reactivex/e/h;

    .line 43
    iput p3, p0, Lio/reactivex/internal/operators/flowable/w;->d:I

    .line 44
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/w;->e:Lio/reactivex/internal/util/ErrorMode;

    return-void
.end method

.method public static subscribe(Lorg/b/c;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)Lorg/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")",
            "Lorg/b/c<",
            "TT;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lio/reactivex/internal/operators/flowable/w$1;->a:[I

    invoke-virtual {p3}, Lio/reactivex/internal/util/ErrorMode;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    .line 55
    new-instance p3, Lio/reactivex/internal/operators/flowable/w$c;

    invoke-direct {p3, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/w$c;-><init>(Lorg/b/c;Lio/reactivex/e/h;I)V

    return-object p3

    .line 53
    :cond_0
    new-instance p3, Lio/reactivex/internal/operators/flowable/w$b;

    invoke-direct {p3, p0, p1, p2, v0}, Lio/reactivex/internal/operators/flowable/w$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;IZ)V

    return-object p3

    .line 51
    :cond_1
    new-instance p3, Lio/reactivex/internal/operators/flowable/w$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Lio/reactivex/internal/operators/flowable/w$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;IZ)V

    return-object p3
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

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w;->b:Lio/reactivex/j;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w;->c:Lio/reactivex/e/h;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/dk;->tryScalarXMapSubscribe(Lorg/b/b;Lorg/b/c;Lio/reactivex/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w;->b:Lio/reactivex/j;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w;->c:Lio/reactivex/e/h;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/w;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/w;->e:Lio/reactivex/internal/util/ErrorMode;

    invoke-static {p1, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/w;->subscribe(Lorg/b/c;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)Lorg/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/j;->subscribe(Lorg/b/c;)V

    return-void
.end method
