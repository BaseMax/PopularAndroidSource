.class public final Lio/reactivex/internal/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/d/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/b/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/d/a$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/d/a$a<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/d/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    new-instance v0, Lio/reactivex/internal/d/a$a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a$a;-><init>()V

    .line 38
    invoke-direct {p0, v0}, Lio/reactivex/internal/d/a;->b(Lio/reactivex/internal/d/a$a;)V

    .line 39
    invoke-direct {p0, v0}, Lio/reactivex/internal/d/a;->a(Lio/reactivex/internal/d/a$a;)Lio/reactivex/internal/d/a$a;

    return-void
.end method

.method private a()Lio/reactivex/internal/d/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/d/a$a<",
            "TT;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/d/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/d/a$a;

    return-object v0
.end method

.method private a(Lio/reactivex/internal/d/a$a;)Lio/reactivex/internal/d/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/d/a$a<",
            "TT;>;)",
            "Lio/reactivex/internal/d/a$a<",
            "TT;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/d/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/internal/d/a$a;

    return-object p1
.end method

.method private b(Lio/reactivex/internal/d/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/d/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/d/a;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/d/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public final isEmpty()Z
    .locals 2

    .line 2127
    iget-object v0, p0, Lio/reactivex/internal/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/d/a$a;

    .line 147
    invoke-direct {p0}, Lio/reactivex/internal/d/a;->a()Lio/reactivex/internal/d/a$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Lio/reactivex/internal/d/a$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/d/a$a;-><init>(Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0, v0}, Lio/reactivex/internal/d/a;->a(Lio/reactivex/internal/d/a$a;)Lio/reactivex/internal/d/a$a;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v0}, Lio/reactivex/internal/d/a$a;->soNext(Lio/reactivex/internal/d/a$a;)V

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null is not a valid element"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0, p2}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Lio/reactivex/internal/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/d/a$a;

    .line 89
    invoke-virtual {v0}, Lio/reactivex/internal/d/a$a;->lvNext()Lio/reactivex/internal/d/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lio/reactivex/internal/d/a$a;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-direct {p0, v1}, Lio/reactivex/internal/d/a;->b(Lio/reactivex/internal/d/a$a;)V

    return-object v0

    .line 96
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/d/a;->a()Lio/reactivex/internal/d/a$a;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 98
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/internal/d/a$a;->lvNext()Lio/reactivex/internal/d/a$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1}, Lio/reactivex/internal/d/a$a;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-direct {p0, v1}, Lio/reactivex/internal/d/a;->b(Lio/reactivex/internal/d/a$a;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
