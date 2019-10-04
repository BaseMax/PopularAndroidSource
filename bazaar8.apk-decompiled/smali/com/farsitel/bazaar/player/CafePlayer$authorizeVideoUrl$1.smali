.class public final Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CafePlayer.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/CafePlayer;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/b<",
        "Lh/c/b<",
        "-",
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.player.CafePlayer$authorizeVideoUrl$1"
    f = "CafePlayer.kt"
    l = {
        0x198
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/farsitel/bazaar/player/CafePlayer;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/CafePlayer;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Lh/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-direct {v0, v1, p1}, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;-><init>(Lcom/farsitel/bazaar/player/CafePlayer;Lh/c/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/c/b;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->a(Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/l/b/a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->j(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/c/a/l/b/a;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v1}, Lcom/farsitel/bazaar/player/CafePlayer;->k(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/c/a/l/b/b;

    move-result-object v3

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v1}, Lcom/farsitel/bazaar/player/CafePlayer;->e(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/c/a/l/f;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/l/f;->g()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v1}, Lcom/farsitel/bazaar/player/CafePlayer;->f(Lcom/farsitel/bazaar/player/CafePlayer;)Lc/e/a/a/X;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/e/a/a/X;->getCurrentPosition()J

    move-result-wide v5

    invoke-static {v5, v6}, Lh/c/b/a/a;->a(J)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lc/c/a/l/b/a;->c()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {p1}, Lc/c/a/l/b/a;->b()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {p1}, Lc/c/a/l/b/a;->a()I

    move-result v9

    iput-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/farsitel/bazaar/player/CafePlayer$authorizeVideoUrl$1;->label:I

    move-object v10, p0

    .line 11
    invoke-virtual/range {v3 .. v10}, Lc/c/a/l/b/b;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILh/c/b;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 12
    :goto_1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 13
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p1}, Lc/c/a/l/b/a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_4
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lc/c/a/l/b/a;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_2

    .line 17
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 18
    :cond_6
    :goto_2
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
