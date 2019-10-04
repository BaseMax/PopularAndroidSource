.class public abstract Li/a/b/a;
.super Li/a/b/d;
.source "AbstractChannel.kt"

# interfaces
.implements Li/a/b/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/a$d;,
        Li/a/b/a$b;,
        Li/a/b/a$c;,
        Li/a/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/d<",
        "TE;>;",
        "Li/a/b/j<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/b/d;-><init>()V

    return-void
.end method

.method public static final synthetic a(Li/a/b/a;Li/a/j;Li/a/b/s;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Li/a/b/a;->a(Li/a/j;Li/a/b/s;)V

    return-void
.end method

.method public static final synthetic a(Li/a/b/a;Li/a/b/s;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/b/a;->a(Li/a/b/s;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Li/a/j;Li/a/b/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/j<",
            "*>;",
            "Li/a/b/s<",
            "*>;)V"
        }
    .end annotation

    .line 17
    new-instance v0, Li/a/b/a$d;

    invoke-direct {v0, p0, p2}, Li/a/b/a$d;-><init>(Li/a/b/a;Li/a/b/s;)V

    invoke-interface {p1, v0}, Li/a/j;->a(Lh/f/a/b;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li/a/L;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Li/a/b/a;->c(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final a(Li/a/b/s;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/s<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Li/a/b/a;->o()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Li/a/b/d;->h()Li/a/c/i;

    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    check-cast v4, Li/a/c/k;

    .line 6
    instance-of v5, v4, Li/a/b/w;

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    goto :goto_4

    .line 7
    :cond_2
    invoke-virtual {v4, p1, v0}, Li/a/c/k;->b(Li/a/c/k;Li/a/c/k;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    .line 8
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    invoke-virtual {p0}, Li/a/b/d;->h()Li/a/c/i;

    move-result-object v0

    .line 10
    new-instance v4, Li/a/b/b;

    invoke-direct {v4, p1, p1, p0}, Li/a/b/b;-><init>(Li/a/c/k;Li/a/c/k;Li/a/b/a;)V

    .line 11
    :goto_1
    invoke-virtual {v0}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    check-cast v5, Li/a/c/k;

    .line 12
    instance-of v6, v5, Li/a/b/w;

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_6

    goto :goto_4

    .line 13
    :cond_6
    invoke-virtual {v5, p1, v0, v4}, Li/a/c/k;->a(Li/a/c/k;Li/a/c/k;Li/a/c/k$a;)I

    move-result v5

    if-eq v5, v2, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    goto :goto_1

    :cond_7
    :goto_3
    const/4 v3, 0x1

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    .line 14
    invoke-virtual {p0}, Li/a/b/a;->r()V

    :cond_9
    return v3

    .line 15
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/b/d;->a(Ljava/lang/Throwable;)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Li/a/b/a;->n()V

    return p1
.end method

.method public final iterator()Li/a/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/k<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/a/b/a$b;

    invoke-direct {v0, p0}, Li/a/b/a$b;-><init>(Li/a/b/a;)V

    return-object v0
.end method

.method public l()Li/a/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/u<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Li/a/b/d;->l()Li/a/b/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Li/a/b/o;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Li/a/b/a;->q()V

    :cond_0
    return-object v0
.end method

.method public n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Li/a/b/d;->f()Li/a/b/o;

    move-result-object v0

    const-string v1, "Cannot happen"

    if-eqz v0, :cond_5

    .line 2
    :goto_0
    invoke-virtual {p0}, Li/a/b/d;->m()Li/a/b/w;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    instance-of v3, v2, Li/a/b/o;

    if-eqz v3, :cond_3

    .line 4
    invoke-static {}, Li/a/K;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_2
    return-void

    .line 5
    :cond_3
    invoke-virtual {v2, v0}, Li/a/b/w;->a(Li/a/b/o;)V

    goto :goto_0

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public abstract o()Z
.end method

.method public abstract p()Z
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Li/a/b/d;->m()Li/a/b/w;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Li/a/b/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Li/a/b/w;->c(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Li/a/b/w;->q()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Li/a/b/c;->c:Ljava/lang/Object;

    return-object v0
.end method
