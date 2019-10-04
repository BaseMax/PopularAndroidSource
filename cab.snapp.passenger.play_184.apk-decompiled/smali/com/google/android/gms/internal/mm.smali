.class final synthetic Lcom/google/android/gms/internal/mm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ml;

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/iz;

.field private final d:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ml;ILcom/google/android/gms/internal/iz;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mm;->a:Lcom/google/android/gms/internal/ml;

    iput p2, p0, Lcom/google/android/gms/internal/mm;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/mm;->c:Lcom/google/android/gms/internal/iz;

    iput-object p4, p0, Lcom/google/android/gms/internal/mm;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mm;->a:Lcom/google/android/gms/internal/ml;

    iget v1, p0, Lcom/google/android/gms/internal/mm;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mm;->c:Lcom/google/android/gms/internal/iz;

    iget-object v3, p0, Lcom/google/android/gms/internal/mm;->d:Landroid/content/Intent;

    .line 1000
    iget-object v4, v0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    check-cast v4, Lcom/google/android/gms/internal/mp;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/mp;->callServiceStopSelfResult(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ml;->a()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Completed wakeful intent."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ml;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/mp;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/mp;->zzm(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
