.class public final Lio/reactivex/internal/operators/c/bu;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/bu$a;
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
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bu;->a:Lio/reactivex/ae;

    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/c/bu;->b:Ljava/lang/Object;

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

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bu;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/bu$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/bu;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/c/bu$a;-><init>(Lio/reactivex/al;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
