.class final Lcom/google/android/gms/location/z;
.super Lcom/google/android/gms/common/api/internal/bo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/bo<",
        "Lcom/google/android/gms/internal/hj;",
        "Lcom/google/android/gms/location/g;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzcfo;

.field private synthetic b:Lcom/google/android/gms/common/api/internal/bg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/zzcfo;Lcom/google/android/gms/common/api/internal/bg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/location/z;->a:Lcom/google/android/gms/internal/zzcfo;

    iput-object p3, p0, Lcom/google/android/gms/location/z;->b:Lcom/google/android/gms/common/api/internal/bg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/bo;-><init>(Lcom/google/android/gms/common/api/internal/bg;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/c/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/hj;

    new-instance v0, Lcom/google/android/gms/location/b$a;

    invoke-direct {v0, p2}, Lcom/google/android/gms/location/b$a;-><init>(Lcom/google/android/gms/c/g;)V

    iget-object p2, p0, Lcom/google/android/gms/location/z;->a:Lcom/google/android/gms/internal/zzcfo;

    iget-object v1, p0, Lcom/google/android/gms/location/z;->b:Lcom/google/android/gms/common/api/internal/bg;

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/hj;->zza(Lcom/google/android/gms/internal/zzcfo;Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method
