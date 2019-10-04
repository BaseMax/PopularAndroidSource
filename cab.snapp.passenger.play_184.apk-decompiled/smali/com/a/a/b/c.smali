.class public Lcom/a/a/b/c;
.super Lio/fabric/sdk/android/i;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/common/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/i<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/fabric/sdk/android/services/common/l;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Beta"


# instance fields
.field private final a:Lio/fabric/sdk/android/services/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/b/h;

.field private i:Lcom/a/a/b/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lio/fabric/sdk/android/i;-><init>()V

    .line 39
    new-instance v0, Lio/fabric/sdk/android/services/a/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/a/b;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/c;->a:Lio/fabric/sdk/android/services/a/b;

    .line 40
    new-instance v0, Lcom/a/a/b/h;

    invoke-direct {v0}, Lcom/a/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/c;->b:Lcom/a/a/b/h;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "Beta"

    const/4 v1, 0x0

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/a/a/b/c;->a:Lio/fabric/sdk/android/services/a/b;

    iget-object v3, p0, Lcom/a/a/b/c;->b:Lcom/a/a/b/h;

    invoke-virtual {v2, p1, v3}, Lio/fabric/sdk/android/services/a/b;->get(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, ""

    .line 147
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Failed to load the Beta device token"

    invoke-interface {v2, v0, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beta device token present: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static b(Landroid/content/Context;)Lcom/a/a/b/d;
    .locals 7

    const-string v0, "Error closing Beta build properties asset"

    const-string v1, "Beta"

    const/4 v2, 0x0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v3, "crashlytics-build.properties"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 175
    :try_start_1
    invoke-static {p0}, Lcom/a/a/b/d;->fromPropertiesStream(Ljava/io/InputStream;)Lcom/a/a/b/d;

    move-result-object v2

    .line 177
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/a/a/b/d;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " build properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/a/a/b/d;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/a/a/b/d;->versionCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/a/a/b/d;->buildId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v3

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 186
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 188
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    invoke-interface {v3, v1, v0, p0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    move-object p0, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto :goto_4

    :catch_2
    move-exception v3

    move-object p0, v2

    .line 182
    :goto_2
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "Error reading Beta build properties"

    invoke-interface {v4, v1, v5, v3}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 186
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 188
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-object p0

    :goto_4
    if-eqz p0, :cond_3

    .line 186
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 188
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    invoke-interface {v3, v1, v0, p0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :cond_3
    :goto_5
    throw v2
.end method

.method public static getInstance()Lcom/a/a/b/c;
    .locals 1

    .line 47
    const-class v0, Lcom/a/a/b/c;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/i;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/a/a/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic doInBackground()Ljava/lang/Object;
    .locals 12

    .line 2060
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta kit initializing..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    invoke-virtual {p0}, Lcom/a/a/b/c;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2109
    iget-object v6, p0, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    .line 2064
    invoke-virtual {v6}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    .line 2065
    invoke-direct {p0, v4}, Lcom/a/a/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "A Beta device token was not found for this app"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 2072
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "Beta device token is present, checking for app updates."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->getInstance()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2161
    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/s;->betaSettingsData:Lio/fabric/sdk/android/services/settings/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 2075
    invoke-static {v4}, Lcom/a/a/b/c;->b(Landroid/content/Context;)Lcom/a/a/b/d;

    move-result-object v8

    if-eqz v7, :cond_2

    .line 3137
    iget-object v0, v7, Lio/fabric/sdk/android/services/settings/f;->updateUrl:Ljava/lang/String;

    .line 3138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 2078
    iget-object v3, p0, Lcom/a/a/b/c;->i:Lcom/a/a/b/j;

    new-instance v9, Lio/fabric/sdk/android/services/c/d;

    invoke-direct {v9, p0}, Lio/fabric/sdk/android/services/c/d;-><init>(Lio/fabric/sdk/android/i;)V

    new-instance v10, Lio/fabric/sdk/android/services/common/q;

    invoke-direct {v10}, Lio/fabric/sdk/android/services/common/q;-><init>()V

    new-instance v11, Lio/fabric/sdk/android/services/network/b;

    .line 2086
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-direct {v11, v0}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/l;)V

    move-object v5, p0

    .line 2078
    invoke-interface/range {v3 .. v11}, Lcom/a/a/b/j;->initialize(Landroid/content/Context;Lcom/a/a/b/c;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/f;Lcom/a/a/b/d;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/network/d;)V

    .line 2089
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDeviceIdentifiers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    .line 113
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/a/a/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    sget-object v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.5.dev"

    return-object v0
.end method

.method public final onPreExecute()Z
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/a/a/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/a/a/b/c;->getFabric()Lio/fabric/sdk/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/c;->getActivityLifecycleManager()Lio/fabric/sdk/android/a;

    move-result-object v0

    .line 1103
    invoke-virtual {p0}, Lcom/a/a/b/c;->getFabric()Lio/fabric/sdk/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/c;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 1104
    new-instance v2, Lcom/a/a/b/b;

    invoke-direct {v2, v0, v1}, Lcom/a/a/b/b;-><init>(Lio/fabric/sdk/android/a;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 1107
    :cond_0
    new-instance v2, Lcom/a/a/b/i;

    invoke-direct {v2}, Lcom/a/a/b/i;-><init>()V

    .line 54
    :goto_0
    iput-object v2, p0, Lcom/a/a/b/c;->i:Lcom/a/a/b/j;

    const/4 v0, 0x1

    return v0
.end method
