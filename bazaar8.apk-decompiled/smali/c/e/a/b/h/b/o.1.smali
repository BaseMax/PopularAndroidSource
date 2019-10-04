.class public final Lc/e/a/b/h/b/o;
.super Lc/e/a/b/h/b/zb;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/zb;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 2
    iput-wide p2, p0, Lc/e/a/b/h/b/o;->j:J

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 6
    invoke-virtual {v1, v8, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v1, v2

    goto/16 :goto_4

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v7

    .line 10
    invoke-static {v0}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v5, :cond_2

    const-string v5, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    .line 11
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v3

    .line 12
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 13
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 17
    :goto_2
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 18
    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_3

    :catch_2
    move-object v1, v2

    .line 19
    :goto_3
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    .line 20
    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v7

    .line 21
    invoke-static {v0}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving package info. appId, appName"

    .line 22
    invoke-virtual {v7, v9, v8, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 23
    :goto_4
    iput-object v0, p0, Lc/e/a/b/h/b/o;->c:Ljava/lang/String;

    .line 24
    iput-object v5, p0, Lc/e/a/b/h/b/o;->f:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lc/e/a/b/h/b/o;->d:Ljava/lang/String;

    .line 26
    iput v6, p0, Lc/e/a/b/h/b/o;->e:I

    .line 27
    iput-object v1, p0, Lc/e/a/b/h/b/o;->g:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lc/e/a/b/h/b/o;->h:J

    .line 29
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    .line 30
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lc/e/a/b/d/a/a/d;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->A()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 32
    :goto_5
    iget-object v8, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 33
    invoke-virtual {v8}, Lc/e/a/b/h/b/Y;->q()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "am"

    if-nez v8, :cond_6

    iget-object v8, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 34
    invoke-virtual {v8}, Lc/e/a/b/h/b/Y;->r()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    or-int/2addr v7, v8

    if-nez v7, :cond_8

    if-nez v5, :cond_7

    .line 35
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v8, "GoogleService failed to initialize (no status)"

    invoke-virtual {v5, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 36
    :cond_7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v8

    .line 37
    invoke-virtual {v8}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v8

    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->x()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->y()Ljava/lang/String;

    move-result-object v5

    const-string v11, "GoogleService failed to initialize, status"

    .line 40
    invoke-virtual {v8, v11, v10, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_7
    if-eqz v7, :cond_c

    .line 41
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/pc;->r()Ljava/lang/Boolean;

    move-result-object v5

    .line 42
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v7

    invoke-virtual {v7}, Lc/e/a/b/h/b/pc;->q()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 43
    iget-object v5, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->p()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 44
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Collection disabled with firebase_analytics_collection_deactivated=1"

    .line 46
    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    if-eqz v5, :cond_a

    .line 47
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_a

    .line 48
    iget-object v5, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->p()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 49
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Collection disabled with firebase_analytics_collection_enabled=0"

    .line 51
    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    if-nez v5, :cond_b

    .line 52
    invoke-static {}, Lc/e/a/b/d/a/a/d;->b()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 53
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Collection disabled with google_app_measurement_enable=0"

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 54
    :cond_b
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v7, "Collection enabled"

    invoke-virtual {v5, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v6, 0x0

    .line 55
    :goto_9
    iput-object v3, p0, Lc/e/a/b/h/b/o;->l:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lc/e/a/b/h/b/o;->m:Ljava/lang/String;

    .line 57
    iput-wide v1, p0, Lc/e/a/b/h/b/o;->i:J

    .line 58
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    .line 59
    iget-object v1, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 60
    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 61
    iget-object v1, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/h/b/o;->m:Ljava/lang/String;

    .line 62
    :cond_d
    :try_start_3
    invoke-static {}, Lc/e/a/b/d/a/a/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_a

    :cond_e
    move-object v3, v1

    :goto_a
    iput-object v3, p0, Lc/e/a/b/h/b/o;->l:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 65
    new-instance v1, Lc/e/a/b/d/d/t;

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/e/a/b/d/d/t;-><init>(Landroid/content/Context;)V

    const-string v2, "admob_app_id"

    .line 66
    invoke-virtual {v1, v2}, Lc/e/a/b/d/d/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/h/b/o;->m:Ljava/lang/String;

    :cond_f
    if-eqz v6, :cond_10

    .line 67
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "App package, google app id"

    iget-object v3, p0, Lc/e/a/b/h/b/o;->c:Ljava/lang/String;

    iget-object v5, p0, Lc/e/a/b/h/b/o;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v1

    .line 68
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    .line 70
    invoke-static {v0}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    .line 71
    invoke-virtual {v2, v3, v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :cond_10
    :goto_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 73
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/h/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lc/e/a/b/h/b/o;->k:I

    return-void

    .line 74
    :cond_11
    iput v4, p0, Lc/e/a/b/h/b/o;->k:I

    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/o;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/o;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "getInstance"

    const/4 v3, 0x1

    .line 4
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 5
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    :try_start_2
    const-string v3, "getFirebaseInstanceId"

    .line 6
    new-array v4, v6, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 8
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 9
    :catch_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->y()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-object v0

    .line 10
    :catch_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->x()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    :catch_2
    return-object v0
.end method

.method public final F()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 2
    iget v0, p0, Lc/e/a/b/h/b/o;->e:I

    return v0
.end method

.method public final G()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 2
    iget v0, p0, Lc/e/a/b/h/b/o;->k:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;
    .locals 33

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/_a;->j()V

    .line 3
    new-instance v28, Lcom/google/android/gms/measurement/internal/zzm;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/o;->B()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 7
    iget-object v4, v0, Lc/e/a/b/h/b/o;->d:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/o;->F()I

    move-result v1

    int-to-long v5, v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 10
    iget-object v7, v0, Lc/e/a/b/h/b/o;->f:Ljava/lang/String;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/pc;->n()J

    move-result-wide v8

    .line 12
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 14
    iget-wide v10, v0, Lc/e/a/b/h/b/o;->h:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_0

    .line 15
    iget-object v1, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lc/e/a/b/h/b/cc;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lc/e/a/b/h/b/o;->h:J

    .line 16
    :cond_0
    iget-wide v10, v0, Lc/e/a/b/h/b/o;->h:J

    .line 17
    iget-object v1, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 18
    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v13

    .line 19
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v1

    iget-boolean v1, v1, Lc/e/a/b/h/b/F;->y:Z

    const/4 v12, 0x1

    xor-int/lit8 v14, v1, 0x1

    .line 20
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/_a;->j()V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v1

    iget-object v15, v0, Lc/e/a/b/h/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lc/e/a/b/h/b/pc;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    iget-object v1, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/o;->E()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    .line 25
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/zb;->w()V

    move/from16 v17, v13

    .line 26
    iget-wide v12, v0, Lc/e/a/b/h/b/o;->i:J

    .line 27
    iget-object v1, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 28
    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->v()J

    move-result-wide v19

    .line 29
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/o;->G()I

    move-result v21

    .line 30
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->j()V

    const-string v15, "google_analytics_adid_collection_enabled"

    .line 32
    invoke-virtual {v1, v15}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 35
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->j()V

    const-string v15, "google_analytics_ssaid_collection_enabled"

    .line 37
    invoke-virtual {v1, v15}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v24, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v24, 0x1

    :goto_4
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    .line 40
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/F;->A()Z

    move-result v25

    .line 41
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/o;->D()Ljava/lang/String;

    move-result-object v29

    .line 42
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v30, v12

    sget-object v12, Lc/e/a/b/h/b/k;->ya:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v1, v15, v12}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v1

    const-string v12, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v1, v12}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v12, 0x1

    xor-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v32, v1

    goto :goto_5

    :cond_6
    const/16 v32, 0x0

    .line 45
    :goto_5
    iget-wide v12, v0, Lc/e/a/b/h/b/o;->j:J

    move-wide/from16 v26, v12

    move-object/from16 v1, v28

    move-object/from16 v12, p1

    move/from16 v13, v17

    move-object/from16 v15, v16

    move-wide/from16 v16, v30

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move-object/from16 v24, v29

    move-object/from16 v25, v32

    .line 46
    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;J)V

    return-object v28
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
