.class public Lc/e/a/b/g/f/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/b$c;,
        Lc/e/a/b/g/f/b$b;,
        Lc/e/a/b/g/f/b$a;
    }
.end annotation


# static fields
.field public static volatile a:Lc/e/a/b/g/f/b; = null

.field public static b:Ljava/lang/Boolean; = null

.field public static c:Ljava/lang/Boolean; = null

.field public static d:Ljava/lang/String; = "use_dynamite_api"

.field public static e:Ljava/lang/String; = "allow_remote_dynamite"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Lc/e/a/b/d/g/e;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Lc/e/a/b/h/a/a;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/e/a/b/h/b/Da;",
            "Lc/e/a/b/g/f/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Lc/e/a/b/g/f/cd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p3, p4}, Lc/e/a/b/g/f/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p2, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "FA"

    .line 4
    iput-object p2, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    .line 5
    :goto_1
    invoke-static {}, Lc/e/a/b/d/g/h;->d()Lc/e/a/b/d/g/e;

    move-result-object p2

    .line 6
    iput-object p2, p0, Lc/e/a/b/g/f/b;->g:Lc/e/a/b/d/g/e;

    .line 7
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 8
    iput-object p2, p0, Lc/e/a/b/g/f/b;->h:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance p2, Lc/e/a/b/h/a/a;

    invoke-direct {p2, p0}, Lc/e/a/b/h/a/a;-><init>(Lc/e/a/b/g/f/b;)V

    iput-object p2, p0, Lc/e/a/b/g/f/b;->i:Lc/e/a/b/h/a/a;

    .line 10
    invoke-static {p1}, Lc/e/a/b/g/f/b;->b(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-static {}, Lc/e/a/b/g/f/b;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-nez p2, :cond_4

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lc/e/a/b/g/f/b;->m:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lc/e/a/b/g/f/b;->l:Z

    .line 13
    iget-object p1, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_4
    invoke-static {p3, p4}, Lc/e/a/b/g/f/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "fa"

    .line 15
    iput-object p2, p0, Lc/e/a/b/g/f/b;->m:Ljava/lang/String;

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 16
    iget-object p1, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    const-string p2, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-boolean v1, p0, Lc/e/a/b/g/f/b;->l:Z

    return-void

    :cond_5
    if-nez p3, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-nez p4, :cond_7

    const/4 v0, 0x1

    :cond_7
    xor-int/2addr p2, v0

    if-eqz p2, :cond_9

    .line 18
    iget-object p2, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 19
    :cond_8
    iput-object p3, p0, Lc/e/a/b/g/f/b;->m:Ljava/lang/String;

    .line 20
    :cond_9
    :goto_5
    new-instance p2, Lc/e/a/b/g/f/c;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc/e/a/b/g/f/c;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_a

    .line 22
    iget-object p1, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    const-string p2, "Unable to register lifecycle notifications. Application null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_a
    new-instance p2, Lc/e/a/b/g/f/b$c;

    invoke-direct {p2, p0}, Lc/e/a/b/g/f/b$c;-><init>(Lc/e/a/b/g/f/b;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/e/a/b/g/f/b;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, v0, v0}, Lc/e/a/b/g/f/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/e/a/b/g/f/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/e/a/b/g/f/b;
    .locals 8

    .line 2
    invoke-static {p0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lc/e/a/b/g/f/b;->a:Lc/e/a/b/g/f/b;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lc/e/a/b/g/f/b;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lc/e/a/b/g/f/b;->a:Lc/e/a/b/g/f/b;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lc/e/a/b/g/f/b;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lc/e/a/b/g/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lc/e/a/b/g/f/b;->a:Lc/e/a/b/g/f/b;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lc/e/a/b/g/f/b;->a:Lc/e/a/b/g/f/b;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/cd;)Lc/e/a/b/g/f/cd;
    .locals 0

    .line 59
    iput-object p1, p0, Lc/e/a/b/g/f/b;->n:Lc/e/a/b/g/f/cd;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/b/g/f/b;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 57
    iput-object p1, p0, Lc/e/a/b/g/f/b;->j:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/b$a;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/b;Ljava/lang/Exception;ZZ)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/b/g/f/b;->a(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 50
    invoke-static {p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-static {p0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Lc/e/a/b/d/h/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 53
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic a(Lc/e/a/b/g/f/b;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lc/e/a/b/g/f/b;->l:Z

    return p0
.end method

.method public static synthetic a(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-static {p1, p2}, Lc/e/a/b/g/f/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lc/e/a/b/g/f/b;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lc/e/a/b/d/a/a/d;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-static {}, Lc/e/a/b/d/a/a/d;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lc/e/a/b/g/f/b;->e()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;
    .locals 0

    .line 9
    iget-object p0, p0, Lc/e/a/b/g/f/b;->n:Lc/e/a/b/g/f/cd;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lc/e/a/b/g/f/b;)Ljava/util/Map;
    .locals 0

    .line 5
    iget-object p0, p0, Lc/e/a/b/g/f/b;->j:Ljava/util/Map;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    .line 2
    const-class v0, Lc/e/a/b/g/f/b;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lc/e/a/b/g/f/b;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lc/e/a/b/g/f/b;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    const-string v2, "app_measurement_internal_disable_startup_flags"

    .line 5
    invoke-static {p0, v2}, Lc/e/a/b/g/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lc/e/a/b/g/f/b;->b:Ljava/lang/Boolean;

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lc/e/a/b/g/f/b;->c:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_1
    :try_start_4
    const-string v2, "com.google.android.gms.measurement.prefs"

    .line 9
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 10
    sget-object v2, Lc/e/a/b/g/f/b;->d:Ljava/lang/String;

    .line 11
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lc/e/a/b/g/f/b;->b:Ljava/lang/Boolean;

    .line 12
    sget-object v2, Lc/e/a/b/g/f/b;->e:Ljava/lang/String;

    .line 13
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lc/e/a/b/g/f/b;->c:Ljava/lang/Boolean;

    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 15
    sget-object v2, Lc/e/a/b/g/f/b;->d:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    sget-object v2, Lc/e/a/b/g/f/b;->e:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    :try_start_5
    const-string v2, "FA"

    const-string v3, "Exception reading flag from SharedPreferences."

    .line 18
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lc/e/a/b/g/f/b;->b:Ljava/lang/Boolean;

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lc/e/a/b/g/f/b;->c:Ljava/lang/Boolean;

    .line 21
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static e()Z
    .locals 1

    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 0

    .line 4
    invoke-static {p0}, Lc/e/a/b/g/f/b;->e(Landroid/content/Context;)V

    .line 5
    sget-object p0, Lc/e/a/b/g/f/b;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic g()Ljava/lang/Boolean;
    .locals 1

    .line 2
    sget-object v0, Lc/e/a/b/g/f/b;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic g(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lc/e/a/b/g/f/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lc/e/a/b/g/f/b;->d(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lc/e/a/b/g/f/b;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 33
    new-instance v0, Lc/e/a/b/g/f/bd;

    invoke-direct {v0}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 34
    new-instance v1, Lc/e/a/b/g/f/k;

    invoke-direct {v1, p0, v0}, Lc/e/a/b/g/f/k;-><init>(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/bd;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    const-wide/16 v1, 0x1f4

    .line 35
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/g/f/bd;->d(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lc/e/a/b/g/f/bd;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lc/e/a/b/g/f/b;->g:Lc/e/a/b/d/g/e;

    invoke-interface {v3}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lc/e/a/b/g/f/b;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/e/a/b/g/f/b;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroid/content/Context;Z)Lc/e/a/b/g/f/cd;
    .locals 1

    if-eqz p2, :cond_0

    .line 10
    :try_start_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->l:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    goto :goto_0

    .line 11
    :cond_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->i:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    :goto_0
    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 12
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$a;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lc/e/a/b/g/f/dd;->asInterface(Landroid/os/IBinder;)Lc/e/a/b/g/f/cd;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/b/g/f/b;->a(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lc/e/a/b/g/f/bd;

    invoke-direct {v0}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 28
    new-instance v1, Lc/e/a/b/g/f/e;

    invoke-direct {v1, p0, p1, p2, v0}, Lc/e/a/b/g/f/e;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/g/f/bd;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    const-wide/16 p1, 0x1388

    .line 29
    invoke-virtual {v0, p1, p2}, Lc/e/a/b/g/f/bd;->d(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lc/e/a/b/g/f/bd;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v6, Lc/e/a/b/g/f/bd;

    invoke-direct {v6}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 39
    new-instance v7, Lc/e/a/b/g/f/n;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lc/e/a/b/g/f/n;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;ZLc/e/a/b/g/f/bd;)V

    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    const-wide/16 p1, 0x1388

    .line 40
    invoke-virtual {v6, p1, p2}, Lc/e/a/b/g/f/bd;->d(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 41
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 46
    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    .line 47
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 48
    new-instance p1, Lc/e/a/b/g/f/o;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lc/e/a/b/g/f/o;-><init>(Lc/e/a/b/g/f/b;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lc/e/a/b/g/f/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/e/a/b/g/f/f;-><init>(Lc/e/a/b/g/f/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    new-instance v0, Lc/e/a/b/g/f/v;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/g/f/v;-><init>(Lc/e/a/b/g/f/b;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final a(Lc/e/a/b/g/f/b$a;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lc/e/a/b/g/f/b;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lc/e/a/b/h/b/Da;)V
    .locals 1

    .line 20
    new-instance v0, Lc/e/a/b/g/f/q;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/g/f/q;-><init>(Lc/e/a/b/g/f/b;Lc/e/a/b/h/b/Da;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;ZZ)V
    .locals 6

    .line 16
    iget-boolean v0, p0, Lc/e/a/b/g/f/b;->l:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lc/e/a/b/g/f/b;->l:Z

    if-eqz p2, :cond_0

    .line 17
    iget-object p2, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    .line 18
    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/g/f/b;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    :cond_1
    iget-object p3, p0, Lc/e/a/b/g/f/b;->f:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 32
    new-instance v0, Lc/e/a/b/g/f/g;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/g/f/g;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 21
    invoke-virtual/range {v0 .. v6}, Lc/e/a/b/g/f/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 26
    new-instance v0, Lc/e/a/b/g/f/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/e/a/b/g/f/d;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 9

    .line 22
    new-instance v8, Lc/e/a/b/g/f/t;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lc/e/a/b/g/f/t;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-virtual {p0, v8}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, p2, p3, v0}, Lc/e/a/b/g/f/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .line 24
    new-instance v6, Lc/e/a/b/g/f/u;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lc/e/a/b/g/f/u;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v6}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 49
    new-instance v0, Lc/e/a/b/g/f/r;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/g/f/r;-><init>(Lc/e/a/b/g/f/b;Z)V

    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 6
    new-instance v0, Lc/e/a/b/g/f/bd;

    invoke-direct {v0}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 7
    new-instance v1, Lc/e/a/b/g/f/m;

    invoke-direct {v1, p0, v0}, Lc/e/a/b/g/f/m;-><init>(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/bd;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    const-wide/16 v1, 0x1f4

    .line 8
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/g/f/bd;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Lc/e/a/b/g/f/h;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/g/f/h;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-virtual/range {v0 .. v6}, Lc/e/a/b/g/f/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 3

    .line 5
    new-instance v0, Lc/e/a/b/g/f/bd;

    invoke-direct {v0}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 6
    new-instance v1, Lc/e/a/b/g/f/p;

    invoke-direct {v1, p0, p1, v0}, Lc/e/a/b/g/f/p;-><init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Lc/e/a/b/g/f/bd;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    const-wide/16 v1, 0x2710

    .line 7
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/g/f/bd;->d(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lc/e/a/b/g/f/bd;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lc/e/a/b/g/f/bd;

    invoke-direct {v0}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 3
    new-instance v1, Lc/e/a/b/g/f/l;

    invoke-direct {v1, p0, v0}, Lc/e/a/b/g/f/l;-><init>(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/bd;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/g/f/bd;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lc/e/a/b/g/f/bd;

    invoke-direct {v0}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 3
    new-instance v1, Lc/e/a/b/g/f/i;

    invoke-direct {v1, p0, v0}, Lc/e/a/b/g/f/i;-><init>(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/bd;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/g/f/bd;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lc/e/a/b/g/f/bd;

    invoke-direct {v0}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 2
    new-instance v1, Lc/e/a/b/g/f/j;

    invoke-direct {v1, p0, v0}, Lc/e/a/b/g/f/j;-><init>(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/bd;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b$a;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/g/f/bd;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
