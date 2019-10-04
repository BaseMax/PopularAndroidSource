.class public final Lc/c/a/b/d/b;
.super Lc/c/a/b/d/i;
.source "AppManager.kt"


# instance fields
.field public final g:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/content/Context;

.field public final i:Lc/c/a/e/c;

.field public final j:Lc/c/a/e/d/b/ba;

.field public final k:Lc/c/a/e/d/u/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/e/c;Lc/c/a/e/d/b/ba;Lc/c/a/e/d/u/a;Lc/c/a/b/d/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradableAppRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadStateManager"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p6}, Lc/c/a/b/d/i;-><init>(Landroid/content/Context;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/b/d/d;)V

    iput-object p1, p0, Lc/c/a/b/d/b;->h:Landroid/content/Context;

    iput-object p3, p0, Lc/c/a/b/d/b;->i:Lc/c/a/e/c;

    iput-object p4, p0, Lc/c/a/b/d/b;->j:Lc/c/a/e/d/b/ba;

    iput-object p5, p0, Lc/c/a/b/d/b;->k:Lc/c/a/e/d/u/a;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/b/d/b;->g:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/d/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d/b;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/b/d/b;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/b/d/b;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/b/d/b;)Lc/c/a/e/d/b/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d/b;->j:Lc/c/a/e/d/b/ba;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 5

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v1, p0, Lc/c/a/b/d/b;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Lc/c/a/c/b/h;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    cmp-long p2, v1, v3

    if-ltz p2, :cond_2

    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INSTALLED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_1

    .line 7
    :cond_2
    iget-object p2, p0, Lc/c/a/b/d/b;->i:Lc/c/a/e/c;

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {p2, p1, v1}, Lc/c/a/e/c;->j(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 8
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_1

    .line 9
    :cond_4
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    :goto_1
    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 3

    const-string v0, "appDownloadModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lc/c/a/b/d/i;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/c/a/b/d/i;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_0
    :try_start_1
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    iget-object v0, p0, Lc/c/a/b/d/b;->h:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "DOWNLOAD"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    sget-object v2, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {v2, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 19
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PREPARING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {p0, p1, v0}, Lc/c/a/b/d/i;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V
    .locals 8

    const-string v0, "packageChangeModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lc/c/a/b/d/b;->g:Lb/r/t;

    invoke-virtual {v0, p1}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/b/d/i;->g(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    invoke-virtual {p0}, Lc/c/a/b/d/i;->d()Li/a/u;

    move-result-object v1

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v3

    new-instance v5, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;-><init>(Lc/c/a/b/d/b;Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;Lh/c/b;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-super {p0, p1, p2}, Lc/c/a/b/d/i;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    iget-object v0, p0, Lc/c/a/b/d/b;->k:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 23
    iget-object p2, p0, Lc/c/a/b/d/b;->i:Lc/c/a/e/c;

    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {p2, p1, v0}, Lc/c/a/e/c;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z

    :cond_0
    return-void
.end method

.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/b;->g:Lb/r/t;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/b;->i:Lc/c/a/e/c;

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v0, p1, v1}, Lc/c/a/e/c;->d(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/b/d/b;->m(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final m(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/b;->i:Lc/c/a/e/c;

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v0, p1, v1}, Lc/c/a/e/c;->d(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/b/d/b;->i:Lc/c/a/e/c;

    invoke-virtual {v0, p1}, Lc/c/a/e/c;->c(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final n(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/b;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v1, p0, Lc/c/a/b/d/b;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/b;->i:Lc/c/a/e/c;

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v0, p1, v1}, Lc/c/a/e/c;->k(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)V

    return-void
.end method
