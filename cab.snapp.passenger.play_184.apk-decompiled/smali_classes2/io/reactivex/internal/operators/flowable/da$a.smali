.class final Lio/reactivex/internal/operators/flowable/da$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/e/g<",
        "Lio/reactivex/b/c;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/da;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/da<",
            "*>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/b/c;

.field c:J

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/da;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/da<",
            "*>;)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 169
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/da$a;->a:Lio/reactivex/internal/operators/flowable/da;

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$a;->a:Lio/reactivex/internal/operators/flowable/da;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/da$a;->e:Z

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/da$a;->a:Lio/reactivex/internal/operators/flowable/da;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    check-cast v1, Lio/reactivex/internal/disposables/e;

    invoke-interface {v1, p1}, Lio/reactivex/internal/disposables/e;->resetIf(Lio/reactivex/b/c;)V

    .line 184
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    check-cast p1, Lio/reactivex/b/c;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/da$a;->accept(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final run()V
    .locals 1

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$a;->a:Lio/reactivex/internal/operators/flowable/da;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/da;->b(Lio/reactivex/internal/operators/flowable/da$a;)V

    return-void
.end method
