.class public final Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpisodeDetailRepository.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/h/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.cinema.series.espisode.EpisodeDetailRepository$getEpisodeDetail$2"
    f = "EpisodeDetailRepository.kt"
    l = {
        0x21,
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $episodeId:Ljava/lang/String;

.field public final synthetic $referrer:Ljava/lang/String;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/e/d/h/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/d/a/a;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->this$0:Lc/c/a/e/d/h/d/a/a;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->$episodeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->$referrer:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 4
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

    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->this$0:Lc/c/a/e/d/h/d/a/a;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->$episodeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->$referrer:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;-><init>(Lc/c/a/e/d/h/d/a/a;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->this$0:Lc/c/a/e/d/h/d/a/a;

    invoke-static {p1}, Lc/c/a/e/d/h/d/a/a;->a(Lc/c/a/e/d/h/d/a/a;)Lc/c/a/e/d/h/d/a/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->$episodeId:Ljava/lang/String;

    iget-object v4, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->$referrer:Ljava/lang/String;

    iput v3, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->label:I

    invoke-virtual {p1, v1, v4, p0}, Lc/c/a/e/d/h/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 6
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v1, :cond_6

    .line 7
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v3, p1

    check-cast v3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    invoke-static {}, Li/a/W;->b()Li/a/C;

    move-result-object v3

    new-instance v4, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2$1;-><init>(Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;Lh/c/b;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;->label:I

    invoke-static {v3, v4, p0}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    .line 9
    :goto_1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 10
    invoke-static {p1}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrNull(Lcom/farsitel/bazaar/data/entity/Either;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 11
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lc/c/a/c/g/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    :cond_5
    new-instance p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_6
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v0, :cond_7

    :goto_2
    return-object p1

    .line 14
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
