.class public final Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoDownloadManager.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;->d(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$3$1"
    f = "VideoDownloadManager.kt"
    l = {
        0xd4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;

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

    new-instance v0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;-><init>(Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->p$:Li/a/H;

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;->this$0:Lc/c/a/e/d/i/A;

    invoke-static {p1}, Lc/c/a/e/d/i/A;->a(Lc/c/a/e/d/i/A;)Lc/c/a/e/d/h/e/a/c/a;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;

    iget-object v1, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;->$entityId:Ljava/lang/String;

    iput v2, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3$1;->label:I

    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/h/e/a/c/a;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
