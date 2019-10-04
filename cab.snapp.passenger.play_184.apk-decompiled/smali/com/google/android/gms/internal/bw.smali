.class public final Lcom/google/android/gms/internal/bw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/internal/bz;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/Boolean;


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/bw;->b:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bw;->a:Landroid/os/Handler;

    return-void
.end method

.method private final a(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/bx;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/bx;-><init>(Lcom/google/android/gms/internal/bw;Ljava/lang/Integer;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/bp;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/o;->zza(Lcom/google/android/gms/internal/bd;)V

    return-void
.end method

.method public static zzbo(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/bw;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ce;->zzt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bw;->c:Ljava/lang/Boolean;

    return p0
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object v0

    const-string v1, "Local AnalyticsService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object v0

    const-string v1, "Local AnalyticsService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/bv;->a:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/bv;->b:Lcom/google/android/gms/internal/on;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/on;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/on;->release()V

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/bw;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/z;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/z;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p1, :cond_1

    const-string p1, "AnalyticsService started with null intent"

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/w;->zzdx(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Local AnalyticsService called. startId, action"

    invoke-virtual {p2, v2, v1, p1}, Lcom/google/android/gms/internal/w;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/bw;->a(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V

    :cond_2
    return v0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Local AnalyticsJobService called. action"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/w;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/bw;->a(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
