.class public Le/a/a/a/a/g/k;
.super Ljava/lang/Object;
.source "DefaultSettingsController.java"

# interfaces
.implements Le/a/a/a/a/g/t;


# instance fields
.field public final a:Le/a/a/a/a/g/x;

.field public final b:Le/a/a/a/a/g/w;

.field public final c:Le/a/a/a/a/b/m;

.field public final d:Le/a/a/a/a/g/h;

.field public final e:Le/a/a/a/a/g/y;

.field public final f:Le/a/a/a/l;

.field public final g:Le/a/a/a/a/f/c;

.field public final h:Le/a/a/a/a/b/n;


# direct methods
.method public constructor <init>(Le/a/a/a/l;Le/a/a/a/a/g/x;Le/a/a/a/a/b/m;Le/a/a/a/a/g/w;Le/a/a/a/a/g/h;Le/a/a/a/a/g/y;Le/a/a/a/a/b/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/a/a/g/k;->f:Le/a/a/a/l;

    .line 3
    iput-object p2, p0, Le/a/a/a/a/g/k;->a:Le/a/a/a/a/g/x;

    .line 4
    iput-object p3, p0, Le/a/a/a/a/g/k;->c:Le/a/a/a/a/b/m;

    .line 5
    iput-object p4, p0, Le/a/a/a/a/g/k;->b:Le/a/a/a/a/g/w;

    .line 6
    iput-object p5, p0, Le/a/a/a/a/g/k;->d:Le/a/a/a/a/g/h;

    .line 7
    iput-object p6, p0, Le/a/a/a/a/g/k;->e:Le/a/a/a/a/g/y;

    .line 8
    iput-object p7, p0, Le/a/a/a/a/g/k;->h:Le/a/a/a/a/b/n;

    .line 9
    new-instance p1, Le/a/a/a/a/f/d;

    iget-object p2, p0, Le/a/a/a/a/g/k;->f:Le/a/a/a/l;

    invoke-direct {p1, p2}, Le/a/a/a/a/f/d;-><init>(Le/a/a/a/l;)V

    iput-object p1, p0, Le/a/a/a/a/g/k;->g:Le/a/a/a/a/f/c;

    return-void
.end method


# virtual methods
.method public a()Le/a/a/a/a/g/u;
    .locals 1

    .line 1
    sget-object v0, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->USE_CACHE:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {p0, v0}, Le/a/a/a/a/g/k;->a(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Le/a/a/a/a/g/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Le/a/a/a/a/g/u;
    .locals 5

    .line 2
    iget-object v0, p0, Le/a/a/a/a/g/k;->h:Le/a/a/a/a/b/n;

    invoke-virtual {v0}, Le/a/a/a/a/b/n;->a()Z

    move-result v0

    const-string v1, "Fabric"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object p1

    const-string v0, "Not fetching settings, because data collection is disabled by Firebase."

    invoke-interface {p1, v1, v0}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Le/a/a/a/f;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/a/a/a/a/g/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Le/a/a/a/a/g/k;->b(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Le/a/a/a/a/g/u;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 6
    iget-object p1, p0, Le/a/a/a/a/g/k;->e:Le/a/a/a/a/g/y;

    iget-object v0, p0, Le/a/a/a/a/g/k;->a:Le/a/a/a/a/g/x;

    invoke-interface {p1, v0}, Le/a/a/a/a/g/y;->a(Le/a/a/a/a/g/x;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Le/a/a/a/a/g/k;->b:Le/a/a/a/a/g/w;

    iget-object v3, p0, Le/a/a/a/a/g/k;->c:Le/a/a/a/a/b/m;

    invoke-interface {v0, v3, p1}, Le/a/a/a/a/g/w;->a(Le/a/a/a/a/b/m;Lorg/json/JSONObject;)Le/a/a/a/a/g/u;

    move-result-object v2

    .line 8
    iget-object v0, p0, Le/a/a/a/a/g/k;->d:Le/a/a/a/a/g/h;

    iget-wide v3, v2, Le/a/a/a/a/g/u;->g:J

    invoke-interface {v0, v3, v4, p1}, Le/a/a/a/a/g/h;->a(JLorg/json/JSONObject;)V

    const-string v0, "Loaded settings: "

    .line 9
    invoke-virtual {p0, p1, v0}, Le/a/a/a/a/g/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Le/a/a/a/a/g/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/a/a/g/k;->a(Ljava/lang/String;)Z

    :cond_2
    if-nez v2, :cond_3

    .line 11
    sget-object p1, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {p0, p1}, Le/a/a/a/a/g/k;->b(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Le/a/a/a/a/g/u;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    const-string v3, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v0, v1, v3, p1}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v2
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fabric"

    invoke-interface {v0, p2, p1}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Le/a/a/a/a/g/k;->g:Le/a/a/a/a/f/c;

    invoke-interface {v0}, Le/a/a/a/a/f/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    .line 15
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    iget-object p1, p0, Le/a/a/a/a/g/k;->g:Le/a/a/a/a/f/c;

    invoke-interface {p1, v0}, Le/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result p1

    return p1
.end method

.method public final b(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Le/a/a/a/a/g/u;
    .locals 6

    const-string v0, "Fabric"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2
    iget-object v2, p0, Le/a/a/a/a/g/k;->d:Le/a/a/a/a/g/h;

    invoke-interface {v2}, Le/a/a/a/a/g/h;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3
    iget-object v3, p0, Le/a/a/a/a/g/k;->b:Le/a/a/a/a/g/w;

    iget-object v4, p0, Le/a/a/a/a/g/k;->c:Le/a/a/a/a/b/m;

    invoke-interface {v3, v4, v2}, Le/a/a/a/a/g/w;->a(Le/a/a/a/a/b/m;Lorg/json/JSONObject;)Le/a/a/a/a/g/u;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Loaded cached settings: "

    .line 4
    invoke-virtual {p0, v2, v4}, Le/a/a/a/a/g/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Le/a/a/a/a/g/k;->c:Le/a/a/a/a/b/m;

    invoke-interface {v2}, Le/a/a/a/a/b/m;->a()J

    move-result-wide v4

    .line 6
    sget-object v2, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {v3, v4, v5}, Le/a/a/a/a/g/u;->a(J)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object p1

    const-string v2, "Cached settings have expired."

    invoke-interface {p1, v0, v2}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 9
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object p1

    const-string v1, "Returning cached settings."

    invoke-interface {p1, v0, v1}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    .line 10
    :cond_2
    :try_start_2
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object p1

    const-string v2, "Failed to transform cached settings data."

    invoke-interface {p1, v0, v2, v1}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object p1

    const-string v2, "No cached settings data found."

    invoke-interface {p1, v0, v2}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 12
    :goto_1
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v2

    const-string v3, "Failed to get cached settings"

    invoke-interface {v2, v0, v3, p1}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v1
.end method

.method public b()Z
    .locals 2

    .line 13
    invoke-virtual {p0}, Le/a/a/a/a/g/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Le/a/a/a/a/g/k;->c()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Le/a/a/a/a/g/k;->f:Le/a/a/a/l;

    invoke-virtual {v1}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/a/a/g/k;->g:Le/a/a/a/a/f/c;

    invoke-interface {v0}, Le/a/a/a/a/f/c;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
