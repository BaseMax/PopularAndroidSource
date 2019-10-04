.class public final Lio/reactivex/internal/operators/c/bs;
.super Lio/reactivex/z;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;",
        "Lio/reactivex/internal/b/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bs;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bs;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lio/reactivex/internal/operators/c/cz$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/bs;->a:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/c/cz$a;-><init>(Lio/reactivex/ag;Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 35
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/cz$a;->run()V

    return-void
.end method
