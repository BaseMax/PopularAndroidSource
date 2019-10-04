.class public final Lc/c/a/b/h/a/a/a;
.super Lc/c/a/c$a;
.source "UpdateCheckService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/b/h/a/a/a;->a:Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;

    invoke-direct {p0}, Lc/c/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lc/c/a/b/h/a/a/a;->a:Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;

    invoke-virtual {v2}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 2
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v1, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)J
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService$onBind$1$getVersionCode$versionCode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService$onBind$1$getVersionCode$versionCode$1;-><init>(Lc/c/a/b/h/a/a/a;Ljava/lang/String;Lh/c/b;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/b/h/a/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
