.class public final Lio/reactivex/internal/operators/maybe/v;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/v$b;,
        Lio/reactivex/internal/operators/maybe/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/v;->a:Lio/reactivex/w;

    .line 41
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/v;->b:Lio/reactivex/w;

    .line 42
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/v;->c:Lio/reactivex/e/d;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/maybe/v$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/v;->c:Lio/reactivex/e/d;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/maybe/v$a;-><init>(Lio/reactivex/al;Lio/reactivex/e/d;)V

    .line 48
    invoke-interface {p1, v0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/v;->a:Lio/reactivex/w;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/v;->b:Lio/reactivex/w;

    .line 1073
    iget-object v2, v0, Lio/reactivex/internal/operators/maybe/v$a;->b:Lio/reactivex/internal/operators/maybe/v$b;

    invoke-interface {p1, v2}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    .line 1074
    iget-object p1, v0, Lio/reactivex/internal/operators/maybe/v$a;->c:Lio/reactivex/internal/operators/maybe/v$b;

    invoke-interface {v1, p1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method
