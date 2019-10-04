.class public final Lio/reactivex/j/b;
.super Lio/reactivex/j/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/j/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:[Lio/reactivex/j/b$a;

.field static final b:[Lio/reactivex/j/b$a;


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/j/b$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/j/b$a;

    .line 101
    sput-object v1, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    new-array v0, v0, [Lio/reactivex/j/b$a;

    .line 104
    sput-object v0, Lio/reactivex/j/b;->b:[Lio/reactivex/j/b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lio/reactivex/j/d;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/j/b;->b:[Lio/reactivex/j/b$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/j/b<",
            "TT;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lio/reactivex/j/b;

    invoke-direct {v0}, Lio/reactivex/j/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method final a(Lio/reactivex/j/b$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j/b$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 184
    :cond_0
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/b$a;

    .line 185
    sget-object v1, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/j/b;->b:[Lio/reactivex/j/b$a;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 189
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 192
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

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 205
    sget-object v1, Lio/reactivex/j/b;->b:[Lio/reactivex/j/b$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 207
    new-array v5, v5, [Lio/reactivex/j/b$a;

    .line 208
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 209
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 211
    :goto_2
    iget-object v2, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 266
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lio/reactivex/j/b;->d:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasComplete()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/j/b;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/b$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasThrowable()Z
    .locals 2

    .line 274
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/j/b;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 4

    .line 250
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    if-ne v0, v1, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/b$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 254
    invoke-virtual {v3}, Lio/reactivex/j/b$a;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 235
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    if-ne v0, v1, :cond_0

    .line 237
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 240
    :cond_0
    iput-object p1, p0, Lio/reactivex/j/b;->d:Ljava/lang/Throwable;

    .line 242
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/b$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 243
    invoke-virtual {v3, p1}, Lio/reactivex/j/b$a;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 226
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/b$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 228
    invoke-virtual {v3, p1}, Lio/reactivex/j/b$a;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Lio/reactivex/j/b$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/j/b$a;-><init>(Lio/reactivex/ag;Lio/reactivex/j/b;)V

    .line 135
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1160
    :cond_0
    iget-object v1, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/j/b$a;

    .line 1161
    sget-object v2, Lio/reactivex/j/b;->a:[Lio/reactivex/j/b$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 1165
    :cond_1
    array-length v2, v1

    add-int/lit8 v4, v2, 0x1

    .line 1167
    new-array v4, v4, [Lio/reactivex/j/b$a;

    .line 1168
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1169
    aput-object v0, v4, v2

    .line 1171
    iget-object v2, p0, Lio/reactivex/j/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {v0}, Lio/reactivex/j/b$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 140
    invoke-virtual {p0, v0}, Lio/reactivex/j/b;->a(Lio/reactivex/j/b$a;)V

    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lio/reactivex/j/b;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 145
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 147
    :cond_3
    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    :cond_4
    return-void
.end method
