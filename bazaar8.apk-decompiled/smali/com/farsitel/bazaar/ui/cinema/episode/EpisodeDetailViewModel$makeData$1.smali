.class public final Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpisodeDetailViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/d/t;->a(Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;)V
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
    c = "com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailViewModel$makeData$1"
    f = "EpisodeDetailViewModel.kt"
    l = {
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $params:Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/j/d/t;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->$params:Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 3
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

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->$params:Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;-><init>(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->p$:Li/a/H;

    .line 4
    new-instance p1, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;Lh/c/b;)V

    iput v2, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->label:I

    invoke-static {p1, p0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    .line 6
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 7
    invoke-static {v0, p1}, Lc/c/a/n/j/d/t;->a(Lc/c/a/n/j/d/t;Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_3
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lc/c/a/n/j/d/t;->b(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-static {p1}, Lc/c/a/n/j/d/t;->c(Lc/c/a/n/j/d/t;)Lb/r/r;

    move-result-object p1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-static {v0}, Lc/c/a/n/j/d/t;->g(Lc/c/a/n/j/d/t;)Lc/c/a/b/d/o;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-virtual {v1}, Lc/c/a/n/j/d/t;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/d/i;->d(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/n/j/d/r;

    invoke-direct {v1, p0}, Lc/c/a/n/j/d/r;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;)V

    invoke-virtual {p1, v0, v1}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    .line 11
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-static {p1}, Lc/c/a/n/j/d/t;->d(Lc/c/a/n/j/d/t;)Lb/r/r;

    move-result-object p1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-static {v0}, Lc/c/a/n/j/d/t;->f(Lc/c/a/n/j/d/t;)Lc/c/a/e/d/h/e/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-virtual {v1}, Lc/c/a/n/j/d/t;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/e/d/h/e/a/c;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/n/j/d/s;

    invoke-direct {v1, p0}, Lc/c/a/n/j/d/s;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;)V

    invoke-virtual {p1, v0, v1}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    .line 12
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 13
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
