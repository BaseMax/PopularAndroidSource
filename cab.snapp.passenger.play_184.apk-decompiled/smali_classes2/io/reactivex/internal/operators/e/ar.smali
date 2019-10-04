.class public final Lio/reactivex/internal/operators/e/ar;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/ar$b;,
        Lio/reactivex/internal/operators/e/ar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ao;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "TT;>;",
            "Lorg/b/b<",
            "TU;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/e/ar;->a:Lio/reactivex/ao;

    .line 41
    iput-object p2, p0, Lio/reactivex/internal/operators/e/ar;->b:Lorg/b/b;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lio/reactivex/internal/operators/e/ar$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/e/ar$a;-><init>(Lio/reactivex/al;)V

    .line 47
    invoke-interface {p1, v0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/e/ar;->b:Lorg/b/b;

    iget-object v1, v0, Lio/reactivex/internal/operators/e/ar$a;->b:Lio/reactivex/internal/operators/e/ar$b;

    invoke-interface {p1, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 51
    iget-object p1, p0, Lio/reactivex/internal/operators/e/ar;->a:Lio/reactivex/ao;

    invoke-interface {p1, v0}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
