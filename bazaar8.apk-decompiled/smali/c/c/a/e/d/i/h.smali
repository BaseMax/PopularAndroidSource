.class public final Lc/c/a/e/d/i/h;
.super Ljava/lang/Object;
.source "DownloadProgressDataSource.kt"


# instance fields
.field public final a:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V
    .locals 1

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/h;->a:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li/a/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/i/h;->a:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d(Ljava/lang/String;)Li/a/b/t;

    move-result-object p1

    return-object p1
.end method
