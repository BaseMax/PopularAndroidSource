.class public Lcom/crashlytics/android/CrashlyticsInitProvider;
.super Landroid/content/ContentProvider;
.source "CrashlyticsInitProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;
    }
.end annotation


# static fields
.field public static final NDK_MANIFEST_FLAG:Ljava/lang/String; = "firebase_crashlytics_ndk_enabled"

.field public static final TAG:Ljava/lang/String; = "CrashlyticsInitProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private createCrashlyticsKits(Landroid/content/Context;)[Le/a/a/a/l;
    .locals 6

    const-string v0, "Fabric"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x80

    .line 3
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v3, "firebase_crashlytics_ndk_enabled"

    .line 4
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v3

    const-string v4, "Unable to get PackageManager while determining if Crashlytics NDK should be initialized"

    invoke-interface {v3, v0, v4, p1}, Le/a/a/a/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    new-instance v3, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v3}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    if-eqz p1, :cond_1

    .line 7
    :try_start_1
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object p1

    const-string v4, "Crashlytics is initializing NDK crash reporter."

    invoke-interface {p1, v0, v4}, Le/a/a/a/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 8
    new-array p1, p1, [Le/a/a/a/l;

    aput-object v3, p1, v2

    new-instance v4, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v4}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    aput-object v4, p1, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 9
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v4

    const-string v5, "Crashlytics failed to initialize NDK crash reporting. Attempting to intialize SDK..."

    invoke-interface {v4, v0, v5, p1}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :cond_1
    new-array p1, v1, [Le/a/a/a/l;

    aput-object v3, p1, v2

    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/a/a/a/b/v;

    invoke-direct {v1}, Le/a/a/a/a/b/v;-><init>()V

    .line 3
    new-instance v2, Lcom/crashlytics/android/ManifestEnabledCheckStrategy;

    invoke-direct {v2}, Lcom/crashlytics/android/ManifestEnabledCheckStrategy;-><init>()V

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/crashlytics/android/CrashlyticsInitProvider;->shouldInitializeFabric(Landroid/content/Context;Le/a/a/a/a/b/v;Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;)Z

    move-result v1

    const-string v2, "CrashlyticsInitProvider"

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/CrashlyticsInitProvider;->createCrashlyticsKits(Landroid/content/Context;)[Le/a/a/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/a/a/f;->a(Landroid/content/Context;[Le/a/a/a/l;)Le/a/a/a/f;

    .line 6
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    const-string v1, "CrashlyticsInitProvider initialization successful"

    invoke-interface {v0, v2, v1}, Le/a/a/a/o;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    const-string v1, "CrashlyticsInitProvider initialization unsuccessful"

    invoke-interface {v0, v2, v1}, Le/a/a/a/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 8
    :cond_0
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    const-string v1, "CrashlyticsInitProvider skipping initialization"

    invoke-interface {v0, v2, v1}, Le/a/a/a/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldInitializeFabric(Landroid/content/Context;Le/a/a/a/a/b/v;Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;)Z
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Le/a/a/a/a/b/v;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3, p1}, Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;->isCrashlyticsEnabled(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2, p1}, Le/a/a/a/a/b/v;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
