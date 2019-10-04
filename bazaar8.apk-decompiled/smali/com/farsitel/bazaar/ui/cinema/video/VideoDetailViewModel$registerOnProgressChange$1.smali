.class public final Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoDetailViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/k/s;->a(Ljava/lang/String;)V
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
    c = "com.farsitel.bazaar.ui.cinema.video.VideoDetailViewModel$registerOnProgressChange$1"
    f = "VideoDetailViewModel.kt"
    l = {
        0xde
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $videoId:Ljava/lang/String;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/j/k/s;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/k/s;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/k/s;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->$videoId:Ljava/lang/String;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/k/s;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->$videoId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;-><init>(Lc/c/a/n/j/k/s;Ljava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$5:Ljava/lang/Object;

    check-cast v1, Li/a/b/k;

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$4:Ljava/lang/Object;

    check-cast v3, Li/a/b/t;

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$2:Ljava/lang/Object;

    check-cast v5, Li/a/b/t;

    iget-object v6, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;

    iget-object v7, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$0:Ljava/lang/Object;

    check-cast v7, Li/a/b/t;

    :try_start_0
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v4, p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/k/s;

    invoke-static {p1}, Lc/c/a/n/j/k/s;->g(Lc/c/a/n/j/k/s;)Lc/c/a/b/d/o;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->$videoId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/c/a/b/d/o;->m(Ljava/lang/String;)Li/a/b/t;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    .line 5
    :try_start_1
    invoke-interface {v5}, Li/a/b/t;->iterator()Li/a/b/k;

    move-result-object p1

    move-object v1, p1

    move-object v6, v0

    move-object v3, v5

    move-object v7, v3

    move-object p1, p0

    move-object v0, p1

    :goto_0
    iput-object v7, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->L$5:Ljava/lang/Object;

    iput v2, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->label:I

    invoke-interface {v1, p1}, Li/a/b/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_2

    return-object v6

    :cond_2
    move-object v10, v6

    move-object v6, p1

    move-object p1, v8

    move-object v8, v10

    .line 6
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Li/a/b/k;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    .line 7
    iget-object v9, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/k/s;

    invoke-static {v9, p1}, Lc/c/a/n/j/k/s;->a(Lc/c/a/n/j/k/s;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    move-object p1, v6

    move-object v6, v8

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {v5, v4}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 10
    :goto_2
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_3
    invoke-static {v5, v4}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    throw p1

    .line 12
    :cond_4
    :goto_4
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
