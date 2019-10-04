.class final Lio/reactivex/internal/operators/c/q$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/q$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/q$c;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/q$c;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lio/reactivex/internal/operators/c/q$c$b;->a:Lio/reactivex/internal/operators/c/q$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p2, p0, Lio/reactivex/internal/operators/c/q$c$b;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 379
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c$b;->a:Lio/reactivex/internal/operators/c/q$c;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c$b;->a:Lio/reactivex/internal/operators/c/q$c;

    iget-object v1, v1, Lio/reactivex/internal/operators/c/q$c;->j:Ljava/util/List;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/q$c$b;->b:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 381
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c$b;->a:Lio/reactivex/internal/operators/c/q$c;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c$b;->b:Ljava/util/Collection;

    iget-object v2, v0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    const/4 v3, 0x0

    .line 1217
    invoke-virtual {v0, v1, v3, v2}, Lio/reactivex/internal/operators/c/q$c;->fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/b/c;)V

    return-void

    :catchall_0
    move-exception v1

    .line 381
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
