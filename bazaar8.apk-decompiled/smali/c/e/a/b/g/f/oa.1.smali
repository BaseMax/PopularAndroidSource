.class public final Lc/e/a/b/g/f/oa;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/la;


# static fields
.field public static a:Lc/e/a/b/g/f/oa;


# instance fields
.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lc/e/a/b/g/f/oa;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/oa;->b:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lc/e/a/b/g/f/oa;->b:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lc/e/a/b/g/f/ea;->a:Landroid/net/Uri;

    new-instance v1, Lc/e/a/b/g/f/qa;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc/e/a/b/g/f/qa;-><init>(Lc/e/a/b/g/f/oa;Landroid/os/Handler;)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/e/a/b/g/f/oa;
    .locals 2

    .line 1
    const-class v0, Lc/e/a/b/g/f/oa;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lc/e/a/b/g/f/oa;->a:Lc/e/a/b/g/f/oa;

    if-nez v1, :cond_2

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 3
    invoke-static {p0, v1}, Lb/i/b/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lc/e/a/b/g/f/oa;

    invoke-direct {v1, p0}, Lc/e/a/b/g/f/oa;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lc/e/a/b/g/f/oa;

    invoke-direct {v1}, Lc/e/a/b/g/f/oa;-><init>()V

    :goto_1
    sput-object v1, Lc/e/a/b/g/f/oa;->a:Lc/e/a/b/g/f/oa;

    .line 5
    :cond_2
    sget-object p0, Lc/e/a/b/g/f/oa;->a:Lc/e/a/b/g/f/oa;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/oa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/oa;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lc/e/a/b/g/f/pa;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/g/f/pa;-><init>(Lc/e/a/b/g/f/oa;Ljava/lang/String;)V

    invoke-static {v0}, Lc/e/a/b/g/f/ma;->a(Lc/e/a/b/g/f/na;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Unable to read GServices for: "

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "GservicesLoader"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/oa;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/e/a/b/g/f/ea;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
