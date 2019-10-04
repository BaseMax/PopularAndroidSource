.class public abstract Lc/c/a/d/f/p;
.super Lb/r/E;
.source "BaseViewModel.kt"

# interfaces
.implements Li/a/H;


# instance fields
.field public final c:Li/a/ra;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/r/E;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/d/f/p;->c:Li/a/ra;

    return-void
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/d/f/p;->c:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lh/f/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/b<",
            "-",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/d/f/p;->c:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v3

    new-instance v5, Lcom/farsitel/bazaar/core/ui/BaseViewModel$launchIO$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/farsitel/bazaar/core/ui/BaseViewModel$launchIO$1;-><init>(Lh/f/a/b;Lh/c/b;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-super {p0}, Lb/r/E;->d()V

    .line 2
    iget-object v0, p0, Lc/c/a/d/f/p;->c:Li/a/ra;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
