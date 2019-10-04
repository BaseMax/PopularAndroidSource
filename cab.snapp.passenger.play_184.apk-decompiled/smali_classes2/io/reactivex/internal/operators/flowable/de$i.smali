.class final Lio/reactivex/internal/operators/flowable/de$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/de$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/de$g<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/de$j<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/de$g<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/de$i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1203
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/de$i;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final subscribe(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1212
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/de$j;

    if-nez v0, :cond_1

    .line 1218
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$i;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/de$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    new-instance v1, Lio/reactivex/internal/operators/flowable/de$j;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/de$j;-><init>(Lio/reactivex/internal/operators/flowable/de$g;)V

    .line 1227
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1220
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1221
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void

    .line 1237
    :cond_1
    :goto_0
    new-instance v1, Lio/reactivex/internal/operators/flowable/de$d;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/flowable/de$d;-><init>(Lio/reactivex/internal/operators/flowable/de$j;Lorg/b/c;)V

    .line 1242
    invoke-interface {p1, v1}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 1302
    :cond_2
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/de$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/de$d;

    .line 1305
    sget-object v2, Lio/reactivex/internal/operators/flowable/de$j;->d:[Lio/reactivex/internal/operators/flowable/de$d;

    if-eq p1, v2, :cond_3

    .line 1309
    array-length v2, p1

    add-int/lit8 v3, v2, 0x1

    .line 1310
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/de$d;

    const/4 v4, 0x0

    .line 1311
    invoke-static {p1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1312
    aput-object v1, v3, v2

    .line 1314
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/de$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1248
    :cond_3
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/de$d;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1249
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/de$j;->a(Lio/reactivex/internal/operators/flowable/de$d;)V

    return-void

    .line 1253
    :cond_4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/de$j;->a()V

    .line 1256
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/de$j;->a:Lio/reactivex/internal/operators/flowable/de$g;

    invoke-interface {p1, v1}, Lio/reactivex/internal/operators/flowable/de$g;->replay(Lio/reactivex/internal/operators/flowable/de$d;)V

    return-void
.end method
