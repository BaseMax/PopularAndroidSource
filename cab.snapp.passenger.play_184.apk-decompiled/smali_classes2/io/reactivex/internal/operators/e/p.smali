.class public final Lio/reactivex/internal/operators/e/p;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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

.field final b:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/ao;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "TT;>;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/e/p;->a:Lio/reactivex/ao;

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/e/p;->b:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lio/reactivex/internal/operators/e/p;->a:Lio/reactivex/ao;

    new-instance v1, Lio/reactivex/internal/operators/e/p$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/e/p;->b:Lio/reactivex/e/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/e/p$a;-><init>(Lio/reactivex/al;Lio/reactivex/e/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
