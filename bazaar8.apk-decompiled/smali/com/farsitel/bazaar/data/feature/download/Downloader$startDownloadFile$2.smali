.class public final Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Downloader.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/math/BigInteger;Ljava/math/BigInteger;Li/a/b/x;Li/a/b/x;Lh/f/a/b;ILjavax/crypto/Cipher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $destFile:Ljava/io/File;

.field public final synthetic $downloadStatus:Li/a/b/x;

.field public final synthetic $downloadedFileIsValid$1:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;

.field public final synthetic $entityId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$entityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$downloadStatus:Li/a/b/x;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$downloadedFileIsValid$1:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$destFile:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->e(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$entityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$downloadStatus:Li/a/b/x;

    sget-object v2, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->CHECKING:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-static {v0, v1, v2}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$downloadedFileIsValid$1:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->invoke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$downloadStatus:Li/a/b/x;

    sget-object v2, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-static {v0, v1, v2}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$downloadStatus:Li/a/b/x;

    sget-object v2, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->FAILED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-static {v0, v1, v2}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->$entityId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;)V

    return-void
.end method
