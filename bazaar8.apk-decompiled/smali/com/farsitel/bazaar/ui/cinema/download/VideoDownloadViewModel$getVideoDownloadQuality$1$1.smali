.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoDownloadViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadViewModel$getVideoDownloadQuality$1$1"
    f = "VideoDownloadViewModel.kt"
    l = {
        0x37,
        0x38
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lc/c/a/n/j/c/n;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->p$:Li/a/H;

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;

    iget-object v1, p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;->this$0:Lc/c/a/n/j/c/n;

    invoke-static {v1}, Lc/c/a/n/j/c/n;->a(Lc/c/a/n/j/c/n;)Lc/c/a/e/d/h/e/a/a;

    move-result-object p1

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;->$videoId:Ljava/lang/String;

    iput-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->label:I

    invoke-virtual {p1, v4, p0}, Lc/c/a/e/d/h/e/a/a;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 3
    :cond_3
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getDownloadId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-static {v1, p1}, Lc/c/a/n/j/c/n;->a(Lc/c/a/n/j/c/n;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;->this$0:Lc/c/a/n/j/c/n;

    invoke-static {p1}, Lc/c/a/n/j/c/n;->a(Lc/c/a/n/j/c/n;)Lc/c/a/e/d/h/e/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;

    iget-object v3, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;->$videoId:Ljava/lang/String;

    iget-object v1, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;->$referrer:Ljava/lang/String;

    iput v2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1$1;->label:I

    invoke-virtual {p1, v3, v1, p0}, Lc/c/a/e/d/h/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    return-object p1
.end method
