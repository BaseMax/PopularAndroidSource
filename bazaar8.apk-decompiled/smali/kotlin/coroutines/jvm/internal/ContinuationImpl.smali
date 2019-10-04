.class public abstract Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.super Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
.source "ContinuationImpl.kt"


# instance fields
.field public final _context:Lh/c/e;

.field public transient a:Lh/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;Lh/c/e;)V

    return-void
.end method

.method public constructor <init>(Lh/c/b;Lh/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;",
            "Lh/c/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;-><init>(Lh/c/b;)V

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lh/c/e;

    return-void
.end method


# virtual methods
.method public b()Lh/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lh/c/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:Lh/c/b;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->b()Lh/c/e;

    move-result-object v1

    sget-object v2, Lh/c/c;->c:Lh/c/c$b;

    invoke-interface {v1, v2}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lh/c/c;

    invoke-interface {v1, v0}, Lh/c/c;->b(Lh/c/b;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lh/c/b/a/b;->a:Lh/c/b/a/b;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:Lh/c/b;

    return-void
.end method

.method public final g()Lh/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:Lh/c/b;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->b()Lh/c/e;

    move-result-object v0

    sget-object v1, Lh/c/c;->c:Lh/c/c$b;

    invoke-interface {v0, v1}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v0

    check-cast v0, Lh/c/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lh/c/c;->c(Lh/c/b;)Lh/c/b;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 3
    :goto_0
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:Lh/c/b;

    :goto_1
    return-object v0
.end method
