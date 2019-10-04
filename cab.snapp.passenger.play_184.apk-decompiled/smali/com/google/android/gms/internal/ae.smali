.class final Lcom/google/android/gms/internal/ae;
.super Lcom/google/android/gms/internal/az;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ad;Lcom/google/android/gms/internal/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae;->a:Lcom/google/android/gms/internal/ad;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/az;-><init>(Lcom/google/android/gms/internal/z;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->a:Lcom/google/android/gms/internal/ad;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->zzdu(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->disconnect()V

    :cond_0
    return-void
.end method
