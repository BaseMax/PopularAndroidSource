.class final Lcom/google/android/gms/common/api/internal/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/internal/bt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bt;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bt;->a(Lcom/google/android/gms/common/api/internal/bt;)Lcom/google/android/gms/common/api/internal/bw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/bw;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
