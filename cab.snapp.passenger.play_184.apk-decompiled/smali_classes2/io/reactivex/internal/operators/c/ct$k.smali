.class final Lio/reactivex/internal/operators/c/ct$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ae<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/ct$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/internal/operators/c/ct$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ct$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/c/ct$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/ct$j<",
            "TT;>;>;",
            "Lio/reactivex/internal/operators/c/ct$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$k;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 977
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ct$k;->b:Lio/reactivex/internal/operators/c/ct$b;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 986
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$k;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/ct$j;

    if-nez v0, :cond_1

    .line 990
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$k;->b:Lio/reactivex/internal/operators/c/ct$b;

    invoke-interface {v0}, Lio/reactivex/internal/operators/c/ct$b;->call()Lio/reactivex/internal/operators/c/ct$h;

    move-result-object v0

    .line 992
    new-instance v1, Lio/reactivex/internal/operators/c/ct$j;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/c/ct$j;-><init>(Lio/reactivex/internal/operators/c/ct$h;)V

    .line 994
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$k;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1004
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/c/ct$d;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/c/ct$d;-><init>(Lio/reactivex/internal/operators/c/ct$j;Lio/reactivex/ag;)V

    .line 1009
    invoke-interface {p1, v1}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1284
    :cond_2
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/c/ct$d;

    .line 1287
    sget-object v2, Lio/reactivex/internal/operators/c/ct$j;->d:[Lio/reactivex/internal/operators/c/ct$d;

    if-eq p1, v2, :cond_3

    .line 1291
    array-length v2, p1

    add-int/lit8 v3, v2, 0x1

    .line 1292
    new-array v3, v3, [Lio/reactivex/internal/operators/c/ct$d;

    const/4 v4, 0x0

    .line 1293
    invoke-static {p1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1294
    aput-object v1, v3, v2

    .line 1296
    iget-object v2, v0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1015
    :cond_3
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/ct$d;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1016
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/ct$j;->a(Lio/reactivex/internal/operators/c/ct$d;)V

    return-void

    .line 1021
    :cond_4
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ct$j;->a:Lio/reactivex/internal/operators/c/ct$h;

    invoke-interface {p1, v1}, Lio/reactivex/internal/operators/c/ct$h;->replay(Lio/reactivex/internal/operators/c/ct$d;)V

    return-void
.end method
