.class final Lio/fabric/sdk/android/m;
.super Lio/fabric/sdk/android/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/i<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/network/d;

.field private b:Landroid/content/pm/PackageManager;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/pm/PackageInfo;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/i;",
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
            "Lio/fabric/sdk/android/k;",
            ">;>;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/i;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lio/fabric/sdk/android/i;-><init>()V

    .line 62
    new-instance v0, Lio/fabric/sdk/android/services/network/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/network/b;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/m;->a:Lio/fabric/sdk/android/services/network/d;

    .line 63
    iput-object p1, p0, Lio/fabric/sdk/android/m;->p:Ljava/util/concurrent/Future;

    .line 64
    iput-object p2, p0, Lio/fabric/sdk/android/m;->q:Ljava/util/Collection;

    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/settings/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/d;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/settings/n;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/k;",
            ">;)",
            "Lio/fabric/sdk/android/services/settings/d;"
        }
    .end annotation

    move-object v0, p0

    .line 208
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    new-instance v2, Lio/fabric/sdk/android/services/common/g;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    invoke-virtual {v2, v1}, Lio/fabric/sdk/android/services/common/g;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 212
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    iget-object v1, v0, Lio/fabric/sdk/android/m;->m:Ljava/lang/String;

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v10

    .line 2109
    iget-object v1, v0, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    .line 214
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 216
    new-instance v1, Lio/fabric/sdk/android/services/settings/d;

    iget-object v6, v0, Lio/fabric/sdk/android/m;->l:Ljava/lang/String;

    iget-object v7, v0, Lio/fabric/sdk/android/m;->k:Ljava/lang/String;

    iget-object v9, v0, Lio/fabric/sdk/android/m;->n:Ljava/lang/String;

    iget-object v11, v0, Lio/fabric/sdk/android/m;->o:Ljava/lang/String;

    const-string v12, "0"

    move-object v3, v1

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Lio/fabric/sdk/android/services/settings/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/settings/n;Ljava/util/Collection;)V

    return-object v1
.end method

.method private a()Ljava/lang/Boolean;
    .locals 8

    const-string v0, "Fabric"

    .line 97
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->getAppIconHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-direct {p0}, Lio/fabric/sdk/android/m;->b()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 104
    :try_start_0
    iget-object v4, p0, Lio/fabric/sdk/android/m;->p:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lio/fabric/sdk/android/m;->p:Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    goto :goto_0

    .line 107
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 111
    :goto_0
    iget-object v5, p0, Lio/fabric/sdk/android/m;->q:Ljava/util/Collection;

    invoke-static {v4, v5}, Lio/fabric/sdk/android/m;->a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v4

    .line 112
    iget-object v2, v2, Lio/fabric/sdk/android/services/settings/s;->appData:Lio/fabric/sdk/android/services/settings/e;

    .line 113
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "new"

    .line 1155
    iget-object v7, v2, Lio/fabric/sdk/android/services/settings/e;->status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1184
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lio/fabric/sdk/android/services/settings/n;->build(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/n;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lio/fabric/sdk/android/m;->a(Lio/fabric/sdk/android/services/settings/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/d;

    move-result-object v1

    .line 1185
    new-instance v4, Lio/fabric/sdk/android/services/settings/h;

    invoke-direct {p0}, Lio/fabric/sdk/android/m;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lio/fabric/sdk/android/services/settings/e;->url:Ljava/lang/String;

    iget-object v6, p0, Lio/fabric/sdk/android/m;->a:Lio/fabric/sdk/android/services/network/d;

    invoke-direct {v4, p0, v5, v2, v6}, Lio/fabric/sdk/android/services/settings/h;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V

    .line 1186
    invoke-virtual {v4, v1}, Lio/fabric/sdk/android/services/settings/h;->invoke(Lio/fabric/sdk/android/services/settings/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->getInstance()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/settings/q;->loadSettingsSkippingCache()Z

    move-result v0

    goto :goto_1

    .line 1163
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Failed to create app with Crashlytics service."

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v4}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const-string v6, "configured"

    .line 1167
    iget-object v7, v2, Lio/fabric/sdk/android/services/settings/e;->status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1169
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->getInstance()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/settings/q;->loadSettingsSkippingCache()Z

    move-result v0

    :goto_1
    move v3, v0

    goto :goto_2

    .line 1170
    :cond_3
    iget-boolean v6, v2, Lio/fabric/sdk/android/services/settings/e;->updateRequired:Z

    if-eqz v6, :cond_4

    .line 1173
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "Server says an update is required - forcing a full App update."

    invoke-interface {v6, v0, v7}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lio/fabric/sdk/android/services/settings/n;->build(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/n;

    move-result-object v1

    .line 1202
    invoke-direct {p0, v1, v4}, Lio/fabric/sdk/android/m;->a(Lio/fabric/sdk/android/services/settings/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/d;

    move-result-object v1

    .line 1203
    new-instance v4, Lio/fabric/sdk/android/services/settings/x;

    invoke-direct {p0}, Lio/fabric/sdk/android/m;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v2, Lio/fabric/sdk/android/services/settings/e;->url:Ljava/lang/String;

    iget-object v7, p0, Lio/fabric/sdk/android/m;->a:Lio/fabric/sdk/android/services/network/d;

    invoke-direct {v4, p0, v6, v2, v7}, Lio/fabric/sdk/android/services/settings/x;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V

    .line 1204
    invoke-virtual {v4, v1}, Lio/fabric/sdk/android/services/settings/x;->invoke(Lio/fabric/sdk/android/services/settings/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 115
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v4, "Error performing auto configuration."

    invoke-interface {v2, v0, v4, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/k;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/i;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/k;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/i;

    .line 138
    invoke-virtual {v0}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/fabric/sdk/android/k;

    invoke-virtual {v0}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v0}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v4, "binary"

    invoke-direct {v2, v3, v0, v4}, Lio/fabric/sdk/android/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private b()Lio/fabric/sdk/android/services/settings/s;
    .locals 7

    .line 123
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->getInstance()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    iget-object v2, p0, Lio/fabric/sdk/android/m;->g:Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v3, p0, Lio/fabric/sdk/android/m;->a:Lio/fabric/sdk/android/services/network/d;

    iget-object v4, p0, Lio/fabric/sdk/android/m;->k:Ljava/lang/String;

    iget-object v5, p0, Lio/fabric/sdk/android/m;->l:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lio/fabric/sdk/android/m;->c()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 124
    invoke-virtual/range {v0 .. v6}, Lio/fabric/sdk/android/services/settings/q;->initialize(Lio/fabric/sdk/android/i;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/network/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->loadSettingsData()Z

    .line 128
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->getInstance()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 221
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-direct {p0}, Lio/fabric/sdk/android/m;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.17.dev"

    return-object v0
.end method

.method protected final onPreExecute()Z
    .locals 5

    const/4 v0, 0x0

    .line 1109
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    .line 75
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/m;->m:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/m;->b:Landroid/content/pm/PackageManager;

    .line 77
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/m;->i:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lio/fabric/sdk/android/m;->b:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lio/fabric/sdk/android/m;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/m;->j:Landroid/content/pm/PackageInfo;

    .line 79
    iget-object v1, p0, Lio/fabric/sdk/android/m;->j:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/m;->k:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lio/fabric/sdk/android/m;->j:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/fabric/sdk/android/m;->j:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lio/fabric/sdk/android/m;->l:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lio/fabric/sdk/android/m;->b:Landroid/content/pm/PackageManager;

    .line 83
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/m;->n:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lio/fabric/sdk/android/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/m;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 90
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed init"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
