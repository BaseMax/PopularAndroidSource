.class public abstract Li/a/a;
.super Li/a/xa;
.source "AbstractCoroutine.kt"

# interfaces
.implements Li/a/ra;
.implements Lh/c/b;
.implements Li/a/H;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/xa;",
        "Li/a/ra;",
        "Lh/c/b<",
        "TT;>;",
        "Li/a/H;"
    }
.end annotation


# instance fields
.field public final b:Lh/c/e;

.field public final c:Lh/c/e;


# direct methods
.method public constructor <init>(Lh/c/e;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Li/a/xa;-><init>(Z)V

    iput-object p1, p0, Li/a/a;->c:Lh/c/e;

    .line 2
    iget-object p1, p0, Li/a/a;->c:Lh/c/e;

    invoke-interface {p1, p0}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object p1

    iput-object p1, p0, Li/a/a;->b:Lh/c/e;

    return-void
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a;->b:Lh/c/e;

    return-object v0
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 0

    const-string p2, "cause"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lh/f/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineStart;",
            "TR;",
            "Lh/f/a/c<",
            "-TR;-",
            "Lh/c/b<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Li/a/a;->o()V

    .line 3
    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/CoroutineStart;->a(Lh/f/a/c;Ljava/lang/Object;Lh/c/b;)V

    return-void
.end method

.method public final b()Lh/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a;->b:Lh/c/e;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-static {p1}, Li/a/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Li/a/a;->n()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Li/a/xa;->b(Ljava/lang/Object;I)Z

    return-void
.end method

.method public final g(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Li/a/a;->b:Lh/c/e;

    invoke-static {v0, p1}, Li/a/E;->a(Lh/c/e;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Li/a/v;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Li/a/v;

    iget-object v0, p1, Li/a/v;->b:Ljava/lang/Throwable;

    invoke-virtual {p1}, Li/a/v;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Li/a/a;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Li/a/a;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/a;->b:Lh/c/e;

    invoke-static {v0}, Li/a/B;->a(Lh/c/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Li/a/xa;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Li/a/xa;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final l()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/a/a;->p()V

    return-void
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/a;->c:Lh/c/e;

    sget-object v1, Li/a/ra;->c:Li/a/ra$b;

    invoke-interface {v0, v1}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v0

    check-cast v0, Li/a/ra;

    invoke-virtual {p0, v0}, Li/a/xa;->a(Li/a/ra;)V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    invoke-super {p0}, Li/a/xa;->s()Z

    move-result v0

    return v0
.end method
