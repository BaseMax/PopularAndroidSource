.class public final Lio/reactivex/internal/operators/maybe/bd;
.super Lio/reactivex/internal/operators/maybe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/bd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
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

.field final g:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/bd;->b:Lio/reactivex/e/g;

    .line 47
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/bd;->c:Lio/reactivex/e/g;

    .line 48
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/bd;->d:Lio/reactivex/e/g;

    .line 49
    iput-object p5, p0, Lio/reactivex/internal/operators/maybe/bd;->e:Lio/reactivex/e/a;

    .line 50
    iput-object p6, p0, Lio/reactivex/internal/operators/maybe/bd;->f:Lio/reactivex/e/a;

    .line 51
    iput-object p7, p0, Lio/reactivex/internal/operators/maybe/bd;->g:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/bd$a;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/maybe/bd$a;-><init>(Lio/reactivex/t;Lio/reactivex/internal/operators/maybe/bd;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method
