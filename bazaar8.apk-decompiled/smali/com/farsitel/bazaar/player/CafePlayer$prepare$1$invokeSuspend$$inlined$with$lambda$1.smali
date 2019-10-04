.class public final Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CafePlayer.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lc/e/a/a/j/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;


# direct methods
.method public constructor <init>(Lh/c/b;Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;)V
    .locals 0

    iput-object p2, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

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

    new-instance v0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;

    invoke-direct {v0, p2, v1}, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;-><init>(Lh/c/b;Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;->p$:Li/a/H;

    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/player/CafePlayer$prepare$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->b(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/e/a/a/j/v;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
