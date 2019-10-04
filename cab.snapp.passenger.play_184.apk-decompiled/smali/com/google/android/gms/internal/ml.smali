.class public final Lcom/google/android/gms/internal/ml;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/internal/mp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mo;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/mo;-><init>(Lcom/google/android/gms/internal/jx;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/js;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zzk(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/na;->zzt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/iz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ml;->a()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v1, "onBind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/kc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/kc;-><init>(Lcom/google/android/gms/internal/jx;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ml;->a()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "onBind received unknown action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ml;->a()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v0, "onRebind called with null intent"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ml;->a()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "onRebind called. action"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/jx;->zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/jx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string p2, "AppMeasurementService started with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-virtual {v2, v4, v3, v1}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mm;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/google/android/gms/internal/mm;-><init>(Lcom/google/android/gms/internal/ml;ILcom/google/android/gms/internal/iz;Landroid/content/Intent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ml;->a(Ljava/lang/Runnable;)V

    :cond_1
    return v0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v3, "Local AppMeasurementJobService called. action"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mn;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/mn;-><init>(Lcom/google/android/gms/internal/ml;Lcom/google/android/gms/internal/iz;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ml;->a(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ml;->a()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ml;->a()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method
