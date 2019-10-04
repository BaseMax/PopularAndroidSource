.class public final Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoDownloadManager.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/i/A;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $entityId:Ljava/lang/String;

.field public final synthetic this$0:Lc/c/a/e/d/i/A;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/i/A;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;->this$0:Lc/c/a/e/d/i/A;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;->$entityId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;->a(Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;)V
    .locals 7

    const-string v0, "submitVideoDownload"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;->this$0:Lc/c/a/e/d/i/A;

    new-instance v4, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2$1;-><init>(Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method
