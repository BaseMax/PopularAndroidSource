.class public Le/a/a/a/p;
.super Le/a/a/a/l;
.source "Onboarding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/a/l<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/a/a/a/e/f;

.field public b:Landroid/content/pm/PackageManager;

.field public c:Ljava/lang/String;

.field public d:Landroid/content/pm/PackageInfo;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public final j:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a/a/n;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Le/a/a/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a/a/n;",
            ">;>;",
            "Ljava/util/Collection<",
            "Le/a/a/a/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/a/a/l;-><init>()V

    .line 2
    new-instance v0, Le/a/a/a/a/e/c;

    invoke-direct {v0}, Le/a/a/a/a/e/c;-><init>()V

    iput-object v0, p0, Le/a/a/a/p;->a:Le/a/a/a/a/e/f;

    .line 3
    iput-object p1, p0, Le/a/a/a/p;->j:Ljava/util/concurrent/Future;

    .line 4
    iput-object p2, p0, Le/a/a/a/p;->k:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(Le/a/a/a/a/g/o;Ljava/util/Collection;)Le/a/a/a/a/g/d;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/a/a/g/o;",
            "Ljava/util/Collection<",
            "Le/a/a/a/n;",
            ">;)",
            "Le/a/a/a/a/g/d;"
        }
    .end annotation

    move-object v0, p0

    .line 18
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 19
    new-instance v2, Le/a/a/a/a/b/i;

    invoke-direct {v2}, Le/a/a/a/a/b/i;-><init>()V

    invoke-virtual {v2, v1}, Le/a/a/a/a/b/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 21
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 22
    iget-object v1, v0, Le/a/a/a/p;->g:Ljava/lang/String;

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v10

    .line 23
    invoke-virtual {p0}, Le/a/a/a/l;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->d()Ljava/lang/String;

    move-result-object v5

    .line 24
    new-instance v1, Le/a/a/a/a/g/d;

    iget-object v6, v0, Le/a/a/a/p;->f:Ljava/lang/String;

    iget-object v7, v0, Le/a/a/a/p;->e:Ljava/lang/String;

    iget-object v9, v0, Le/a/a/a/p;->h:Ljava/lang/String;

    iget-object v11, v0, Le/a/a/a/p;->i:Ljava/lang/String;

    const-string v12, "0"

    move-object v3, v1

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Le/a/a/a/a/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Le/a/a/a/a/g/o;Ljava/util/Collection;)V

    return-object v1
.end method

