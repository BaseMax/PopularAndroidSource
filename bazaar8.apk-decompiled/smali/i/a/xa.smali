.class public Li/a/xa;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Li/a/ra;
.implements Li/a/q;
.implements Li/a/Ga;
.implements Li/a/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/xa$c;,
        Li/a/xa$b;,
        Li/a/xa$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _state:Ljava/lang/Object;

.field public volatile parentHandle:Li/a/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li/a/xa;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Li/a/za;->a()Li/a/Z;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Li/a/za;->b()Li/a/Z;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Li/a/xa;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Li/a/xa;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 66
    :cond_0
    invoke-virtual {p0, p1, p2}, Li/a/xa;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Li/a/xa;Li/a/xa$c;Li/a/p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Li/a/xa;->a(Li/a/xa$c;Li/a/p;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 1

    .line 91
    instance-of v0, p1, Li/a/ma;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    instance-of v0, p1, Li/a/Z;

    if-nez v0, :cond_1

    instance-of v0, p1, Li/a/wa;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Li/a/p;

    if-nez v0, :cond_3

    instance-of v0, p2, Li/a/v;

    if-nez v0, :cond_3

    .line 93
    check-cast p1, Li/a/ma;

    invoke-virtual {p0, p1, p2, p3}, Li/a/xa;->b(Li/a/ma;Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 94
    :cond_3
    check-cast p1, Li/a/ma;

    invoke-virtual {p0, p1, p2, p3}, Li/a/xa;->c(Li/a/ma;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final a(ZZLh/f/a/b;)Li/a/X;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh/h;",
            ">;)",
            "Li/a/X;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v2

    .line 108
    instance-of v3, v2, Li/a/Z;

    if-eqz v3, :cond_3

    .line 109
    move-object v3, v2

    check-cast v3, Li/a/Z;

    invoke-virtual {v3}, Li/a/Z;->s()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p0, p3, p1}, Li/a/xa;->a(Lh/f/a/b;Z)Li/a/wa;

    move-result-object v1

    .line 111
    :goto_1
    sget-object v3, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 112
    :cond_2
    invoke-virtual {p0, v3}, Li/a/xa;->a(Li/a/Z;)V

    goto :goto_0

    .line 113
    :cond_3
    instance-of v3, v2, Li/a/ma;

    if-eqz v3, :cond_f

    .line 114
    move-object v3, v2

    check-cast v3, Li/a/ma;

    invoke-interface {v3}, Li/a/ma;->b()Li/a/Da;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    .line 115
    check-cast v2, Li/a/wa;

    invoke-virtual {p0, v2}, Li/a/xa;->a(Li/a/wa;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_5
    sget-object v4, Li/a/Ea;->a:Li/a/Ea;

    if-eqz p1, :cond_b

    .line 117
    instance-of v5, v2, Li/a/xa$c;

    if-eqz v5, :cond_b

    .line 118
    monitor-enter v2

    .line 119
    :try_start_0
    move-object v5, v2

    check-cast v5, Li/a/xa$c;

    iget-object v5, v5, Li/a/xa$c;->rootCause:Ljava/lang/Throwable;

    if-eqz v5, :cond_6

    .line 120
    instance-of v6, p3, Li/a/p;

    if-eqz v6, :cond_a

    move-object v6, v2

    check-cast v6, Li/a/xa$c;

    iget-boolean v6, v6, Li/a/xa$c;->isCompleting:Z

    if-nez v6, :cond_a

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_2

    .line 121
    :cond_7
    invoke-virtual {p0, p3, p1}, Li/a/xa;->a(Lh/f/a/b;Z)Li/a/wa;

    move-result-object v1

    .line 122
    :goto_2
    invoke-virtual {p0, v2, v3, v1}, Li/a/xa;->a(Ljava/lang/Object;Li/a/Da;Li/a/wa;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_8

    monitor-exit v2

    goto :goto_0

    :cond_8
    if-nez v5, :cond_9

    .line 123
    monitor-exit v2

    return-object v1

    :cond_9
    move-object v4, v1

    .line 124
    :cond_a
    :try_start_1
    sget-object v6, Lh/h;->a:Lh/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_b
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_d

    if-eqz p2, :cond_c

    .line 125
    invoke-interface {p3, v5}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v4

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_4

    .line 126
    :cond_e
    invoke-virtual {p0, p3, p1}, Li/a/xa;->a(Lh/f/a/b;Z)Li/a/wa;

    move-result-object v1

    .line 127
    :goto_4
    invoke-virtual {p0, v2, v3, v1}, Li/a/xa;->a(Ljava/lang/Object;Li/a/Da;Li/a/wa;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_f
    if-eqz p2, :cond_12

    .line 128
    instance-of p1, v2, Li/a/v;

    if-nez p1, :cond_10

    move-object v2, v0

    :cond_10
    check-cast v2, Li/a/v;

    if-eqz v2, :cond_11

    iget-object v0, v2, Li/a/v;->b:Ljava/lang/Throwable;

    .line 129
    :cond_11
    invoke-interface {p3, v0}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_12
    sget-object p1, Li/a/Ea;->a:Li/a/Ea;

    return-object p1
.end method

.method public final a(Li/a/q;)Li/a/o;
    .locals 7

    const-string v0, "child"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v4, Li/a/p;

    invoke-direct {v4, p0, p1}, Li/a/p;-><init>(Li/a/xa;Li/a/q;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/ra$a;->a(Li/a/ra;ZZLh/f/a/b;ILjava/lang/Object;)Li/a/X;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Li/a/o;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Li/a/c/k;)Li/a/p;
    .locals 1

    .line 101
    :goto_0
    invoke-virtual {p1}, Li/a/c/k;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li/a/c/k;->i()Li/a/c/k;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_0
    :goto_1
    invoke-virtual {p1}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Li/a/c/k;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    instance-of v0, p1, Li/a/p;

    if-eqz v0, :cond_2

    check-cast p1, Li/a/p;

    return-object p1

    .line 105
    :cond_2
    instance-of v0, p1, Li/a/Da;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Li/a/ma;)Li/a/p;
    .locals 2

    .line 95
    instance-of v0, p1, Li/a/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Li/a/p;

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Li/a/ma;->b()Li/a/Da;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Li/a/xa;->a(Li/a/c/k;)Li/a/p;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final a(Lh/f/a/b;Z)Li/a/wa;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh/h;",
            ">;Z)",
            "Li/a/wa<",
            "*>;"
        }
    .end annotation

    const-string v0, "Failed requirement."

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    .line 70
    instance-of p2, p1, Li/a/sa;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    check-cast v3, Li/a/sa;

    if-eqz v3, :cond_3

    iget-object p2, v3, Li/a/wa;->d:Li/a/ra;

    if-ne p2, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance v3, Li/a/pa;

    invoke-direct {v3, p0, p1}, Li/a/pa;-><init>(Li/a/ra;Lh/f/a/b;)V

    goto :goto_4

    .line 72
    :cond_4
    instance-of p2, p1, Li/a/wa;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p1

    :goto_2
    check-cast v3, Li/a/wa;

    if-eqz v3, :cond_8

    iget-object p2, v3, Li/a/wa;->d:Li/a/ra;

    if-ne p2, p0, :cond_6

    instance-of p2, v3, Li/a/sa;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_8
    new-instance v3, Li/a/qa;

    invoke-direct {v3, p0, p1}, Li/a/qa;-><init>(Li/a/ra;Lh/f/a/b;)V

    :goto_4
    return-object v3
.end method

.method public final a(Li/a/xa$c;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/xa$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 32
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p1}, Li/a/xa$c;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li/a/xa;->e()Lkotlinx/coroutines/JobCancellationException;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    .line 34
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    .line 35
    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 36
    :goto_1
    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 37
    :cond_5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    :goto_2
    return-object v0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 2

    const-string v0, "$this$toCancellationException"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 69
    :cond_1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Li/a/L;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li/a/ra;)V

    :goto_2
    return-object v0
.end method

.method public final a(Li/a/Da;Ljava/lang/Throwable;)V
    .locals 6

    .line 54
    invoke-virtual {p0, p2}, Li/a/xa;->h(Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {p1}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Li/a/c/k;

    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 57
    instance-of v2, v0, Li/a/sa;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Li/a/wa;

    .line 58
    :try_start_0
    invoke-virtual {v2, p2}, Li/a/z;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 59
    invoke-static {v1, v3}, Lh/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    sget-object v2, Lh/h;->a:Lh/h;

    .line 62
    :cond_1
    :goto_1
    invoke-virtual {v0}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p0, v1}, Li/a/xa;->g(Ljava/lang/Throwable;)V

    .line 64
    :cond_3
    invoke-virtual {p0, p2}, Li/a/xa;->d(Ljava/lang/Throwable;)Z

    return-void

    .line 65
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Li/a/Ga;)V
    .locals 1

    const-string v0, "parentJob"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Li/a/xa;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Li/a/Z;)V
    .locals 2

    .line 74
    new-instance v0, Li/a/Da;

    invoke-direct {v0}, Li/a/Da;-><init>()V

    .line 75
    invoke-virtual {p1}, Li/a/Z;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Li/a/la;

    invoke-direct {v1, v0}, Li/a/la;-><init>(Li/a/Da;)V

    move-object v0, v1

    .line 76
    :goto_0
    sget-object v1, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Li/a/ma;Ljava/lang/Object;I)V
    .locals 4

    .line 45
    iget-object v0, p0, Li/a/xa;->parentHandle:Li/a/o;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Li/a/X;->f()V

    .line 47
    sget-object v0, Li/a/Ea;->a:Li/a/Ea;

    iput-object v0, p0, Li/a/xa;->parentHandle:Li/a/o;

    .line 48
    :cond_0
    instance-of v0, p2, Li/a/v;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    check-cast v0, Li/a/v;

    if-eqz v0, :cond_2

    iget-object v1, v0, Li/a/v;->b:Ljava/lang/Throwable;

    .line 49
    :cond_2
    instance-of v0, p1, Li/a/wa;

    if-eqz v0, :cond_3

    .line 50
    :try_start_0
    move-object v0, p1

    check-cast v0, Li/a/wa;

    invoke-virtual {v0, v1}, Li/a/z;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in completion handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Li/a/xa;->g(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 52
    :cond_3
    invoke-interface {p1}, Li/a/ma;->b()Li/a/Da;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, v1}, Li/a/xa;->b(Li/a/Da;Ljava/lang/Throwable;)V

    .line 53
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Li/a/xa;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public final a(Li/a/ra;)V
    .locals 1

    .line 2
    invoke-static {}, Li/a/K;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/a/xa;->parentHandle:Li/a/o;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 3
    sget-object p1, Li/a/Ea;->a:Li/a/Ea;

    iput-object p1, p0, Li/a/xa;->parentHandle:Li/a/o;

    return-void

    .line 4
    :cond_3
    invoke-interface {p1}, Li/a/ra;->start()Z

    .line 5
    invoke-interface {p1, p0}, Li/a/ra;->a(Li/a/q;)Li/a/o;

    move-result-object p1

    .line 6
    iput-object p1, p0, Li/a/xa;->parentHandle:Li/a/o;

    .line 7
    invoke-virtual {p0}, Li/a/xa;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-interface {p1}, Li/a/X;->f()V

    .line 9
    sget-object p1, Li/a/Ea;->a:Li/a/Ea;

    iput-object p1, p0, Li/a/xa;->parentHandle:Li/a/o;

    :cond_4
    return-void
