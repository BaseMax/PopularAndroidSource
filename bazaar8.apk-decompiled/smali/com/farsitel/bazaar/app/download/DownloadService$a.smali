.class public final Lcom/farsitel/bazaar/app/download/DownloadService$a;
.super Ljava/lang/Object;
.source "DownloadService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/app/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/app/download/DownloadService$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService$a;Landroid/os/Bundle;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/app/download/DownloadService$a;Landroid/os/Bundle;)Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->b(Landroid/os/Bundle;)Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/app/download/DownloadService$a;Landroid/os/Bundle;)Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->c(Landroid/os/Bundle;)Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/app/download/DownloadService$a;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->d(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "appDownloaderModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "downloader"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "appDownloaderModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "downloader"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(Ljava/util/List;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 13
    invoke-static {v2}, Lc/c/a/n/g/a;->a(Lcom/farsitel/bazaar/data/entity/UpgradableApp;)Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "batchDownloader"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public final a()Li/a/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/t<",
            "Lc/c/a/b/b/b;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/farsitel/bazaar/app/download/DownloadService;->b()Li/a/b/h;

    move-result-object v0

    invoke-interface {v0}, Li/a/b/h;->b()Li/a/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "batchDownloader"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final b(Landroid/os/Bundle;)Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "downloader"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(Landroid/os/Bundle;)Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "downloader"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    return-object p1
.end method

.method public final d(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "packageName"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
