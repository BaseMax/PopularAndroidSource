.class final Lio/reactivex/internal/operators/c/ch$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "[",
        "Lio/reactivex/internal/operators/c/ch$a<",
        "TT;>;>;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# static fields
.field static final d:[Lio/reactivex/internal/operators/c/ch$a;

.field static final e:[Lio/reactivex/internal/operators/c/ch$a;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/ch$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/c/ch$a;

    .line 141
    sput-object v1, Lio/reactivex/internal/operators/c/ch$b;->d:[Lio/reactivex/internal/operators/c/ch$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/c/ch$a;

    .line 144
    sput-object v0, Lio/reactivex/internal/operators/c/ch$b;->e:[Lio/reactivex/internal/operators/c/ch$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/ch$b<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/c/ch$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ch$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 152
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ch$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    sget-object p1, Lio/reactivex/internal/operators/c/ch$b;->d:[Lio/reactivex/internal/operators/c/ch$a;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ch$b;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final add(Lio/reactivex/internal/operators/c/ch$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ch$a<",
            "TT;>;)Z"
        }
    .end annotation

    .line 202
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ch$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/ch$a;

    .line 203
    sget-object v1, Lio/reactivex/internal/operators/c/ch$b;->e:[Lio/reactivex/internal/operators/c/ch$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 206
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 208
    new-array v3, v3, [Lio/reactivex/internal/operators/c/ch$a;

    .line 209
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    aput-object p1, v3, v1

    .line 211
    invoke-virtual {p0, v0, v3}, Lio/reactivex/internal/operators/c/ch$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public final dispose()V
    .locals 2

    .line 159
    sget-object v0, Lio/reactivex/internal/operators/c/ch$b;->e:[Lio/reactivex/internal/operators/c/ch$a;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ch$b;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ch$b;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/c/ch$b;->e:[Lio/reactivex/internal/operators/c/ch$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 4

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 195
    sget-object v0, Lio/reactivex/internal/operators/c/ch$b;->e:[Lio/reactivex/internal/operators/c/ch$a;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ch$b;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/ch$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 196
    iget-object v3, v3, Lio/reactivex/internal/operators/c/ch$a;->a:Lio/reactivex/ag;

    invoke-interface {v3}, Lio/reactivex/ag;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 184
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ch$b;->f:Ljava/lang/Throwable;

    .line 185
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 186
    sget-object v0, Lio/reactivex/internal/operators/c/ch$b;->e:[Lio/reactivex/internal/operators/c/ch$a;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ch$b;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/ch$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 187
    iget-object v3, v3, Lio/reactivex/internal/operators/c/ch$a;->a:Lio/reactivex/ag;

    invoke-interface {v3, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ch$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/ch$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 177
    iget-object v3, v3, Lio/reactivex/internal/operators/c/ch$a;->a:Lio/reactivex/ag;

    invoke-interface {v3, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final remove(Lio/reactivex/internal/operators/c/ch$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ch$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 220
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ch$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/ch$a;

    .line 221
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 228
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    .line 237
    :cond_4
    sget-object v4, Lio/reactivex/internal/operators/c/ch$b;->d:[Lio/reactivex/internal/operators/c/ch$a;

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 239
    new-array v4, v4, [Lio/reactivex/internal/operators/c/ch$a;

    .line 240
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    .line 241
    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    :cond_5
    invoke-virtual {p0, v0, v4}, Lio/reactivex/internal/operators/c/ch$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