.method public a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a/a/n;",
            ">;",
            "Ljava/util/Collection<",
            "Le/a/a/a/l;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a/a/n;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/a/l;

    .line 2
    invoke-virtual {v0}, Le/a/a/a/l;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/a/a/l;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/a/a/a/n;

    invoke-virtual {v0}, Le/a/a/a/l;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Le/a/a/a/l;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v4, "binary"

    invoke-direct {v2, v3, v0, v4}, Le/a/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final a(Le/a/a/a/a/g/e;Le/a/a/a/a/g/o;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/a/a/g/e;",
            "Le/a/a/a/a/g/o;",
            "Ljava/util/Collection<",
            "Le/a/a/a/n;",
            ">;)Z"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p2, p3}, Le/a/a/a/p;->a(Le/a/a/a/a/g/o;Ljava/util/Collection;)Le/a/a/a/a/g/d;

    move-result-object p2

    .line 16
    new-instance p3, Le/a/a/a/a/g/z;

    invoke-virtual {p0}, Le/a/a/a/p;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Le/a/a/a/a/g/e;->c:Ljava/lang/String;

    iget-object v1, p0, Le/a/a/a/p;->a:Le/a/a/a/a/e/f;

    invoke-direct {p3, p0, v0, p1, v1}, Le/a/a/a/a/g/z;-><init>(Le/a/a/a/l;Ljava/lang/String;Ljava/lang/String;Le/a/a/a/a/e/f;)V

    .line 17
    invoke-virtual {p3, p2}, Le/a/a/a/a/g/a;->a(Le/a/a/a/a/g/d;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Le/a/a/a/a/g/e;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/a/a/a/g/e;",
            "Ljava/util/Collection<",
            "Le/a/a/a/n;",
            ">;)Z"
        }
    .end annotation

    .line 6
    iget-object v0, p2, Le/a/a/a/a/g/e;->b:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Fabric"

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le/a/a/a/p;->b(Ljava/lang/String;Le/a/a/a/a/g/e;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Le/a/a/a/a/g/s;->b()Le/a/a/a/a/g/s;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/a/a/g/s;->d()Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Failed to create app with Crashlytics service."

    invoke-interface {p1, v1, p3, p2}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p2, Le/a/a/a/a/g/e;->b:Ljava/lang/String;

    const-string v2, "configured"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Le/a/a/a/a/g/s;->b()Le/a/a/a/a/g/s;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/a/a/g/s;->d()Z

    move-result p1

    goto :goto_0

    .line 12
    :cond_2
    iget-boolean v0, p2, Le/a/a/a/a/g/e;->f:Z

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    const-string v2, "Server says an update is required - forcing a full App update."

    invoke-interface {v0, v1, v2}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Le/a/a/a/p;->c(Ljava/lang/String;Le/a/a/a/a/g/e;Ljava/util/Collection;)Z

    :cond_3
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/String;Le/a/a/a/a/g/e;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/a/a/a/g/e;",
            "Ljava/util/Collection<",
            "Le/a/a/a/n;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le/a/a/a/a/g/o;->a(Landroid/content/Context;Ljava/lang/String;)Le/a/a/a/a/g/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Le/a/a/a/p;->a(Le/a/a/a/a/g/o;Ljava/util/Collection;)Le/a/a/a/a/g/d;

    move-result-object p1

    .line 2
    new-instance p3, Le/a/a/a/a/g/i;

    invoke-virtual {p0}, Le/a/a/a/p;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Le/a/a/a/a/g/e;->c:Ljava/lang/String;

    iget-object v1, p0, Le/a/a/a/p;->a:Le/a/a/a/a/e/f;

    invoke-direct {p3, p0, v0, p2, v1}, Le/a/a/a/a/g/i;-><init>(Le/a/a/a/l;Ljava/lang/String;Ljava/lang/String;Le/a/a/a/a/e/f;)V

    .line 3
    invoke-virtual {p3, p1}, Le/a/a/a/a/g/a;->a(Le/a/a/a/a/g/d;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;Le/a/a/a/a/g/e;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/a/a/a/g/e;",
            "Ljava/util/Collection<",
            "Le/a/a/a/n;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le/a/a/a/a/g/o;->a(Landroid/content/Context;Ljava/lang/String;)Le/a/a/a/a/g/o;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Le/a/a/a/p;->a(Le/a/a/a/a/g/e;Le/a/a/a/a/g/o;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public doInBackground()Ljava/lang/Boolean;
    .locals 4

    .line 2
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Le/a/a/a/p;->f()Le/a/a/a/a/g/u;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    iget-object v2, p0, Le/a/a/a/p;->j:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Le/a/a/a/p;->j:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7
    :goto_0
    iget-object v3, p0, Le/a/a/a/p;->k:Ljava/util/Collection;

    invoke-virtual {p0, v2, v3}, Le/a/a/a/p;->a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;

    .line 8
    iget-object v1, v1, Le/a/a/a/a/g/u;->a:Le/a/a/a/a/g/e;

    .line 9
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Le/a/a/a/p;->a(Ljava/lang/String;Le/a/a/a/a/g/e;Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error performing auto configuration."

    invoke-interface {v1, v2, v3, v0}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/p;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final f()Le/a/a/a/a/g/u;
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Le/a/a/a/a/g/s;->b()Le/a/a/a/a/g/s;

    move-result-object v8

    iget-object v2, p0, Le/a/a/a/l;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v3, p0, Le/a/a/a/p;->a:Le/a/a/a/a/e/f;

    iget-object v4, p0, Le/a/a/a/p;->e:Ljava/lang/String;

    iget-object v5, p0, Le/a/a/a/p;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/a/a/a/p;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/a/a/a/b/n;->a(Landroid/content/Context;)Le/a/a/a/a/b/n;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Le/a/a/a/a/g/s;->a(Le/a/a/a/l;Lio/fabric/sdk/android/services/common/IdManager;Le/a/a/a/a/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/a/a/a/b/n;)Le/a/a/a/a/g/s;

    .line 5
    invoke-virtual {v8}, Le/a/a/a/a/g/s;->c()Z

    .line 6
    invoke-static {}, Le/a/a/a/a/g/s;->b()Le/a/a/a/a/g/s;

    move-result-object v0

    invoke-virtual {v0}, Le/a/a/a/a/g/s;->a()Le/a/a/a/a/g/u;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.8.32"

    return-object v0
.end method

.method public onPreExecute()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/a/a/l;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/a/a/p;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Le/a/a/a/p;->b:Landroid/content/pm/PackageManager;

    .line 3
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/a/a/p;->c:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/a/a/a/p;->b:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Le/a/a/a/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Le/a/a/a/p;->d:Landroid/content/pm/PackageInfo;

    .line 5
    iget-object v1, p0, Le/a/a/a/p;->d:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/a/a/p;->e:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Le/a/a/a/p;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/a/a/a/p;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Le/a/a/a/p;->f:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Le/a/a/a/p;->b:Landroid/content/pm/PackageManager;

    .line 8
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/a/a/p;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/a/a/p;->i:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 12
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed init"

    invoke-interface {v2, v3, v4, v1}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
