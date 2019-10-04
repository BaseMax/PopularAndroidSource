.class final Lcom/google/android/gms/common/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/common/internal/aa;

.field private static final b:Ljava/lang/Object;

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/k;->b:Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/common/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/k;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/k;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a()Z
    .locals 5

    sget-object v0, Lcom/google/android/gms/common/k;->a:Lcom/google/android/gms/common/internal/aa;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/k;->a:Lcom/google/android/gms/common/internal/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    sget-object v2, Lcom/google/android/gms/common/k;->c:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzgwz:Lcom/google/android/gms/dynamite/DynamiteModule$d;

    const-string v4, "com.google.android.gms.googlecertificates"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$d;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    const-string v3, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhb(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ab;->zzan(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/aa;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/k;->a:Lcom/google/android/gms/common/internal/aa;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :try_start_2
    monitor-exit v0

    return v1

    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/l;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/k;->a(Ljava/lang/String;Lcom/google/android/gms/common/l;Z)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/common/l;Z)Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/k;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/zzn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/zzn;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/l;Z)V

    sget-object p0, Lcom/google/android/gms/common/k;->a:Lcom/google/android/gms/common/internal/aa;

    sget-object p1, Lcom/google/android/gms/common/k;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/a/m;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/common/internal/aa;->zza(Lcom/google/android/gms/common/zzn;Lcom/google/android/gms/a/a;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method static b(Ljava/lang/String;Lcom/google/android/gms/common/l;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/k;->a(Ljava/lang/String;Lcom/google/android/gms/common/l;Z)Z

    move-result p0

    return p0
.end method
