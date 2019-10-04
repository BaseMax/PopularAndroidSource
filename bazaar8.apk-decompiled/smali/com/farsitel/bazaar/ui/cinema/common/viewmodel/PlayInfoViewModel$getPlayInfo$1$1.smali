.class public final Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayInfoViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/farsitel/bazaar/data/entity/Either<",
        "+",
        "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoViewModel$getPlayInfo$1$1"
    f = "PlayInfoViewModel.kt"
    l = {
        0x3f,
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    invoke-static {p1}, Lc/c/a/n/j/b/c/b;->e(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/h/e/a/a/n;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->$playedVideoModel:Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getEntityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    .line 7
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v2, v1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    .line 8
    iget-object v1, v1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->$playedVideoModel:Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getEntityId()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v3, v3, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    invoke-static {v3}, Lc/c/a/n/j/b/c/b;->e(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/h/e/a/a/n;

    move-result-object v3

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->$playedVideoModel:Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getEntityId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/c/a/e/d/h/e/a/a/n;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 10
    invoke-static {v2, v1, p1, v3}, Lc/c/a/n/j/b/c/b;->a(Lc/c/a/n/j/b/c/b;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->$type:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    sget-object v4, Lc/c/a/n/j/b/c/a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_5

    if-ne v1, v2, :cond_4

    .line 13
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    invoke-static {v1}, Lc/c/a/n/j/b/c/b;->a(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/h/d/a/a;

    move-result-object v1

    .line 14
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v3, v3, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->$playedVideoModel:Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getEntityId()Ljava/lang/String;

    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->$referrer:Ljava/lang/String;

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->label:I

    .line 16
    invoke-virtual {v1, v3, v4, p0}, Lc/c/a/e/d/h/d/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 17
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    invoke-static {v1}, Lc/c/a/n/j/b/c/b;->d(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/h/e/a;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v2, v2, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->$playedVideoModel:Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getEntityId()Ljava/lang/String;

    move-result-object v2

    .line 20
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;->$referrer:Ljava/lang/String;

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1$1;->label:I

    .line 21
    invoke-virtual {v1, v2, v4, p0}, Lc/c/a/e/d/h/e/a;->b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 22
    :cond_6
    :goto_1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    return-object p1
.end method
