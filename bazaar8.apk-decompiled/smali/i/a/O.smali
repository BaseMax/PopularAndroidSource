.class public Li/a/O;
.super Li/a/a;
.source "Builders.common.kt"

# interfaces
.implements Li/a/N;
.implements Li/a/f/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/a<",
        "TT;>;",
        "Li/a/N<",
        "TT;>;",
        "Li/a/f/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lh/c/e;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Li/a/a;-><init>(Lh/c/e;Z)V

    return-void
.end method

.method public static synthetic a(Li/a/O;Lh/c/b;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    iget v1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/DeferredCoroutine$await$1;-><init>(Li/a/O;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->L$0:Ljava/lang/Object;

    check-cast p0, Li/a/O;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iput-object p0, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    invoke-virtual {p0, v0}, Li/a/xa;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method


# virtual methods
.method public a(Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Li/a/O;->a(Li/a/O;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
