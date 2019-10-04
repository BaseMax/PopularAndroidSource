.class final synthetic Lcom/google/android/gms/internal/mn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ml;

.field private final b:Lcom/google/android/gms/internal/iz;

.field private final c:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ml;Lcom/google/android/gms/internal/iz;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mn;->a:Lcom/google/android/gms/internal/ml;

    iput-object p2, p0, Lcom/google/android/gms/internal/mn;->b:Lcom/google/android/gms/internal/iz;

    iput-object p3, p0, Lcom/google/android/gms/internal/mn;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mn;->a:Lcom/google/android/gms/internal/ml;

    iget-object v1, p0, Lcom/google/android/gms/internal/mn;->b:Lcom/google/android/gms/internal/iz;

    iget-object v2, p0, Lcom/google/android/gms/internal/mn;->c:Landroid/app/job/JobParameters;

    .line 1000
    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v3, "AppMeasurementJobService processed last upload request."

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/mp;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/mp;->zza(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
