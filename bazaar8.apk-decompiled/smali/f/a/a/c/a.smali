.class public final Lf/a/a/c/a;
.super Ljava/lang/Object;
.source "InlineNetwork.kt"


# instance fields
.field public final a:Li/a/ra;

.field public final b:Lc/c/a/e/d/k/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/k/c;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/a/c/a;->b:Lc/c/a/e/d/k/c;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0, p1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/c/a;->a:Li/a/ra;

    return-void
.end method

.method public static final synthetic a(Lf/a/a/c/a;)Lc/c/a/e/d/k/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/c/a;->b:Lc/c/a/e/d/k/c;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;Lf/a/a/c/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;",
            "Lf/a/a/c/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/c/a;->a:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    invoke-static {v0}, Li/a/I;->a(Lh/c/e;)Li/a/H;

    move-result-object v1

    new-instance v4, Lir/cafebazaar/inline/network/InlineNetwork$replyService$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lir/cafebazaar/inline/network/InlineNetwork$replyService$1;-><init>(Lf/a/a/c/a;Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;Lf/a/a/c/b;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Ljava/lang/String;Lf/a/a/c/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lf/a/a/c/b<",
            "Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "kashanId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/c/a;->a:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    invoke-static {v0}, Li/a/I;->a(Lh/c/e;)Li/a/H;

    move-result-object v1

    new-instance v4, Lir/cafebazaar/inline/network/InlineNetwork$getInlineAppInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lir/cafebazaar/inline/network/InlineNetwork$getInlineAppInfo$1;-><init>(Lf/a/a/c/a;Ljava/lang/String;Lf/a/a/c/b;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method
