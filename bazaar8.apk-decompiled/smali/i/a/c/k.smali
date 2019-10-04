.class public Li/a/c/k;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/c/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _next:Ljava/lang/Object;

.field public volatile _prev:Ljava/lang/Object;

.field public volatile _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li/a/c/k;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Li/a/c/k;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_prev"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/c/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Li/a/c/k;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_removedRef"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/c/k;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Li/a/c/k;->_next:Ljava/lang/Object;

    .line 3
    iput-object p0, p0, Li/a/c/k;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Li/a/c/k;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Li/a/c/k;Li/a/c/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/c/k;->b(Li/a/c/k;)V

    return-void
.end method


# virtual methods
.method public final a(Li/a/c/k;Li/a/c/k;Li/a/c/k$a;)I
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condAdd"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Li/a/c/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iput-object p2, p3, Li/a/c/k$a;->b:Li/a/c/k;

    .line 10
    sget-object p1, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    invoke-virtual {p3, p0}, Li/a/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public final a(Li/a/c/k;Li/a/c/q;)Li/a/c/k;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    .line 12
    :cond_0
    :goto_1
    iget-object v2, p1, Li/a/c/k;->_next:Ljava/lang/Object;

    if-ne v2, p2, :cond_1

    return-object p1

    .line 13
    :cond_1
    instance-of v3, v2, Li/a/c/q;

    if-eqz v3, :cond_2

    .line 14
    check-cast v2, Li/a/c/q;

    invoke-virtual {v2, p1}, Li/a/c/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_2
    instance-of v3, v2, Li/a/c/r;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p1}, Li/a/c/k;->m()Li/a/c/k;

    .line 17
    sget-object v3, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v2, Li/a/c/r;

    iget-object v2, v2, Li/a/c/r;->a:Li/a/c/k;

    invoke-virtual {v3, v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object p1, v1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p1, Li/a/c/k;->_prev:Ljava/lang/Object;

    invoke-static {p1}, Li/a/c/j;->a(Ljava/lang/Object;)Li/a/c/k;

    move-result-object p1

    goto :goto_1

    .line 19
    :cond_4
    iget-object v3, p0, Li/a/c/k;->_prev:Ljava/lang/Object;

    .line 20
    instance-of v4, v3, Li/a/c/r;

    if-eqz v4, :cond_5

    return-object v0

    :cond_5
    if-eq v2, p0, :cond_7

    if-eqz v2, :cond_6

    .line 21
    move-object v1, v2

    check-cast v1, Li/a/c/k;

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_1

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-ne v3, p1, :cond_8

    return-object v0

    .line 22
    :cond_8
    sget-object v2, Li/a/c/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    iget-object v2, p1, Li/a/c/k;->_prev:Ljava/lang/Object;

    instance-of v2, v2, Li/a/c/r;

    if-nez v2, :cond_0

    return-object v0
.end method

.method public final a(Li/a/c/k;)Z
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Li/a/c/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    sget-object v0, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, p0}, Li/a/c/k;->b(Li/a/c/k;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Li/a/c/k;)V
    .locals 2

    .line 5
    :cond_0
    iget-object v0, p1, Li/a/c/k;->_prev:Ljava/lang/Object;

    .line 6
    instance-of v1, v0, Li/a/c/r;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Li/a/c/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Li/a/c/r;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 9
    check-cast v0, Li/a/c/k;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Li/a/c/k;->a(Li/a/c/k;Li/a/c/q;)Li/a/c/k;

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Li/a/c/k;Li/a/c/k;)Z
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Li/a/c/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Li/a/c/k;->b(Li/a/c/k;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Li/a/c/k;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/c/k;->j()V

    .line 2
    iget-object v0, p0, Li/a/c/k;->_prev:Ljava/lang/Object;

    invoke-static {v0}, Li/a/c/j;->a(Ljava/lang/Object;)Li/a/c/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Li/a/c/k;->a(Li/a/c/k;Li/a/c/q;)Li/a/c/k;

    return-void
.end method

.method public final d()Li/a/c/k;
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    :goto_0
    instance-of v1, v0, Li/a/c/i;

    if-eqz v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {v0}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object v0

    .line 3
    invoke-static {}, Li/a/K;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Li/a/c/k;->_next:Ljava/lang/Object;

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

.method public final g()Li/a/c/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li/a/c/j;->a(Ljava/lang/Object;)Li/a/c/k;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Li/a/c/k;->_prev:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Li/a/c/r;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 3
    move-object v1, v0

    check-cast v1, Li/a/c/k;

    .line 4
    invoke-virtual {v1}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Li/a/c/k;->a(Li/a/c/k;Li/a/c/q;)Li/a/c/k;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final i()Li/a/c/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li/a/c/j;->a(Ljava/lang/Object;)Li/a/c/k;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Li/a/c/k;->m()Li/a/c/k;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li/a/c/k;->_next:Ljava/lang/Object;

    if-eqz v1, :cond_7

    check-cast v1, Li/a/c/r;

    iget-object v1, v1, Li/a/c/r;->a:Li/a/c/k;

    const/4 v2, 0x0

    :goto_0
    move-object v3, v2

    .line 3
    :cond_0
    :goto_1
    invoke-virtual {v1}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Li/a/c/r;

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v1}, Li/a/c/k;->m()Li/a/c/k;

    .line 6
    check-cast v4, Li/a/c/r;

    iget-object v1, v4, Li/a/c/r;->a:Li/a/c/k;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v4

    .line 8
    instance-of v5, v4, Li/a/c/r;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v0}, Li/a/c/k;->m()Li/a/c/k;

    .line 10
    sget-object v5, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Li/a/c/r;

    iget-object v4, v4, Li/a/c/r;->a:Li/a/c/k;

    invoke-virtual {v5, v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, v0, Li/a/c/k;->_prev:Ljava/lang/Object;

    invoke-static {v0}, Li/a/c/j;->a(Ljava/lang/Object;)Li/a/c/k;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eq v4, p0, :cond_6

    if-eqz v4, :cond_5

    .line 12
    move-object v3, v4

    check-cast v3, Li/a/c/k;

    if-ne v3, v1, :cond_4

    return-void

    :cond_4
    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_6
    sget-object v4, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 14
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Removed"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li/a/c/r;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Li/a/c/r;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Li/a/c/r;->a:Li/a/c/k;

    invoke-virtual {p0, v0}, Li/a/c/k;->c(Li/a/c/k;)V

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be invoked on a removed node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Li/a/c/r;

    return v0
.end method

.method public final m()Li/a/c/k;
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Li/a/c/k;->_prev:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Li/a/c/r;

    if-eqz v1, :cond_1

    check-cast v0, Li/a/c/r;

    iget-object v0, v0, Li/a/c/r;->a:Li/a/c/k;

    return-object v0

    :cond_1
    if-ne v0, p0, :cond_2

    .line 3
    invoke-virtual {p0}, Li/a/c/k;->d()Li/a/c/k;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Li/a/c/k;

    :goto_0
    invoke-virtual {v1}, Li/a/c/k;->p()Li/a/c/r;

    move-result-object v1

    .line 4
    sget-object v2, Li/a/c/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Li/a/c/k;

    return-object v0

    .line 5
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public n()Z
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Li/a/c/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-ne v0, p0, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Li/a/c/k;

    invoke-virtual {v1}, Li/a/c/k;->p()Li/a/c/r;

    move-result-object v2

    .line 4
    sget-object v3, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Li/a/c/k;->c(Li/a/c/k;)V

    const/4 v0, 0x1

    return v0

    .line 6
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public final o()Li/a/c/k;
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Li/a/c/k;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Li/a/c/k;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Li/a/c/k;->j()V

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final p()Li/a/c/r;
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/c/k;->_removedRef:Ljava/lang/Object;

    check-cast v0, Li/a/c/r;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Li/a/c/r;

    invoke-direct {v0, p0}, Li/a/c/r;-><init>(Li/a/c/k;)V

    sget-object v1, Li/a/c/k;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
