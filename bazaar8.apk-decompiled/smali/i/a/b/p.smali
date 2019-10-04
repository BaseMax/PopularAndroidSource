.class public final Li/a/b/p;
.super Ljava/lang/Object;
.source "ConflatedBroadcastChannel.kt"

# interfaces
.implements Li/a/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/p$c;,
        Li/a/b/p$a;,
        Li/a/b/p$d;,
        Li/a/b/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/a/b/h<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final d:Li/a/b/p$a;

.field public static final e:Li/a/c/v;

.field public static final f:Li/a/b/p$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/p$c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Li/a/b/p$b;


# instance fields
.field public volatile _state:Ljava/lang/Object;

.field public volatile _updating:I

.field public volatile onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li/a/b/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/a/b/p$b;-><init>(Lh/f/b/f;)V

    sput-object v0, Li/a/b/p;->g:Li/a/b/p$b;

    .line 1
    new-instance v0, Li/a/b/p$a;

    invoke-direct {v0, v1}, Li/a/b/p$a;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Li/a/b/p;->d:Li/a/b/p$a;

    .line 2
    new-instance v0, Li/a/c/v;

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/p;->e:Li/a/c/v;

    .line 3
    new-instance v0, Li/a/b/p$c;

    sget-object v2, Li/a/b/p;->e:Li/a/c/v;

    invoke-direct {v0, v2, v1}, Li/a/b/p$c;-><init>(Ljava/lang/Object;[Li/a/b/p$d;)V

    sput-object v0, Li/a/b/p;->f:Li/a/b/p$c;

    const-class v0, Li/a/b/p;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Li/a/b/p;

    const-string v1, "_updating"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/b/p;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Li/a/b/p;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/b/p;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Li/a/b/p;->f:Li/a/b/p$c;

    iput-object v0, p0, Li/a/b/p;->_state:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Li/a/b/p;->_updating:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Li/a/b/p;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Li/a/b/p;-><init>()V

    .line 6
    sget-object v0, Li/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v1, Li/a/b/p$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Li/a/b/p$c;-><init>(Ljava/lang/Object;[Li/a/b/p$d;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a(Li/a/b/p;Li/a/b/p$d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/b/p;->a(Li/a/b/p$d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Li/a/b/p$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Li/a/b/p$a;"
        }
    .end annotation

    .line 8
    sget-object v0, Li/a/b/p;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/a/b/p;->_state:Ljava/lang/Object;

    .line 10
    instance-of v3, v0, Li/a/b/p$a;

    if-eqz v3, :cond_1

    check-cast v0, Li/a/b/p$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput v2, p0, Li/a/b/p;->_updating:I

    return-object v0

    .line 12
    :cond_1
    :try_start_1
    instance-of v3, v0, Li/a/b/p$c;

    if-eqz v3, :cond_4

    .line 13
    new-instance v3, Li/a/b/p$c;

    if-eqz v0, :cond_3

    move-object v4, v0

    check-cast v4, Li/a/b/p$c;

    iget-object v4, v4, Li/a/b/p$c;->b:[Li/a/b/p$d;

    invoke-direct {v3, p1, v4}, Li/a/b/p$c;-><init>(Ljava/lang/Object;[Li/a/b/p$d;)V

    .line 14
    sget-object v4, Li/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    check-cast v0, Li/a/b/p$c;

    iget-object v0, v0, Li/a/b/p$c;->b:[Li/a/b/p$d;

    if-eqz v0, :cond_2

    .line 16
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 17
    invoke-virtual {v5, p1}, Li/a/b/p$d;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_2
    iput v2, p0, Li/a/b/p;->_updating:I

    return-object v1

    .line 19
    :cond_3
    :try_start_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 21
    iput v2, p0, Li/a/b/p;->_updating:I

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Li/a/b/p;->a(Ljava/lang/Object;)Li/a/b/p$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Li/a/b/p$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method public final a(Li/a/b/p$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/p$d<",
            "TE;>;)V"
        }
    .end annotation

    .line 22
    :cond_0
    iget-object v0, p0, Li/a/b/p;->_state:Ljava/lang/Object;

    .line 23
    instance-of v1, v0, Li/a/b/p$a;

    if-eqz v1, :cond_1

    return-void

    .line 24
    :cond_1
    instance-of v1, v0, Li/a/b/p$c;

    if-eqz v1, :cond_4

    .line 25
    new-instance v1, Li/a/b/p$c;

    move-object v2, v0

    check-cast v2, Li/a/b/p$c;

    iget-object v3, v2, Li/a/b/p$c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v2, v2, Li/a/b/p$c;->b:[Li/a/b/p$d;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2, p1}, Li/a/b/p;->b([Li/a/b/p$d;Li/a/b/p$d;)[Li/a/b/p$d;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Li/a/b/p$c;-><init>(Ljava/lang/Object;[Li/a/b/p$d;)V

    .line 26
    sget-object v2, Li/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Li/a/b/p;->_state:Ljava/lang/Object;

    instance-of v0, v0, Li/a/b/p$a;

    return v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 4

    .line 29
    :cond_0
    iget-object v0, p0, Li/a/b/p;->_state:Ljava/lang/Object;

    .line 30
    instance-of v1, v0, Li/a/b/p$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 31
    :cond_1
    instance-of v1, v0, Li/a/b/p$c;

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    .line 32
    sget-object v1, Li/a/b/p;->d:Li/a/b/p$a;

    goto :goto_0

    :cond_2
    new-instance v1, Li/a/b/p$a;

    invoke-direct {v1, p1}, Li/a/b/p$a;-><init>(Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    sget-object v3, Li/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    .line 34
    check-cast v0, Li/a/b/p$c;

    iget-object v0, v0, Li/a/b/p$c;->b:[Li/a/b/p$d;

    if-eqz v0, :cond_3

    .line 35
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 36
    invoke-virtual {v3, p1}, Li/a/b/d;->a(Ljava/lang/Throwable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {p0, p1}, Li/a/b/p;->b(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    .line 38
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final a([Li/a/b/p$d;Li/a/b/p$d;)[Li/a/b/p$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li/a/b/p$d<",
            "TE;>;",
            "Li/a/b/p$d<",
            "TE;>;)[",
            "Li/a/b/p$d<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    new-array v0, p1, [Li/a/b/p$d;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    invoke-static {p1, p2}, Lh/a/h;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Li/a/b/p$d;

    return-object p1
.end method

.method public b()Li/a/b/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/t<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/a/b/p$d;

    invoke-direct {v0, p0}, Li/a/b/p$d;-><init>(Li/a/b/p;)V

    .line 2
    :cond_0
    iget-object v1, p0, Li/a/b/p;->_state:Ljava/lang/Object;

    .line 3
    instance-of v2, v1, Li/a/b/p$a;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Li/a/b/p$a;

    iget-object v1, v1, Li/a/b/p$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Li/a/b/d;->a(Ljava/lang/Throwable;)Z

    return-object v0

    .line 5
    :cond_1
    instance-of v2, v1, Li/a/b/p$c;

    if-eqz v2, :cond_4

    .line 6
    move-object v2, v1

    check-cast v2, Li/a/b/p$c;

    iget-object v3, v2, Li/a/b/p$c;->a:Ljava/lang/Object;

    sget-object v4, Li/a/b/p;->e:Li/a/c/v;

    if-eq v3, v4, :cond_2

    .line 7
    invoke-virtual {v0, v3}, Li/a/b/p$d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    new-instance v3, Li/a/b/p$c;

    iget-object v4, v2, Li/a/b/p$c;->a:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v2, v2, Li/a/b/p$c;->b:[Li/a/b/p$d;

    invoke-virtual {p0, v2, v0}, Li/a/b/p;->a([Li/a/b/p$d;Li/a/b/p$d;)[Li/a/b/p$d;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Li/a/b/p$c;-><init>(Ljava/lang/Object;[Li/a/b/p$d;)V

    .line 9
    sget-object v2, Li/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 10
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    .line 18
    iget-object v0, p0, Li/a/b/p;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 19
    sget-object v1, Li/a/b/c;->i:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    sget-object v2, Li/a/b/p;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 20
    invoke-static {v0, v1}, Lh/f/b/o;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast v0, Lh/f/a/b;

    invoke-interface {v0, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b([Li/a/b/p$d;Li/a/b/p$d;)[Li/a/b/p$d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li/a/b/p$d<",
            "TE;>;",
            "Li/a/b/p$d<",
            "TE;>;)[",
            "Li/a/b/p$d<",
            "TE;>;"
        }
    .end annotation

    .line 12
    array-length v0, p1

    .line 13
    invoke-static {p1, p2}, Lh/a/i;->c([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 14
    invoke-static {}, Li/a/K;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-ne v0, v2, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    sub-int/2addr v0, v2

    .line 15
    new-array v0, v0, [Li/a/b/p$d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, v0

    move v5, p2

    .line 16
    invoke-static/range {v1 .. v7}, Lh/a/h;->a([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    move v3, p2

    .line 17
    invoke-static/range {v1 .. v7}, Lh/a/h;->a([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/p;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Li/a/b/p$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Li/a/b/p$c;

    if-eqz v1, :cond_2

    sget-object v1, Li/a/b/p;->e:Li/a/c/v;

    check-cast v0, Li/a/b/p$c;

    iget-object v0, v0, Li/a/b/p$c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2

    .line 4
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
