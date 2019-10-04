.class public final Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoManager.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/d/o;->a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V
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
    c = "com.farsitel.bazaar.app.managers.VideoManager$startDownloadEntity$2"
    f = "VideoManager.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $downloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/b/d/o;


# direct methods
.method public constructor <init>(Lc/c/a/b/d/o;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->this$0:Lc/c/a/b/d/o;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->$downloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

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

    new-instance v0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->this$0:Lc/c/a/b/d/o;

    iget-object v2, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->$downloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;-><init>(Lc/c/a/b/d/o;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->label:I

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

    iget-object p1, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->this$0:Lc/c/a/b/d/o;

    invoke-static {p1}, Lc/c/a/b/d/o;->a(Lc/c/a/b/d/o;)Lc/c/a/e/d/h/e/a/c;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->$downloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    .line 6
    iget-object v3, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->this$0:Lc/c/a/b/d/o;

    invoke-static {v3}, Lc/c/a/b/d/o;->b(Lc/c/a/b/d/o;)Lc/c/a/e/d/h/e/a/a/n;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->$downloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v3, v4}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "videoStorage.getBazaarVi\u2026                   ).path"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v1, v3}, Lc/c/a/b/b/e;->a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;

    move-result-object v1

    iput v2, p0, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;->label:I

    .line 10
    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/h/e/a/c;->a(Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 11
    :cond_2
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
