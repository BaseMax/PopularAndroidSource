.class public final Lc/c/a/e/g/b;
.super Ljava/lang/Object;
.source "DownloadConfig.kt"


# instance fields
.field public a:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

.field public final b:Lc/c/a/e/d/u/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/u/a;)V
    .locals 1

    const-string v0, "settingsRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/g/b;->b:Lc/c/a/e/d/u/a;

    .line 2
    iget-object p1, p0, Lc/c/a/e/g/b;->b:Lc/c/a/e/d/u/a;

    invoke-virtual {p1}, Lc/c/a/e/d/u/a;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->SINGLE_CONNECTION:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->PARALLEL_CONNECTION:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    .line 5
    :goto_0
    iput-object p1, p0, Lc/c/a/e/g/b;->a:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    return-void
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/b;->a:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/c/a/e/g/b;->a:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    return-void
.end method
