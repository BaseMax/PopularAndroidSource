.class final Lio/reactivex/internal/operators/a/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/a/m;

.field private final b:Lio/reactivex/d;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/a/m;Lio/reactivex/d;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/a/m$a;->a:Lio/reactivex/internal/operators/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/a/m$a;->b:Lio/reactivex/d;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/m$a;->a:Lio/reactivex/internal/operators/a/m;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/m;->b:Lio/reactivex/e/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/a/m$a;->b:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    iget-object v1, p0, Lio/reactivex/internal/operators/a/m$a;->b:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 61
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/m$a;->a:Lio/reactivex/internal/operators/a/m;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/m;->b:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 64
    new-instance v1, Lio/reactivex/c/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 67
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/m$a;->b:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/a/m$a;->b:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    return-void
.end method