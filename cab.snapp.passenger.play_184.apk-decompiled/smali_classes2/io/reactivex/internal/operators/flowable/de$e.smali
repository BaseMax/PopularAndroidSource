.class final Lio/reactivex/internal/operators/flowable/de$e;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/de$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/d/a<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "TU;>;+",
            "Lorg/b/b<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/d/a<",
            "TU;>;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "TU;>;+",
            "Lorg/b/b<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1099
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 1100
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/de$e;->b:Ljava/util/concurrent/Callable;

    .line 1101
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/de$e;->c:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1108
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$e;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The connectableFactory returned null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1117
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/de$e;->c:Lio/reactivex/e/h;

    invoke-interface {v1, v0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null Publisher"

    invoke-static {v1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1124
    new-instance v2, Lio/reactivex/internal/f/v;

    invoke-direct {v2, p1}, Lio/reactivex/internal/f/v;-><init>(Lorg/b/c;)V

    .line 1126
    invoke-interface {v1, v2}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 1128
    new-instance p1, Lio/reactivex/internal/operators/flowable/de$e$a;

    invoke-direct {p1, p0, v2}, Lio/reactivex/internal/operators/flowable/de$e$a;-><init>(Lio/reactivex/internal/operators/flowable/de$e;Lio/reactivex/internal/f/v;)V

    invoke-virtual {v0, p1}, Lio/reactivex/d/a;->connect(Lio/reactivex/e/g;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1119
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1120
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void

    :catchall_1
    move-exception v0

    .line 1110
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1111
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method
