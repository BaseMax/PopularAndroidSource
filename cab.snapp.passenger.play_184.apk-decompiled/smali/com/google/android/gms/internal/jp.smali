.class final Lcom/google/android/gms/internal/jp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/jx;

.field private synthetic b:J

.field private synthetic c:Landroid/os/Bundle;

.field private synthetic d:Landroid/content/Context;

.field private synthetic e:Lcom/google/android/gms/internal/iz;

.field private synthetic f:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jx;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/internal/iz;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jp;->a:Lcom/google/android/gms/internal/jx;

    iput-wide p2, p0, Lcom/google/android/gms/internal/jp;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/jp;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/jp;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/jp;->e:Lcom/google/android/gms/internal/iz;

    iput-object p7, p0, Lcom/google/android/gms/internal/jp;->f:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->a:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->a:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_fot"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/id;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mz;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-wide v5, p0, Lcom/google/android/gms/internal/jp;->b:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    cmp-long v0, v5, v1

    if-gtz v0, :cond_2

    :cond_1
    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    :cond_2
    cmp-long v0, v5, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->c:Landroid/os/Bundle;

    const-string v1, "click_timestamp"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->c:Landroid/os/Bundle;

    const-string v2, "auto"

    const-string v3, "_cmp"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->e:Lcom/google/android/gms/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Install campaign recorded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->f:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_4
    return-void
.end method
