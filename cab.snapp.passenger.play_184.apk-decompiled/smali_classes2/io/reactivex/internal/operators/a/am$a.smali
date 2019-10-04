.class final Lio/reactivex/internal/operators/a/am$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/am$a$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/b/b;

.field final b:Lio/reactivex/d;

.field final synthetic c:Lio/reactivex/internal/operators/a/am;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/a/am;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/b/b;Lio/reactivex/d;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lio/reactivex/internal/operators/a/am$a;->c:Lio/reactivex/internal/operators/a/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lio/reactivex/internal/operators/a/am$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    iput-object p3, p0, Lio/reactivex/internal/operators/a/am$a;->a:Lio/reactivex/b/b;

    .line 101
    iput-object p4, p0, Lio/reactivex/internal/operators/a/am$a;->b:Lio/reactivex/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a;->a:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->clear()V

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a;->c:Lio/reactivex/internal/operators/a/am;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/am;->e:Lio/reactivex/g;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a;->b:Lio/reactivex/d;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-object v2, p0, Lio/reactivex/internal/operators/a/am$a;->c:Lio/reactivex/internal/operators/a/am;

    iget-wide v2, v2, Lio/reactivex/internal/operators/a/am;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/a/am$a;->c:Lio/reactivex/internal/operators/a/am;

    iget-object v4, v4, Lio/reactivex/internal/operators/a/am;->c:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lio/reactivex/internal/util/h;->timeoutMessage(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a;->c:Lio/reactivex/internal/operators/a/am;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/am;->e:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/a/am$a$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/a/am$a$a;-><init>(Lio/reactivex/internal/operators/a/am$a;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    :cond_1
    return-void
.end method
