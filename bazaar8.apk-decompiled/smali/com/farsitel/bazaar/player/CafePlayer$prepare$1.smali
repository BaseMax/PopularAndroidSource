.class public final Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CafePlayer.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/CafePlayer;->v()Li/a/ra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/c<",
        "Li/a/H;",
        "Lh/c/b<",
        "-",
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.player.CafePlayer$prepare$1"
    f = "CafePlayer.kt"
    l = {
        0x85
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/player/CafePlayer;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/CafePlayer;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;-><init>(Lcom/farsitel/bazaar/player/CafePlayer;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/farsitel/bazaar/player/CafePlayer;

    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lc/e/a/a/X;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->f(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/e/a/a/X;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->h(Lcom/farsitel/bazaar/player/CafePlayer;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->f(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/e/a/a/X;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lc/e/a/a/M;)V

    .line 6
    :cond_2
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->l(Lcom/farsitel/bazaar/player/CafePlayer;)V

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->m(Lcom/farsitel/bazaar/player/CafePlayer;)V

    .line 9
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->c(Lcom/farsitel/bazaar/player/CafePlayer;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v3}, Lcom/farsitel/bazaar/player/CafePlayer;->i(Lcom/farsitel/bazaar/player/CafePlayer;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v3

    invoke-static {v1, v3}, Lc/e/a/a/x;->a(Landroid/content/Context;Lc/e/a/a/l/r;)Lc/e/a/a/X;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/farsitel/bazaar/player/CafePlayer;->a(Lcom/farsitel/bazaar/player/CafePlayer;Lc/e/a/a/X;)V

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->h(Lcom/farsitel/bazaar/player/CafePlayer;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v1}, Lcom/farsitel/bazaar/player/CafePlayer;->f(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/e/a/a/X;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lc/e/a/a/M;)V

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->f(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/e/a/a/X;

    move-result-object v1

    const/4 p1, 0x0

    if-eqz v1, :cond_8

    .line 12
    iget-object v3, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v3}, Lcom/farsitel/bazaar/player/CafePlayer;->d(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/e/a/a/j/v;

    move-result-object v3

    if-nez v3, :cond_6

    .line 13
    iget-object v3, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    new-instance v4, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;

    invoke-direct {v4, p1, p0}, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;-><init>(Lh/c/b;Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;)V

    iput-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->label:I

    invoke-static {v4, p0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, v3

    .line 14
    :goto_0
    check-cast p1, Lc/e/a/a/j/v;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/player/CafePlayer;->a(Lcom/farsitel/bazaar/player/CafePlayer;Lc/e/a/a/j/v;)V

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->d(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/e/a/a/j/v;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/e/a/a/X;->a(Lc/e/a/a/j/v;)V

    .line 16
    invoke-virtual {v1, v2}, Lc/e/a/a/X;->b(Z)V

    .line 17
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->g(Lcom/farsitel/bazaar/player/CafePlayer;)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->g(Lcom/farsitel/bazaar/player/CafePlayer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lc/e/a/a/o;->a(J)V

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-virtual {v1, p1}, Lc/e/a/a/X;->a(Lc/e/a/a/M$b;)V

    .line 20
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 21
    :cond_8
    invoke-static {}, Lh/f/b/j;->a()V

    throw p1
.end method
