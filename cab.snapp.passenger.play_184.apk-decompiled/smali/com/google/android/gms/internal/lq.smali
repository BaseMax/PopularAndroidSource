.class final Lcom/google/android/gms/internal/lq;
.super Lcom/google/android/gms/measurement/AppMeasurement$g;


# instance fields
.field public zzjib:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/lq;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurement$g;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/lq;->zziwk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/lq;->zziwk:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/lq;->zziwl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/lq;->zziwl:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/internal/lq;->zziwm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/lq;->zziwm:J

    iget-boolean p1, p1, Lcom/google/android/gms/internal/lq;->zzjib:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/lq;->zzjib:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurement$g;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/lq;->zziwk:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/lq;->zziwl:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/lq;->zziwm:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/lq;->zzjib:Z

    return-void
.end method
