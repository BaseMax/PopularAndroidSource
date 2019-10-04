.class final Lcom/google/android/gms/common/api/internal/r;
.super Lcom/google/android/gms/common/api/internal/ai;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/internal/bd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ag;Lcom/google/android/gms/common/internal/bd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/r;->a:Lcom/google/android/gms/common/internal/bd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/ai;-><init>(Lcom/google/android/gms/common/api/internal/ag;)V

    return-void
.end method


# virtual methods
.method public final zzaib()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->a:Lcom/google/android/gms/common/internal/bd;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/bd;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
