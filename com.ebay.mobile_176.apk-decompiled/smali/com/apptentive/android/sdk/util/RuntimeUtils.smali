.class public Lcom/apptentive/android/sdk/util/RuntimeUtils;
.super Ljava/lang/Object;
.source "RuntimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/util/RuntimeUtils$FieldFilter;
    }
.end annotation


# static fields
.field private static cachedApplicationInfo:Lcom/apptentive/android/sdk/util/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classExists(Ljava/lang/String;)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to get class with name \'%s\'"

    const/4 v2, 0x1

    .line 86
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getApplicationInfo(Landroid/content/Context;)Lcom/apptentive/android/sdk/util/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/ApplicationInfo;->getVersionCode()I

    move-result p0

    return p0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getApplicationInfo(Landroid/content/Context;)Lcom/apptentive/android/sdk/util/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/ApplicationInfo;->getVersionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getApplicationInfo(Landroid/content/Context;)Lcom/apptentive/android/sdk/util/ApplicationInfo;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/apptentive/android/sdk/util/RuntimeUtils;

    monitor-enter v0

    if-eqz p0, :cond_3

    .line 35
    :try_start_0
    sget-object v1, Lcom/apptentive/android/sdk/util/RuntimeUtils;->cachedApplicationInfo:Lcom/apptentive/android/sdk/util/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 38
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 40
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 41
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 42
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 43
    :goto_1
    new-instance v5, Lcom/apptentive/android/sdk/util/ApplicationInfo;

    iget-object v6, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {v5, v6, p0, v2, v4}, Lcom/apptentive/android/sdk/util/ApplicationInfo;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lcom/apptentive/android/sdk/util/RuntimeUtils;->cachedApplicationInfo:Lcom/apptentive/android/sdk/util/ApplicationInfo;

    const-string p0, "Resolved application info: %s"

    .line 44
    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/apptentive/android/sdk/util/RuntimeUtils;->cachedApplicationInfo:Lcom/apptentive/android/sdk/util/ApplicationInfo;

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "Exception while getting app info"

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 48
    sget-object p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->NULL:Lcom/apptentive/android/sdk/util/ApplicationInfo;

    sput-object p0, Lcom/apptentive/android/sdk/util/RuntimeUtils;->cachedApplicationInfo:Lcom/apptentive/android/sdk/util/ApplicationInfo;

    .line 51
    :cond_2
    :goto_2
    sget-object p0, Lcom/apptentive/android/sdk/util/RuntimeUtils;->cachedApplicationInfo:Lcom/apptentive/android/sdk/util/ApplicationInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 32
    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0

    throw p0
.end method

.method private static getFieldModifiers()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 105
    :try_start_0
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "modifiers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "accessFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static isAppDebuggable(Landroid/content/Context;)Z
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getApplicationInfo(Landroid/content/Context;)Lcom/apptentive/android/sdk/util/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/ApplicationInfo;->isDebuggable()Z

    move-result p0

    return p0
.end method

.method public static listFields(Ljava/lang/Class;Lcom/apptentive/android/sdk/util/RuntimeUtils$FieldFilter;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apptentive/android/sdk/util/RuntimeUtils$FieldFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_2

    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 116
    invoke-interface {p1, v4}, Lcom/apptentive/android/sdk/util/RuntimeUtils$FieldFilter;->accept(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static overrideStaticFinalField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-static {}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getFieldModifiers()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, -0x11

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
