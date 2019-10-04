.class public Li/a/b/q;
.super Li/a/b/a;
.source "ConflatedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/a/b/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/d$a<",
            "+TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Li/a/c/k;->i()Li/a/c/k;

    move-result-object p1

    .line 4
    :goto_0
    instance-of v0, p1, Li/a/b/d$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Li/a/c/k;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Li/a/c/k;->k()V

    .line 7
    :cond_0
    invoke-virtual {p1}, Li/a/c/k;->i()Li/a/c/k;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Li/a/c/k;)V
    .locals 1

    const-string v0, "closed"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Li/a/c/k;->i()Li/a/c/k;

    move-result-object p1

    instance-of v0, p1, Li/a/b/d$a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Li/a/b/d$a;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Li/a/b/q;->a(Li/a/b/d$a;)V

    :cond_1
    return-void
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
    invoke-super {p0, p1}, Li/a/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Li/a/b/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    return-object v1

    .line 3
    :cond_1
    sget-object v1, Li/a/b/c;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Li/a/b/q;->d(Ljava/lang/Object;)Li/a/b/u;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    sget-object p1, Li/a/b/c;->a:Ljava/lang/Object;

    return-object p1

    .line 6
    :cond_2
    instance-of v1, v0, Li/a/b/o;

    if-eqz v1, :cond_0

    return-object v0

    .line 7
    :cond_3
    instance-of p1, v0, Li/a/b/o;

    if-eqz p1, :cond_4

    return-object v0

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offerInternal result "

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

.method public final d(Ljava/lang/Object;)Li/a/b/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Li/a/b/u<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/a/b/d$a;

    invoke-direct {v0, p1}, Li/a/b/d$a;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Li/a/b/d;->h()Li/a/c/i;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Li/a/c/k;

    .line 4
    instance-of v2, v1, Li/a/b/u;

    if-eqz v2, :cond_1

    check-cast v1, Li/a/b/u;

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v1, v0, p1}, Li/a/c/k;->b(Li/a/c/k;Li/a/c/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Li/a/b/q;->a(Li/a/b/d$a;)V

    const/4 p1, 0x0

    return-object p1

    .line 7
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

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
