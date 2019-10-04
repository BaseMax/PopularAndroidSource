.class final Lcom/google/android/gms/internal/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/by;->a:Lcom/google/android/gms/internal/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/by;->a:Lcom/google/android/gms/internal/bx;

    iget-object v0, v0, Lcom/google/android/gms/internal/bx;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/by;->a:Lcom/google/android/gms/internal/bx;

    iget-object v0, v0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/bw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/bw;->b:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/bz;

    iget-object v1, p0, Lcom/google/android/gms/internal/by;->a:Lcom/google/android/gms/internal/bx;

    iget-object v1, v1, Lcom/google/android/gms/internal/bx;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bz;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/by;->a:Lcom/google/android/gms/internal/bx;

    iget-object v0, v0, Lcom/google/android/gms/internal/bx;->b:Lcom/google/android/gms/internal/bp;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/by;->a:Lcom/google/android/gms/internal/bx;

    iget-object v0, v0, Lcom/google/android/gms/internal/bx;->b:Lcom/google/android/gms/internal/bp;

    const-string v1, "AnalyticsJobService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/by;->a:Lcom/google/android/gms/internal/bx;

    iget-object v0, v0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/bw;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/bw;->b:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/bz;

    iget-object v1, p0, Lcom/google/android/gms/internal/by;->a:Lcom/google/android/gms/internal/bx;

    iget-object v1, v1, Lcom/google/android/gms/internal/bx;->c:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bz;->zza(Landroid/app/job/JobParameters;Z)V

    :cond_2
    return-void
.end method
