.class final Lio/fabric/sdk/android/services/settings/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/r;


# instance fields
.field private final a:Lio/fabric/sdk/android/services/settings/v;

.field private final b:Lio/fabric/sdk/android/services/settings/u;

.field private final c:Lio/fabric/sdk/android/services/common/k;

.field private final d:Lio/fabric/sdk/android/services/settings/g;

.field private final e:Lio/fabric/sdk/android/services/settings/w;

.field private final f:Lio/fabric/sdk/android/i;

.field private final g:Lio/fabric/sdk/android/services/c/c;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Lio/fabric/sdk/android/services/settings/v;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/settings/u;Lio/fabric/sdk/android/services/settings/g;Lio/fabric/sdk/android/services/settings/w;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/j;->f:Lio/fabric/sdk/android/i;

    .line 55
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/j;->a:Lio/fabric/sdk/android/services/settings/v;

    .line 56
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/j;->c:Lio/fabric/sdk/android/services/common/k;

    .line 57
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/j;->b:Lio/fabric/sdk/android/services/settings/u;

    .line 58
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/j;->d:Lio/fabric/sdk/android/services/settings/g;

    .line 59
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/j;->e:Lio/fabric/sdk/android/services/settings/w;

    .line 60
    new-instance p1, Lio/fabric/sdk/android/services/c/d;

    iget-object p2, p0, Lio/fabric/sdk/android/services/settings/j;->f:Lio/fabric/sdk/android/i;

    invoke-direct {p1, p2}, Lio/fabric/sdk/android/services/c/d;-><init>(Lio/fabric/sdk/android/i;)V

    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/j;->g:Lio/fabric/sdk/android/services/c/c;

    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/s;
    .locals 6

    const-string v0, "Fabric"

    const/4 v1, 0x0

    .line 108
    :try_start_0
    sget-object v2, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {v2, p1}, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    iget-object v2, p0, Lio/fabric/sdk/android/services/settings/j;->d:Lio/fabric/sdk/android/services/settings/g;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/settings/g;->readCachedSettings()Lorg/a/c;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 112
    iget-object v3, p0, Lio/fabric/sdk/android/services/settings/j;->b:Lio/fabric/sdk/android/services/settings/u;

    iget-object v4, p0, Lio/fabric/sdk/android/services/settings/j;->c:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v3, v4, v2}, Lio/fabric/sdk/android/services/settings/u;->buildFromJson(Lio/fabric/sdk/android/services/common/k;Lorg/a/c;)Lio/fabric/sdk/android/services/settings/s;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Loaded cached settings: "

    .line 116
    invoke-static {v2, v4}, Lio/fabric/sdk/android/services/settings/j;->a(Lorg/a/c;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lio/fabric/sdk/android/services/settings/j;->c:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/k;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 120
    sget-object v2, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {v2, p1}, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 121
    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/settings/s;->isExpired(J)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v2, "Cached settings have expired."

    invoke-interface {p1, v0, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 123
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v1, "Returning cached settings."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    .line 128
    :cond_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v2, "Failed to transform cached settings data."

    invoke-interface {p1, v0, v2, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 132
    :cond_3
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v2, "No cached settings data found."

    invoke-interface {p1, v0, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 136
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Failed to get cached settings"

    invoke-interface {v2, v0, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v1
.end method

.method private a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/j;->f:Lio/fabric/sdk/android/i;

    invoke-virtual {v1}, Lio/fabric/sdk/android/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/a/c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 143
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fabric"

    invoke-interface {v0, p1, p0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final loadSettingsData()Lio/fabric/sdk/android/services/settings/s;
    .locals 1

    .line 64
    sget-object v0, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->USE_CACHE:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/settings/j;->loadSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    return-object v0
.end method

.method public final loadSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/s;
    .locals 5

    const/4 v0, 0x0

    .line 75
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->isDebuggable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "existing_instance_identifier"

    if-nez v1, :cond_0

    .line 2151
    :try_start_1
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/j;->g:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, ""

    .line 2152
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    invoke-direct {p0}, Lio/fabric/sdk/android/services/settings/j;->a()Ljava/lang/String;

    move-result-object v3

    .line 1165
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/settings/j;->a(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 80
    iget-object p1, p0, Lio/fabric/sdk/android/services/settings/j;->e:Lio/fabric/sdk/android/services/settings/w;

    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/j;->a:Lio/fabric/sdk/android/services/settings/v;

    invoke-interface {p1, v1}, Lio/fabric/sdk/android/services/settings/w;->invoke(Lio/fabric/sdk/android/services/settings/v;)Lorg/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/j;->b:Lio/fabric/sdk/android/services/settings/u;

    iget-object v3, p0, Lio/fabric/sdk/android/services/settings/j;->c:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v1, v3, p1}, Lio/fabric/sdk/android/services/settings/u;->buildFromJson(Lio/fabric/sdk/android/services/common/k;Lorg/a/c;)Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/j;->d:Lio/fabric/sdk/android/services/settings/g;

    iget-wide v3, v0, Lio/fabric/sdk/android/services/settings/s;->expiresAtMillis:J

    invoke-interface {v1, v3, v4, p1}, Lio/fabric/sdk/android/services/settings/g;->writeCachedSettings(JLorg/a/c;)V

    const-string v1, "Loaded settings: "

    .line 86
    invoke-static {p1, v1}, Lio/fabric/sdk/android/services/settings/j;->a(Lorg/a/c;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lio/fabric/sdk/android/services/settings/j;->a()Ljava/lang/String;

    move-result-object p1

    .line 2157
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/j;->g:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2158
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2159
    iget-object p1, p0, Lio/fabric/sdk/android/services/settings/j;->g:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {p1, v1}, Lio/fabric/sdk/android/services/c/c;->save(Landroid/content/SharedPreferences$Editor;)Z

    :cond_1
    if-nez v0, :cond_2

    .line 95
    sget-object p1, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/settings/j;->a(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v1, v2, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v0
.end method
