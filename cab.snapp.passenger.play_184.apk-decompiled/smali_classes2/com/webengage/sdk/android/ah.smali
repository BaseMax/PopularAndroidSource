.class Lcom/webengage/sdk/android/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/ag;


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/ah;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/webengage/sdk/android/Analytics;)V
    .locals 4

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    const-string v1, "webengage_volatile_prefs.txt"

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/f;->e(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "referrer"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/f;->g(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/webengage/sdk/android/m;

    invoke-direct {v1}, Lcom/webengage/sdk/android/m;-><init>()V

    invoke-virtual {v1, v0}, Lcom/webengage/sdk/android/m;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "app_installed"

    invoke-static {v3, p1, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/webengage/sdk/android/l;)V
    .locals 5

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    if-eqz p1, :cond_7

    const-string v1, "user_logged_out"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->v()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(J)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/webengage/sdk/android/aa;->a(J)V

    :cond_0
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->f()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/aj;->a(Landroid/content/Context;Lcom/webengage/sdk/android/Analytics;)Lcom/webengage/sdk/android/User;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/ak;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/ak;->a()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/actions/database/y;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/y;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/f;->i()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/webengage/sdk/android/actions/database/y;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/util/Map;)V

    :cond_2
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->d()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->e()V

    :goto_0
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/z;->b()V

    return-void

    :cond_4
    const-string v1, "visitor_session_close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "user_logged_in"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/z;->d(J)V

    return-void

    :cond_5
    const-string v1, "notification_control_group"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Z)V

    return-void

    :cond_6
    const-string v1, "app_upgraded"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "gcm_regId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "gcm_project_number"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v2, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    const-string v3, "gcm_registered"

    invoke-static {v3, v0, p1, v0, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method private b(Lcom/webengage/sdk/android/Analytics;)V
    .locals 8

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->d()I

    move-result v0

    iget-object v1, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/utils/k;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "app_version_code_old"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "app_version_code_new"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v5, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v7, "app_upgraded"

    invoke-static {v7, v6, v3, v6, v5}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v3

    iget-object v5, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v4, v3, v5}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v3

    iget-object v4, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v2}, Lcom/webengage/sdk/android/i;->onAppUpgraded(Landroid/content/Context;II)V

    :cond_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/f;->a(I)V

    :cond_1
    return-void
.end method

