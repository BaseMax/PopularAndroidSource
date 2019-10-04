.class public final Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;
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
        "Ljava/lang/Throwable;",
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

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;->this$0:Lc/c/a/e/d/i/A;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;->$entityId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;->this$0:Lc/c/a/e/d/i/A;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;->$entityId:Ljava/lang/String;

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-static {p1, v0, v1}, Lc/c/a/e/d/i/A;->a(Lc/c/a/e/d/i/A;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    return-void
.end method
