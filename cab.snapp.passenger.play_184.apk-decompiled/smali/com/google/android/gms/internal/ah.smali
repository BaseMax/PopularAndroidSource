.class final Lcom/google/android/gms/internal/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/ComponentName;

.field private synthetic b:Lcom/google/android/gms/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/af;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ah;->b:Lcom/google/android/gms/internal/af;

    iput-object p2, p0, Lcom/google/android/gms/internal/ah;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->b:Lcom/google/android/gms/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/internal/af;->a:Lcom/google/android/gms/internal/ad;

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->a:Landroid/content/ComponentName;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    const-string v2, "Disconnected from device AnalyticsService"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/w;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object v0

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/o;->zzwp()V

    :cond_0
    return-void
.end method
