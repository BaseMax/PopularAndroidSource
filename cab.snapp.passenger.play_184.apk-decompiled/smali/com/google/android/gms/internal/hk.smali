.class final Lcom/google/android/gms/internal/hk;
.super Lcom/google/android/gms/internal/gx;


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/cv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/cv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/gx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hk;->a:Lcom/google/android/gms/common/api/internal/cv;

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/app/PendingIntent;)V
    .locals 0

    const-string p1, "LocationClientImpl"

    const-string p2, "Unexpected call to onRemoveGeofencesByPendingIntentResult"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zza(I[Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/hk;->a:Lcom/google/android/gms/common/api/internal/cv;

    if-nez p2, :cond_0

    const-string p1, "LocationClientImpl"

    const-string p2, "onAddGeofenceResult called multiple times"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/location/k;->zzdv(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/location/k;->zzdw(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/hk;->a:Lcom/google/android/gms/common/api/internal/cv;

    invoke-interface {p2, p1}, Lcom/google/android/gms/common/api/internal/cv;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/hk;->a:Lcom/google/android/gms/common/api/internal/cv;

    return-void
.end method

.method public final zzb(I[Ljava/lang/String;)V
    .locals 0

    const-string p1, "LocationClientImpl"

    const-string p2, "Unexpected call to onRemoveGeofencesByRequestIdsResult"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
