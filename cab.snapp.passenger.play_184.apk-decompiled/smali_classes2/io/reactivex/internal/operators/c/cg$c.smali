.class final Lio/reactivex/internal/operators/c/cg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
            "Lio/reactivex/internal/operators/c/cg$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/cg$b<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cg$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

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

    .line 335
    new-instance v0, Lio/reactivex/internal/operators/c/cg$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/c/cg$a;-><init>(Lio/reactivex/ag;)V

    .line 336
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 341
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cg$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/internal/operators/c/cg$b;

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/cg$b;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/c/cg$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/cg$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/c/cg$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 347
    iget-object v2, p0, Lio/reactivex/internal/operators/c/cg$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, v1

    .line 1215
    :cond_2
    iget-object v1, p1, Lio/reactivex/internal/operators/c/cg$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/c/cg$a;

    .line 1218
    sget-object v2, Lio/reactivex/internal/operators/c/cg$b;->c:[Lio/reactivex/internal/operators/c/cg$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 1222
    :cond_3
    array-length v2, v1

    add-int/lit8 v4, v2, 0x1

    .line 1224
    new-array v4, v4, [Lio/reactivex/internal/operators/c/cg$a;

    .line 1225
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1226
    aput-object v0, v4, v2

    .line 1228
    iget-object v2, p1, Lio/reactivex/internal/operators/c/cg$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 1319
    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/c/cg$a;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1320
    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/c/cg$b;->a(Lio/reactivex/internal/operators/c/cg$a;)V

    :cond_4
    return-void
.end method
