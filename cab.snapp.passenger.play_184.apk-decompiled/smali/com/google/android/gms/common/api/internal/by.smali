.class public final Lcom/google/android/gms/common/api/internal/by;
.super Lcom/google/android/gms/common/api/internal/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/y<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/google/android/gms/common/api/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/bo<",
            "Lcom/google/android/gms/common/api/a$c;",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/common/api/internal/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cl<",
            "Lcom/google/android/gms/common/api/a$c;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/bp;Lcom/google/android/gms/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bp;",
            "Lcom/google/android/gms/c/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/y;-><init>(ILcom/google/android/gms/c/g;)V

    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/bp;->zzfnq:Lcom/google/android/gms/common/api/internal/bo;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/by;->b:Lcom/google/android/gms/common/api/internal/bo;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/bp;->zzfnr:Lcom/google/android/gms/common/api/internal/cl;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/by;->c:Lcom/google/android/gms/common/api/internal/cl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/an;)V
    .locals 4
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

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/by;->b:Lcom/google/android/gms/common/api/internal/bo;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/an;->zzahp()Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/by;->a:Lcom/google/android/gms/c/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/bo;->zzb(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/c/g;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/by;->b:Lcom/google/android/gms/common/api/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bo;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/an;->zzaiy()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/by;->b:Lcom/google/android/gms/common/api/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bo;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/bp;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/by;->b:Lcom/google/android/gms/common/api/internal/bo;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/by;->c:Lcom/google/android/gms/common/api/internal/cl;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/bp;-><init>(Lcom/google/android/gms/common/api/internal/bo;Lcom/google/android/gms/common/api/internal/cl;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/y;->zzs(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
