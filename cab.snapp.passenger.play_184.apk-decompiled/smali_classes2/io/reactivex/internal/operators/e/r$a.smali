.class final Lio/reactivex/internal/operators/e/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/al<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/e/r;

.field private final b:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/e/r;Lio/reactivex/al;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/e/r$a;->a:Lio/reactivex/internal/operators/e/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lio/reactivex/internal/operators/e/r$a;->b:Lio/reactivex/al;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 68
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/e/r$a;->a:Lio/reactivex/internal/operators/e/r;

    iget-object v0, v0, Lio/reactivex/internal/operators/e/r;->b:Lio/reactivex/e/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lio/reactivex/e/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 71
    new-instance v1, Lio/reactivex/c/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 73
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/e/r$a;->b:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/e/r$a;->b:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/e/r$a;->a:Lio/reactivex/internal/operators/e/r;

    iget-object v0, v0, Lio/reactivex/internal/operators/e/r;->b:Lio/reactivex/e/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lio/reactivex/e/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/e/r$a;->b:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 57
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/e/r$a;->b:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void
.end method