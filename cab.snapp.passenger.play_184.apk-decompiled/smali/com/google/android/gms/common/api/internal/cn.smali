.class public final Lcom/google/android/gms/common/api/internal/cn;
.super Lcom/google/android/gms/common/api/internal/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/y<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/google/android/gms/common/api/internal/bi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/bi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bi<",
            "*>;",
            "Lcom/google/android/gms/c/g<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/y;-><init>(ILcom/google/android/gms/c/g;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cn;->b:Lcom/google/android/gms/common/api/internal/bi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/an;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/an<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/an;->zzaiy()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cn;->b:Lcom/google/android/gms/common/api/internal/bi;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bp;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/bp;->zzfnr:Lcom/google/android/gms/common/api/internal/cl;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/an;->zzahp()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cn;->a:Lcom/google/android/gms/c/g;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/cl;->zzc(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/c/g;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/bp;->zzfnq:Lcom/google/android/gms/common/api/internal/bo;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/bo;->zzajp()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/cn;->a:Lcom/google/android/gms/c/g;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/g;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/y;->zzs(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
