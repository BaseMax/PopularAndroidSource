.class public final Lio/reactivex/internal/operators/d/l;
.super Lio/reactivex/parallel/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/d/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation
.end field

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
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/e/a;

.field final f:Lio/reactivex/e/a;

.field final g:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/e/p;

.field final i:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/g<",
            "-",
            "Lorg/b/d;",
            ">;",
            "Lio/reactivex/e/p;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->a:Lio/reactivex/parallel/a;

    const-string p1, "onNext is null"

    .line 56
    invoke-static {p2, p1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->b:Lio/reactivex/e/g;

    const-string p1, "onAfterNext is null"

    .line 57
    invoke-static {p3, p1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->c:Lio/reactivex/e/g;

    const-string p1, "onError is null"

    .line 58
    invoke-static {p4, p1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->d:Lio/reactivex/e/g;

    const-string p1, "onComplete is null"

    .line 59
    invoke-static {p5, p1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->e:Lio/reactivex/e/a;

    const-string p1, "onAfterTerminated is null"

    .line 60
    invoke-static {p6, p1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->f:Lio/reactivex/e/a;

    const-string p1, "onSubscribe is null"

    .line 61
    invoke-static {p7, p1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->g:Lio/reactivex/e/g;

    const-string p1, "onRequest is null"

    .line 62
    invoke-static {p8, p1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/p;

    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->h:Lio/reactivex/e/p;

    const-string p1, "onCancel is null"

    .line 63
    invoke-static {p9, p1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/d/l;->i:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final parallelism()I
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l;->a:Lio/reactivex/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v0

    return v0
.end method

.method public final subscribe([Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/l;->a([Lorg/b/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    array-length v0, p1

    .line 74
    new-array v1, v0, [Lorg/b/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 77
    new-instance v3, Lio/reactivex/internal/operators/d/l$a;

    aget-object v4, p1, v2

    invoke-direct {v3, v4, p0}, Lio/reactivex/internal/operators/d/l$a;-><init>(Lorg/b/c;Lio/reactivex/internal/operators/d/l;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/d/l;->a:Lio/reactivex/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/a;->subscribe([Lorg/b/c;)V

    return-void
.end method
