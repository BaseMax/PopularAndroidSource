.class public final Lcom/google/android/gms/common/internal/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/bd;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/internal/ax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bg;->a:Lcom/google/android/gms/common/internal/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bg;->a:Lcom/google/android/gms/common/internal/ax;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ax;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/ax;->zza(Lcom/google/android/gms/common/internal/o;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/bg;->a:Lcom/google/android/gms/common/internal/ax;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ax;->h(Lcom/google/android/gms/common/internal/ax;)Lcom/google/android/gms/common/internal/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bg;->a:Lcom/google/android/gms/common/internal/ax;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ax;->h(Lcom/google/android/gms/common/internal/ax;)Lcom/google/android/gms/common/internal/ba;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/ba;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    return-void
.end method