.end method

.method public final a(Li/a/wa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/wa<",
            "*>;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Li/a/Da;

    invoke-direct {v0}, Li/a/Da;-><init>()V

    invoke-virtual {p1, v0}, Li/a/c/k;->a(Li/a/c/k;)Z

    .line 78
    invoke-virtual {p1}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object v0

    .line 79
    sget-object v1, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Li/a/xa$c;Li/a/p;Ljava/lang/Object;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p0, p2}, Li/a/xa;->a(Li/a/c/k;)Li/a/p;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Li/a/xa;->b(Li/a/xa$c;Li/a/p;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 99
    :cond_1
    invoke-virtual {p0, p1, p3, v1}, Li/a/xa;->a(Li/a/xa$c;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_2
    return-void

    .line 100
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Li/a/c/d;->a(I)Ljava/util/Set;

    move-result-object v0

    .line 40
    invoke-static {p1}, Li/a/c/u;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 41
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 42
    invoke-static {v2}, Li/a/c/u;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    if-eq v2, p1, :cond_1

    if-eq v2, v1, :cond_1

    .line 43
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    invoke-static {p1, v2}, Lh/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Li/a/xa;->c(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final a(Li/a/ma;Ljava/lang/Throwable;)Z
    .locals 5

    .line 85
    invoke-static {}, Li/a/K;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Li/a/xa$c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :cond_2
    :goto_1
    invoke-static {}, Li/a/K;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Li/a/ma;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 87
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Li/a/xa;->b(Li/a/ma;)Li/a/Da;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 88
    new-instance v3, Li/a/xa$c;

    invoke-direct {v3, v0, v2, p2}, Li/a/xa$c;-><init>(Li/a/Da;ZLjava/lang/Throwable;)V

    .line 89
    sget-object v4, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    .line 90
    :cond_5
    invoke-virtual {p0, v0, p2}, Li/a/xa;->a(Li/a/Da;Ljava/lang/Throwable;)V

    return v1

    :cond_6
    return v2
.end method

.method public final a(Li/a/xa$c;Ljava/lang/Object;I)Z
    .locals 7

    .line 10
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_e

    .line 11
    invoke-virtual {p1}, Li/a/xa$c;->d()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_d

    .line 12
    iget-boolean v0, p1, Li/a/xa$c;->isCompleting:Z

    if-eqz v0, :cond_c

    .line 13
    instance-of v0, p2, Li/a/v;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    check-cast v0, Li/a/v;

    if-eqz v0, :cond_2

    iget-object v0, v0, Li/a/v;->b:Ljava/lang/Throwable;

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 14
    :goto_2
    monitor-enter p1

    .line 15
    :try_start_0
    invoke-virtual {p1}, Li/a/xa$c;->c()Z

    move-result v4

    .line 16
    invoke-virtual {p1, v0}, Li/a/xa$c;->b(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 17
    invoke-virtual {p0, p1, v5}, Li/a/xa;->a(Li/a/xa$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 18
    invoke-virtual {p0, v6, v5}, Li/a/xa;->a(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_3
    monitor-exit p1

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    if-ne v6, v0, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    new-instance p2, Li/a/v;

    const/4 v0, 0x2

    invoke-direct {p2, v6, v1, v0, v3}, Li/a/v;-><init>(Ljava/lang/Throwable;ZILh/f/b/f;)V

    :goto_3
    if-eqz v6, :cond_9

    .line 21
    invoke-virtual {p0, v6}, Li/a/xa;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v6}, Li/a/xa;->f(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_9

    if-eqz p2, :cond_8

    .line 22
    move-object v0, p2

    check-cast v0, Li/a/v;

    invoke-virtual {v0}, Li/a/v;->b()Z

    goto :goto_4

    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    if-nez v4, :cond_a

    .line 23
    invoke-virtual {p0, v6}, Li/a/xa;->h(Ljava/lang/Throwable;)V

    .line 24
    :cond_a
    invoke-virtual {p0, p2}, Li/a/xa;->h(Ljava/lang/Object;)V

    .line 25
    sget-object v0, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Li/a/za;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Li/a/xa;->a(Li/a/ma;Ljava/lang/Object;I)V

    return v2

    .line 27
    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li/a/xa;->_state:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", expected: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", update: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    .line 28
    monitor-exit p1

    throw p2

    .line 29
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Li/a/xa;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Li/a/xa;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Li/a/xa;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Li/a/Da;Li/a/wa;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Li/a/Da;",
            "Li/a/wa<",
            "*>;)Z"
        }
    .end annotation

    .line 131
    new-instance v0, Li/a/ya;

    invoke-direct {v0, p3, p3, p0, p1}, Li/a/ya;-><init>(Li/a/c/k;Li/a/c/k;Li/a/xa;Ljava/lang/Object;)V

    .line 132
    :goto_0
    invoke-virtual {p2}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Li/a/c/k;

    .line 133
    invoke-virtual {p1, p3, p2, v0}, Li/a/c/k;->a(Li/a/c/k;Li/a/c/k;Li/a/c/k$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1

    .line 134
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b(Li/a/ma;)Li/a/Da;
    .locals 2

    .line 9
    invoke-interface {p1}, Li/a/ma;->b()Li/a/Da;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Li/a/Z;

    if-eqz v0, :cond_1

    new-instance v0, Li/a/Da;

    invoke-direct {v0}, Li/a/Da;-><init>()V

    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p1, Li/a/wa;

    if-eqz v0, :cond_2

    .line 12
    check-cast p1, Li/a/wa;

    invoke-virtual {p0, p1}, Li/a/xa;->a(Li/a/wa;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lh/f/a/b;)Li/a/X;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh/h;",
            ">;)",
            "Li/a/X;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1, p1}, Li/a/xa;->a(ZZLh/f/a/b;)Li/a/X;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    :cond_0
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 20
    instance-of v1, v0, Li/a/ma;

    if-nez v1, :cond_4

    .line 21
    instance-of v1, v0, Li/a/v;

    if-eqz v1, :cond_3

    .line 22
    check-cast v0, Li/a/v;

    iget-object v0, v0, Li/a/v;->b:Ljava/lang/Throwable;

    .line 23
    invoke-static {}, Li/a/K;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Lh/f/b/i;->a(I)V

    .line 25
    instance-of v1, p1, Lh/c/b/a/c;

    if-nez v1, :cond_1

    throw v0

    .line 26
    :cond_1
    check-cast p1, Lh/c/b/a/c;

    invoke-static {v0, p1}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b/a/c;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 27
    :cond_2
    throw v0

    .line 28
    :cond_3
    invoke-static {v0}, Li/a/za;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_4
    invoke-virtual {p0, v0}, Li/a/xa;->i(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Li/a/xa;->c(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Li/a/Da;Ljava/lang/Throwable;)V
    .locals 6

    .line 31
    invoke-virtual {p1}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Li/a/c/k;

    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 33
    instance-of v2, v0, Li/a/wa;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Li/a/wa;

    .line 34
    :try_start_0
    invoke-virtual {v2, p2}, Li/a/z;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 35
    invoke-static {v1, v3}, Lh/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    sget-object v2, Lh/h;->a:Lh/h;

    .line 38
    :cond_1
    :goto_1
    invoke-virtual {v0}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {p0, v1}, Li/a/xa;->g(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 40
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final b(Li/a/wa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/wa<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 42
    instance-of v1, v0, Li/a/wa;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    .line 43
    :cond_1
    sget-object v1, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Li/a/za;->a()Li/a/Z;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_2
    instance-of v1, v0, Li/a/ma;

    if-eqz v1, :cond_3

    .line 45
    check-cast v0, Li/a/ma;

    invoke-interface {v0}, Li/a/ma;->b()Li/a/Da;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Li/a/c/k;->n()Z

    :cond_3
    return-void
.end method

.method public final b(Li/a/ma;Ljava/lang/Object;I)Z
    .locals 4

    .line 1
    invoke-static {}, Li/a/K;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p1, Li/a/Z;

    if-nez v0, :cond_1

    instance-of v0, p1, Li/a/wa;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_3
    :goto_2
    invoke-static {}, Li/a/K;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p2, Li/a/v;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_6
    :goto_4
    sget-object v0, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Li/a/za;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Li/a/xa;->h(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p2}, Li/a/xa;->h(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Li/a/xa;->a(Li/a/ma;Ljava/lang/Object;I)V

    return v2
.end method

.method public final b(Li/a/xa$c;Li/a/p;Ljava/lang/Object;)Z
    .locals 6

    .line 14
    :goto_0
    iget-object v0, p2, Li/a/p;->e:Li/a/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 15
    new-instance v3, Li/a/xa$b;

    invoke-direct {v3, p0, p1, p2, p3}, Li/a/xa$b;-><init>(Li/a/xa;Li/a/xa$c;Li/a/p;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Li/a/ra$a;->a(Li/a/ra;ZZLh/f/a/b;ILjava/lang/Object;)Li/a/X;

    move-result-object v0

    .line 17
    sget-object v1, Li/a/Ea;->a:Li/a/Ea;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 18
    :cond_0
    invoke-virtual {p0, p2}, Li/a/xa;->a(Li/a/c/k;)Li/a/p;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;I)Z
    .locals 2

    .line 46
    :goto_0
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0, p1, p2}, Li/a/xa;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1

    .line 49
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already complete or completing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "but is being completed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Li/a/xa;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 51
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Li/a/xa;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Li/a/ma;Ljava/lang/Object;I)I
    .locals 7

    .line 2
    invoke-virtual {p0, p1}, Li/a/xa;->b(Li/a/ma;)Li/a/Da;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_b

    .line 3
    instance-of v2, p1, Li/a/xa$c;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Li/a/xa$c;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Li/a/xa$c;

    invoke-direct {v2, v0, v4, v3}, Li/a/xa$c;-><init>(Li/a/Da;ZLjava/lang/Throwable;)V

    .line 4
    :goto_1
    monitor-enter v2

    .line 5
    :try_start_0
    iget-boolean v5, v2, Li/a/xa$c;->isCompleting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    monitor-exit v2

    return v4

    :cond_2
    const/4 v4, 0x1

    .line 6
    :try_start_1
    iput-boolean v4, v2, Li/a/xa$c;->isCompleting:Z

    if-eq v2, p1, :cond_3

    .line 7
    sget-object v5, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_3

    monitor-exit v2

    return v1

    .line 8
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Li/a/xa$c;->d()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_a

    .line 9
    invoke-virtual {v2}, Li/a/xa$c;->c()Z

    move-result v5

    .line 10
    instance-of v6, p2, Li/a/v;

    if-nez v6, :cond_4

    move-object v6, v3

    goto :goto_2

    :cond_4
    move-object v6, p2

    :goto_2
    check-cast v6, Li/a/v;

    if-eqz v6, :cond_5

    iget-object v6, v6, Li/a/v;->b:Ljava/lang/Throwable;

    invoke-virtual {v2, v6}, Li/a/xa$c;->a(Ljava/lang/Throwable;)V

    .line 11
    :cond_5
    iget-object v6, v2, Li/a/xa$c;->rootCause:Ljava/lang/Throwable;

    xor-int/2addr v5, v4

    if-eqz v5, :cond_6

    move-object v3, v6

    .line 12
    :cond_6
    sget-object v5, Lh/h;->a:Lh/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    if-eqz v3, :cond_7

    .line 13
    invoke-virtual {p0, v0, v3}, Li/a/xa;->a(Li/a/Da;Ljava/lang/Throwable;)V

    .line 14
    :cond_7
    invoke-virtual {p0, p1}, Li/a/xa;->a(Li/a/ma;)Li/a/p;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 15
    invoke-virtual {p0, v2, p1, p2}, Li/a/xa;->b(Li/a/xa$c;Li/a/p;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    return p1

    .line 16
    :cond_8
    invoke-virtual {p0, v2, p2, p3}, Li/a/xa;->a(Li/a/xa$c;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_9

    return v4

    :cond_9
    return v1

    :cond_a
    :try_start_3
    const-string p1, "Failed requirement."

    .line 17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v2

    throw p1

    :cond_b
    return v1
.end method

.method public final synthetic c(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    new-instance v0, Li/a/xa$a;

    invoke-static {p1}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Li/a/xa$a;-><init>(Lh/c/b;Li/a/xa;)V

    .line 20
    new-instance v1, Li/a/Ia;

    invoke-direct {v1, p0, v0}, Li/a/Ia;-><init>(Li/a/xa;Li/a/k;)V

    invoke-virtual {p0, v1}, Li/a/xa;->b(Lh/f/a/b;)Li/a/X;

    move-result-object v1

    invoke-static {v0, v1}, Li/a/l;->a(Li/a/j;Li/a/X;)V

    .line 21
    invoke-virtual {v0}, Li/a/k;->h()Ljava/lang/Object;

    move-result-object v0

    .line 22
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lh/c/b/a/f;->c(Lh/c/b;)V

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/xa;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li/a/xa;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 6

    .line 6
    :goto_0
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Li/a/ma;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    instance-of v1, v0, Li/a/xa$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Li/a/xa$c;

    iget-boolean v1, v1, Li/a/xa$c;->isCompleting:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Li/a/v;

    invoke-virtual {p0, p1}, Li/a/xa;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v3, v2, v5, v4}, Li/a/v;-><init>(Ljava/lang/Throwable;ZILh/f/b/f;)V

    .line 9
    invoke-virtual {p0, v0, v1, v2}, Li/a/xa;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected result"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Li/a/xa;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    iget-object v2, p0, Li/a/xa;->parentHandle:Li/a/o;

    if-eqz v2, :cond_4

    .line 4
    sget-object v3, Li/a/Ea;->a:Li/a/Ea;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2, p1}, Li/a/o;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Li/a/xa;->e()Lkotlinx/coroutines/JobCancellationException;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    check-cast p1, Li/a/Ga;

    invoke-interface {p1}, Li/a/Ga;->u()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Lkotlinx/coroutines/JobCancellationException;
    .locals 3

    .line 3
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    const-string v1, "Job was cancelled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li/a/ra;)V

    return-object v0
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 2

    const-string v0, "cause"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Li/a/xa;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li/a/xa;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Li/a/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Li/a/v;

    if-eqz p1, :cond_1

    iget-object v1, p1, Li/a/v;->b:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public fold(Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lh/f/a/c<",
            "-TR;-",
            "Lh/c/e$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Li/a/ra$a;->a(Li/a/ra;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    throw p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Li/a/xa$c;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    .line 4
    monitor-enter v2

    .line 5
    :try_start_0
    move-object v3, v2

    check-cast v3, Li/a/xa$c;

    invoke-virtual {v3}, Li/a/xa$c;->d()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v2

    return v4

    .line 6
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Li/a/xa$c;

    invoke-virtual {v3}, Li/a/xa$c;->c()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Li/a/xa;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 8
    :goto_1
    move-object p1, v2

    check-cast p1, Li/a/xa$c;

    invoke-virtual {p1, v1}, Li/a/xa$c;->a(Ljava/lang/Throwable;)V

    .line 9
    :cond_4
    move-object p1, v2

    check-cast p1, Li/a/xa$c;

    iget-object p1, p1, Li/a/xa$c;->rootCause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    monitor-exit v2

    if-eqz p1, :cond_6

    .line 10
    check-cast v2, Li/a/xa$c;

    invoke-virtual {v2}, Li/a/xa$c;->b()Li/a/Da;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Li/a/xa;->a(Li/a/Da;Ljava/lang/Throwable;)V

    :cond_6
    return v5

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v2

    throw p1

    .line 12
    :cond_7
    instance-of v3, v2, Li/a/ma;

    if-eqz v3, :cond_d

    if-eqz v1, :cond_8

    goto :goto_3

    .line 13
    :cond_8
    invoke-virtual {p0, p1}, Li/a/xa;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 14
    :goto_3
    move-object v3, v2

    check-cast v3, Li/a/ma;

    invoke-interface {v3}, Li/a/ma;->s()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 15
    invoke-virtual {p0, v3, v1}, Li/a/xa;->a(Li/a/ma;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    .line 16
    :cond_9
    new-instance v3, Li/a/v;

    const/4 v6, 0x2

    invoke-direct {v3, v1, v4, v6, v0}, Li/a/v;-><init>(Ljava/lang/Throwable;ZILh/f/b/f;)V

    invoke-virtual {p0, v2, v3, v4}, Li/a/xa;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_c

    if-eq v3, v5, :cond_b

    if-eq v3, v6, :cond_b

    const/4 v2, 0x3

    if-ne v3, v2, :cond_a

    goto :goto_0

    .line 17
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected result"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return v5

    .line 18
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot happen in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return v4
.end method

.method public get(Lh/c/e$c;)Lh/c/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh/c/e$b;",
            ">(",
            "Lh/c/e$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Li/a/ra$a;->a(Li/a/ra;Lh/c/e$c;)Lh/c/e$b;

    move-result-object p1

    return-object p1
.end method

.method public final getChildren()Lh/j/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/j/d<",
            "Li/a/ra;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Li/a/xa;Lh/c/b;)V

    invoke-static {v0}, Lh/j/h;->b(Lh/f/a/c;)Lh/j/d;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Lh/c/e$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/c/e$c<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/a/ra;->c:Li/a/ra$b;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Li/a/xa;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Li/a/c/q;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Li/a/c/q;

    invoke-virtual {v0, p0}, Li/a/c/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 4

    .line 2
    instance-of v0, p1, Li/a/Z;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p1

    check-cast v0, Li/a/Z;

    invoke-virtual {v0}, Li/a/Z;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 4
    :cond_0
    sget-object v0, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Li/a/za;->a()Li/a/Z;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Li/a/xa;->l()V

    return v2

    .line 6
    :cond_2
    instance-of v0, p1, Li/a/la;

    if-eqz v0, :cond_4

    .line 7
    sget-object v0, Li/a/xa;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Li/a/la;

    invoke-virtual {v3}, Li/a/la;->b()Li/a/Da;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-virtual {p0}, Li/a/xa;->l()V

    return v2

    :cond_4
    return v3
.end method

.method public final i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Li/a/ma;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Li/a/xa$c;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Li/a/xa$c;

    invoke-virtual {p1}, Li/a/xa$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p1, p1, Li/a/xa$c;->isCompleting:Z

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Li/a/ma;

    if-eqz v0, :cond_3

    check-cast p1, Li/a/ma;

    invoke-interface {p1}, Li/a/ma;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, p1, Li/a/v;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Li/a/L;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li/a/xa;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Li/a/xa;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public minusKey(Lh/c/e$c;)Lh/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/e$c<",
            "*>;)",
            "Lh/c/e;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Li/a/ra$a;->b(Li/a/ra;Lh/c/e$c;)Lh/c/e;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lh/c/e;)Lh/c/e;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Li/a/ra$a;->a(Li/a/ra;Lh/c/e;)Lh/c/e;

    move-result-object p1

    return-object p1
.end method

.method public s()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Li/a/ma;

    if-eqz v1, :cond_0

    check-cast v0, Li/a/ma;

    invoke-interface {v0}, Li/a/ma;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Li/a/xa;->i(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Li/a/xa$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Li/a/xa$c;

    iget-object v0, v0, Li/a/xa$c;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li/a/L;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/a/xa;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    instance-of v1, v0, Li/a/ma;

    if-nez v1, :cond_3

    .line 5
    instance-of v1, v0, Li/a/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Li/a/v;

    iget-object v0, v0, Li/a/v;->b:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Li/a/xa;->a(Li/a/xa;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li/a/L;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li/a/ra;)V

    :goto_0
    return-object v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li/a/xa;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li/a/L;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 1
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Li/a/xa$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Li/a/xa$c;

    iget-object v1, v1, Li/a/xa$c;->rootCause:Ljava/lang/Throwable;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Li/a/v;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Li/a/v;

    iget-object v1, v1, Li/a/v;->b:Ljava/lang/Throwable;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Li/a/ma;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 5
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Li/a/xa;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li/a/ra;)V

    :goto_2
    return-object v2

    .line 6
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot be cancelling child in this state: "

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