.method private b(Lcom/webengage/sdk/android/l;)Z
    .locals 15

    move-object v1, p0

    const-string v0, "we_add_to_screen_data"

    invoke-virtual/range {p1 .. p1}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_18

    const-string v5, "we_wk_activity_start"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v8, 0x3a98

    const-wide/32 v10, 0xea60

    const-string v12, "com.webengage.sdk.android.actions.render.WebEngageActivity"

    const-string v13, "screen_path"

    const-string v6, "activity_count"

    const/4 v7, 0x0

    const/4 v14, 0x0

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v7

    :cond_0
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/webengage/sdk/android/l;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_18

    :try_start_0
    iget-object v0, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    sget-object v5, Lcom/webengage/sdk/android/af;->m:Lcom/webengage/sdk/android/af;

    invoke-virtual {v0, v5, v14}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v5, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v5

    sget-object v6, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v5, v6, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->B()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v10

    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/webengage/sdk/android/z;->b(J)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v8, 0x1d4c0

    add-long/2addr v5, v8

    invoke-virtual {v0, v5, v6}, Lcom/webengage/sdk/android/z;->c(J)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->x()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-lez v10, :cond_3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lcom/webengage/sdk/android/z;->e(J)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/z;->c()V

    :goto_2
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(J)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->u()Z

    move-result v0

    const-string v5, "background"

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Z)V

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/aa;->d()V

    goto/16 :goto_c

    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_4
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/aa;->f()V

    goto :goto_3

    :cond_6
    const-string v5, "we_wk_activity_stop"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v7

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/webengage/sdk/android/l;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->v()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(J)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lcom/webengage/sdk/android/aa;->a(J)V

    :cond_8
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/webengage/sdk/android/AbstractWebEngage;->b(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_c

    :cond_9
    const-string v5, "visitor_new_session"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->D()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/z;->d(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    sget-object v5, Lcom/webengage/sdk/android/actions/database/f;->e:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v2, v0, v5}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    sget-object v5, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v2, v0, v5}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/webengage/sdk/android/f;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/f;->values()[Lcom/webengage/sdk/android/actions/database/f;

    move-result-object v0

    array-length v2, v0

    :goto_6
    if-ge v7, v2, :cond_c

    aget-object v5, v0, v7

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/database/f;->b()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/database/f;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v14}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/aa;->a()V

    invoke-virtual/range {p1 .. p1}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v0

    const-string v2, "session_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "online"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_2
    iget-object v0, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    sget-object v2, Lcom/webengage/sdk/android/af;->d:Lcom/webengage/sdk/android/af;

    invoke-virtual {v0, v2, v14}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    sget-object v2, Lcom/webengage/sdk/android/af;->l:Lcom/webengage/sdk/android/af;

    invoke-virtual {v0, v2, v14}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    sget-object v2, Lcom/webengage/sdk/android/af;->m:Lcom/webengage/sdk/android/af;

    invoke-virtual {v0, v2, v14}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_3
    iget-object v2, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v2

    sget-object v5, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v2, v5, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    nop

    :goto_7
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->B()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v8

    goto :goto_8

    :cond_d
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v10

    :goto_8
    invoke-virtual {v0, v5, v6}, Lcom/webengage/sdk/android/z;->b(J)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x1d4c0

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lcom/webengage/sdk/android/z;->c(J)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->x()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_f

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Lcom/webengage/sdk/android/z;->e(J)V

    goto :goto_9

    :cond_f
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/z;->c()V

    :goto_9
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->D()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/z;->c(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/webengage/sdk/android/z;->f(J)V

    goto/16 :goto_c

    :cond_10
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v5, 0x1499700

    add-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lcom/webengage/sdk/android/z;->a(J)V

    goto/16 :goto_c

    :cond_11
    const-string v5, "visitor_session_close"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "user_logged_in"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "user_logged_out"

    const-string v8, "WebEngage"

    if-eqz v5, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/webengage/sdk/android/l;->l()Ljava/util/Map;

    move-result-object v0

    const-string v2, "cuid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "INVALID OPERATION: User: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is Already Logged-in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-static {v8, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_12
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    :try_start_4
    iget-object v0, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    sget-object v5, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v7, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v6, v14, v14, v14, v7}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    :try_start_5
    iget-object v5, v1, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v5

    sget-object v6, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v5, v6, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_13
    :goto_b
    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/f;->b(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_14
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "INVALID OPERATION: User Not Logged-in"

    goto :goto_a

    :cond_15
    const-string v5, "we_wk_screen_navigated"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v5

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/webengage/sdk/android/actions/database/DataHolder;->y()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/webengage/sdk/android/z;->b(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object v5

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/webengage/sdk/android/actions/database/DataHolder;->y()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/webengage/sdk/android/z;->a(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    :try_start_6
    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_16
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_18

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_18

    if-nez v5, :cond_17

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_17
    invoke-static {v6}, Lcom/webengage/sdk/android/utils/k;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/webengage/sdk/android/utils/DataType;->cloneExternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/webengage/sdk/android/l;->a(Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_18
    :goto_c
    return v4
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "WebEngage"

    sget-object v1, Lcom/webengage/sdk/android/ah$2;->a:[I

    invoke-virtual {p1}, Lcom/webengage/sdk/android/af;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "message_action"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "show_system_tray_notification"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "message_data"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    new-instance v2, Lorg/a/c;

    invoke-direct {v2, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Exception while parsing push message_data for deduping"

    invoke-static {v0, v2, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p2, :cond_3

    const-string p1, "experimentId"

    invoke-virtual {p2, p1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "identifier"

    invoke-virtual {p2, v2}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/f;->j()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push {id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", experiment-id: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "} is already shown, hence not rendering."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {v2, p1}, Lcom/webengage/sdk/android/f;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    check-cast p2, Lcom/webengage/sdk/android/l;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/webengage/sdk/android/ah;->b(Lcom/webengage/sdk/android/l;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public b(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/webengage/sdk/android/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/ah$2;->a:[I

    invoke-virtual {p1}, Lcom/webengage/sdk/android/af;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x1d4c0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/f;->k()V

    iget-object p1, p0, Lcom/webengage/sdk/android/ah;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/webengage/sdk/android/ah;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    iget-object p1, p0, Lcom/webengage/sdk/android/ah;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/webengage/sdk/android/ah$1;

    invoke-direct {p2, p0, v0}, Lcom/webengage/sdk/android/ah$1;-><init>(Lcom/webengage/sdk/android/ah;Lcom/webengage/sdk/android/Analytics;)V

    const-wide/16 v0, 0x7530

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->g()V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/webengage/sdk/android/ah;->a(Lcom/webengage/sdk/android/Analytics;)V

    invoke-direct {p0, v0}, Lcom/webengage/sdk/android/ah;->b(Lcom/webengage/sdk/android/Analytics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "WebEngage"

    const-string v1, "Exception while checking for app install and app upgrade events"

    invoke-static {p2, v1, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/z;->d()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/webengage/sdk/android/f;->l()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/z;->f(J)V

    return-void

    :pswitch_3
    :try_start_1
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->B()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->x()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Lcom/webengage/sdk/android/z;->e(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/z;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->g()V

    return-void

    :pswitch_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object p2, Lcom/webengage/sdk/android/actions/database/f;->d:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/database/f;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "cuid"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->t()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/webengage/sdk/android/z;->d(J)V

    :cond_5
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->g()V

    return-void

    :pswitch_5
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->t()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->B()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/z;->b(J)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/z;->b(J)V

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb80

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/z;->b(J)V

    return-void

    :pswitch_6
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->t()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->b()Lcom/webengage/sdk/android/z;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/z;->c(J)V

    return-void

    :pswitch_7
    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->h()V

    return-void

    :pswitch_8
    check-cast p2, Lcom/webengage/sdk/android/l;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p2}, Lcom/webengage/sdk/android/ah;->a(Lcom/webengage/sdk/android/l;)V

    sget-object p2, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    invoke-virtual {p2, p1}, Lcom/webengage/sdk/android/af;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "background"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/AbstractWebEngage;->b(Landroid/content/BroadcastReceiver;)V

    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
