.class public final Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AnalyticsAgent.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/b;->a(Lc/c/a/a/a/a;)V
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
    c = "com.farsitel.bazaar.analytics.AnalyticsAgent$track$1"
    f = "AnalyticsAgent.kt"
    l = {
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $event:Lc/c/a/a/a/a;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lc/c/a/a/b;


# direct methods
.method public constructor <init>(Lc/c/a/a/b;Lc/c/a/a/a/a;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->this$0:Lc/c/a/a/b;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->$event:Lc/c/a/a/a/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Lh/c/b;
    .locals 3
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

    new-instance v0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->this$0:Lc/c/a/a/b;

    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->$event:Lc/c/a/a/a/a;

    invoke-direct {v0, v1, v2, p1}, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;-><init>(Lc/c/a/a/b;Lc/c/a/a/a/a;Lh/c/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/c/b;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->a(Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lc/c/a/a/b/c;

    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->L$2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Iterable;

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
    iget-object p1, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->this$0:Lc/c/a/a/b;

    invoke-static {p1}, Lc/c/a/a/b;->a(Lc/c/a/a/b;)Ljava/util/Set;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lc/c/a/a/b/c;

    .line 7
    iget-object v5, p0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->$event:Lc/c/a/a/a/a;

    invoke-interface {v4, v5}, Lc/c/a/a/b/c;->a(Lc/c/a/a/a/a;)Z

    move-result v4

    invoke-static {v4}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v1

    move-object v1, p1

    :goto_1
    move-object p1, p0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lc/c/a/a/b/c;

    .line 9
    iget-object v6, p1, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->$event:Lc/c/a/a/a/a;

    iput-object v3, p1, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->L$1:Ljava/lang/Object;

    iput-object v4, p1, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->L$2:Ljava/lang/Object;

    iput-object v5, p1, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->L$3:Ljava/lang/Object;

    iput v2, p1, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;->label:I

    invoke-interface {v5, v6, p1}, Lc/c/a/a/b/c;->a(Lc/c/a/a/a/a;Lh/c/b;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    .line 10
    :cond_5
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
