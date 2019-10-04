.class public final Lio/reactivex/internal/operators/a/ai;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/ai$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;"
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

.field final f:Lio/reactivex/e/a;

.field final g:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ai;->a:Lio/reactivex/g;

    .line 40
    iput-object p2, p0, Lio/reactivex/internal/operators/a/ai;->b:Lio/reactivex/e/g;

    .line 41
    iput-object p3, p0, Lio/reactivex/internal/operators/a/ai;->c:Lio/reactivex/e/g;

    .line 42
    iput-object p4, p0, Lio/reactivex/internal/operators/a/ai;->d:Lio/reactivex/e/a;

    .line 43
    iput-object p5, p0, Lio/reactivex/internal/operators/a/ai;->e:Lio/reactivex/e/a;

    .line 44
    iput-object p6, p0, Lio/reactivex/internal/operators/a/ai;->f:Lio/reactivex/e/a;

    .line 45
    iput-object p7, p0, Lio/reactivex/internal/operators/a/ai;->g:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/a/ai$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/a/ai$a;-><init>(Lio/reactivex/internal/operators/a/ai;Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
