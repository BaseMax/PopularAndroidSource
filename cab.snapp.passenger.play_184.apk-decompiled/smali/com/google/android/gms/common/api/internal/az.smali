.class public final Lcom/google/android/gms/common/api/internal/az;
.super Lcom/google/android/gms/common/api/internal/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/common/api/internal/cu<",
        "+",
        "Lcom/google/android/gms/common/api/m;",
        "Lcom/google/android/gms/common/api/a$c;",
        ">;>",
        "Lcom/google/android/gms/common/api/internal/a;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/cu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/a;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/az;->a:Lcom/google/android/gms/common/api/internal/cu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/internal/an;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/an<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/az;->a:Lcom/google/android/gms/common/api/internal/cu;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/an;->zzahp()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/cu;->zzb(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/az;->a:Lcom/google/android/gms/common/api/internal/cu;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/e;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/common/api/internal/f;

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/common/api/internal/f;-><init>(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/h;->zza(Lcom/google/android/gms/common/api/h$a;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/az;->a:Lcom/google/android/gms/common/api/internal/cu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/cu;->zzu(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
