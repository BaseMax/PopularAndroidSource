.class public abstract Li/a/b/d;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Li/a/b/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/a/b/x<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final b:Li/a/c/i;

.field public volatile onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li/a/b/d;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/b/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Li/a/c/i;

    invoke-direct {v0}, Li/a/c/i;-><init>()V

    iput-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Li/a/b/d;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Li/a/b/d;Li/a/b/w;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/b/d;->a(Li/a/b/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Li/a/b/d;Li/a/b/o;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Li/a/b/d;->a(Li/a/b/o;)V

    return-void
.end method

.method public static final synthetic a(Li/a/b/d;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Li/a/b/d;->g()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Li/a/b/w;)Ljava/lang/Object;
    .locals 5

    .line 12
    invoke-virtual {p0}, Li/a/b/d;->j()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    .line 14
    :cond_0
    invoke-virtual {v0}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Li/a/c/k;

    .line 15
    instance-of v3, v2, Li/a/b/u;

    if-eqz v3, :cond_1

    return-object v2

    .line 16
    :cond_1
    invoke-virtual {v2, p1, v0}, Li/a/c/k;->b(Li/a/c/k;Li/a/c/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 17
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    .line 19
    new-instance v2, Li/a/b/e;

    invoke-direct {v2, p1, p1, p0}, Li/a/b/e;-><init>(Li/a/c/k;Li/a/c/k;Li/a/b/d;)V

    .line 20
    :goto_0
    invoke-virtual {v0}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    check-cast v3, Li/a/c/k;

    .line 21
    instance-of v4, v3, Li/a/b/u;

    if-eqz v4, :cond_4

    return-object v3

    .line 22
    :cond_4
    invoke-virtual {v3, p1, v0, v2}, Li/a/c/k;->a(Li/a/c/k;Li/a/c/k;Li/a/c/k$a;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :cond_6
    if-nez v4, :cond_7

    .line 23
    sget-object p1, Li/a/b/c;->d:Ljava/lang/Object;

    return-object p1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;
    .locals 1
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
    invoke-virtual {p0, p1}, Li/a/b/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Li/a/b/d;->b(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Li/a/b/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/o<",
            "*>;)V"
        }
    .end annotation

    .line 36
    :goto_0
    invoke-virtual {p1}, Li/a/c/k;->i()Li/a/c/k;

    move-result-object v0

    .line 37
    instance-of v1, v0, Li/a/c/i;

    if-nez v1, :cond_2

    instance-of v1, v0, Li/a/b/s;

    if-nez v1, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v0}, Li/a/c/k;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    invoke-virtual {v0}, Li/a/c/k;->k()V

    goto :goto_0

    .line 40
    :cond_1
    check-cast v0, Li/a/b/s;

    .line 41
    invoke-virtual {v0, p1}, Li/a/b/s;->a(Li/a/b/o;)V

    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Li/a/b/d;->a(Li/a/c/k;)V

    return-void
.end method

.method public a(Li/a/c/k;)V
    .locals 1

    const-string v0, "closed"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Li/a/b/d;->f()Li/a/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Li/a/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    sget-object v0, Li/a/b/c;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_0
    sget-object v0, Li/a/b/c;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Li/a/b/d;->f()Li/a/b/o;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li/a/b/o;->t()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Li/a/c/u;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 10
    :cond_3
    instance-of v0, p1, Li/a/b/o;

    if-eqz v0, :cond_4

    check-cast p1, Li/a/b/o;

    invoke-virtual {p1}, Li/a/b/o;->t()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Li/a/c/u;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offerInternal returned "

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

.method public a(Ljava/lang/Throwable;)Z
    .locals 6

    .line 25
    new-instance v0, Li/a/b/o;

    invoke-direct {v0, p1}, Li/a/b/o;-><init>(Ljava/lang/Throwable;)V

    .line 26
    iget-object v1, p0, Li/a/b/d;->b:Li/a/c/i;

    .line 27
    :cond_0
    invoke-virtual {v1}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Li/a/c/k;

    .line 28
    instance-of v3, v2, Li/a/b/o;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v2, v0, v1}, Li/a/c/k;->b(Li/a/c/k;Li/a/c/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    .line 30
    iget-object p1, p0, Li/a/b/d;->b:Li/a/c/i;

    invoke-virtual {p1}, Li/a/c/k;->i()Li/a/c/k;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Li/a/b/o;

    .line 31
    invoke-virtual {p0, p1}, Li/a/b/d;->a(Li/a/b/o;)V

    return v5

    .line 32
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.Closed<*>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_4
    invoke-virtual {p0, v0}, Li/a/b/d;->a(Li/a/b/o;)V

    .line 34
    invoke-virtual {p0, p1}, Li/a/b/d;->b(Ljava/lang/Throwable;)V

    return v4

    .line 35
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Li/a/b/d;->l()Li/a/b/u;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Li/a/b/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Li/a/b/u;->b(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Li/a/b/u;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Li/a/b/c;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;
    .locals 3
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

    .line 9
    new-instance v0, Li/a/k;

    invoke-static {p2}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/k;-><init>(Lh/c/b;I)V

    .line 10
    :goto_0
    invoke-static {p0}, Li/a/b/d;->a(Li/a/b/d;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    new-instance v1, Li/a/b/y;

    invoke-direct {v1, p1, v0}, Li/a/b/y;-><init>(Ljava/lang/Object;Li/a/j;)V

    .line 12
    invoke-static {p0, v1}, Li/a/b/d;->a(Li/a/b/d;Li/a/b/w;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 13
    invoke-static {v0, v1}, Li/a/l;->a(Li/a/j;Li/a/c/k;)V

    goto/16 :goto_2

    .line 14
    :cond_0
    instance-of v1, v2, Li/a/b/o;

    if-eqz v1, :cond_1

    .line 15
    check-cast v2, Li/a/b/o;

    invoke-static {p0, v2}, Li/a/b/d;->a(Li/a/b/d;Li/a/b/o;)V

    .line 16
    invoke-virtual {v2}, Li/a/b/o;->t()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_1
    sget-object v1, Li/a/b/c;->d:Ljava/lang/Object;

    if-ne v2, v1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    instance-of v1, v2, Li/a/b/s;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enqueueSend returned "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Li/a/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    sget-object v2, Li/a/b/c;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_5

    .line 22
    sget-object p1, Lh/h;->a:Lh/h;

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_5
    sget-object v2, Li/a/b/c;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 24
    :cond_6
    instance-of p1, v1, Li/a/b/o;

    if-eqz p1, :cond_8

    .line 25
    check-cast v1, Li/a/b/o;

    invoke-static {p0, v1}, Li/a/b/d;->a(Li/a/b/d;Li/a/b/o;)V

    .line 26
    invoke-virtual {v1}, Li/a/b/o;->t()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 27
    :goto_2
    invoke-virtual {v0}, Li/a/k;->h()Ljava/lang/Object;

    move-result-object p1

    .line 28
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_7

    invoke-static {p2}, Lh/c/b/a/f;->c(Lh/c/b;)V

    :cond_7
    return-object p1

    .line 29
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "offerInternal returned "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    .line 6
    iget-object v0, p0, Li/a/b/d;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Li/a/b/c;->i:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    sget-object v2, Li/a/b/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lh/f/b/o;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast v0, Lh/f/a/b;

    invoke-interface {v0, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 4

    .line 6
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    .line 7
    invoke-virtual {v0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Li/a/c/k;

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 9
    instance-of v3, v1, Li/a/c/k;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 10
    :cond_0
    invoke-virtual {v1}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object v1

    goto :goto_0

    :cond_1
    return v2

    .line 11
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

.method public final c(Ljava/lang/Object;)Li/a/b/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Li/a/b/u<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    new-instance v1, Li/a/b/d$a;

    invoke-direct {v1, p1}, Li/a/b/d$a;-><init>(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {v0}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Li/a/c/k;

    .line 3
    instance-of v2, p1, Li/a/b/u;

    if-eqz v2, :cond_1

    check-cast p1, Li/a/b/u;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v1, v0}, Li/a/c/k;->b(Li/a/c/k;Li/a/c/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final e()Li/a/b/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/o<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    invoke-virtual {v0}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object v0

    instance-of v1, v0, Li/a/b/o;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Li/a/b/o;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Li/a/b/d;->a(Li/a/b/o;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public final f()Li/a/b/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/o<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    invoke-virtual {v0}, Li/a/c/k;->i()Li/a/c/k;

    move-result-object v0

    instance-of v1, v0, Li/a/b/o;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Li/a/b/o;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Li/a/b/d;->a(Li/a/b/o;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    invoke-virtual {v0}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object v0

    instance-of v0, v0, Li/a/b/u;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/a/b/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Li/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    invoke-virtual {v0}, Li/a/c/k;->g()Li/a/c/k;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li/a/b/d;->b:Li/a/c/i;

    if-ne v0, v1, :cond_0

    const-string v0, "EmptyQueue"

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Li/a/b/o;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Li/a/c/k;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Li/a/b/s;

    if-eqz v1, :cond_2

    const-string v1, "ReceiveQueued"

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v0, Li/a/b/w;

    if-eqz v1, :cond_3

    const-string v1, "SendQueued"

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNEXPECTED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Li/a/b/d;->b:Li/a/c/i;

    invoke-virtual {v2}, Li/a/c/k;->i()Li/a/c/k;

    move-result-object v2

    if-eq v2, v0, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li/a/b/d;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    instance-of v0, v2, Li/a/b/o;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public l()Li/a/b/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/u<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    .line 2
    :goto_0
    invoke-virtual {v0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Li/a/c/k;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Li/a/b/u;

    if-nez v3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Li/a/b/u;

    .line 5
    instance-of v2, v2, Li/a/b/o;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v1}, Li/a/c/k;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move-object v2, v1

    .line 7
    :goto_2
    check-cast v2, Li/a/b/u;

    return-object v2

    .line 8
    :cond_3
    invoke-virtual {v1}, Li/a/c/k;->j()V

    goto :goto_0

    .line 9
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final m()Li/a/b/w;
    .locals 4

    .line 1
    iget-object v0, p0, Li/a/b/d;->b:Li/a/c/i;

    .line 2
    :goto_0
    invoke-virtual {v0}, Li/a/c/k;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Li/a/c/k;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Li/a/b/w;

    if-nez v3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Li/a/b/w;

    .line 5
    instance-of v2, v2, Li/a/b/o;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v1}, Li/a/c/k;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move-object v2, v1

    .line 7
    :goto_2
    check-cast v2, Li/a/b/w;

    return-object v2

    .line 8
    :cond_3
    invoke-virtual {v1}, Li/a/c/k;->j()V

    goto :goto_0

    .line 9
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li/a/L;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li/a/L;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li/a/b/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li/a/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
