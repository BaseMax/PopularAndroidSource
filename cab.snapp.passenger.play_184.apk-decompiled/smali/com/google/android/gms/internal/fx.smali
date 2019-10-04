.class final Lcom/google/android/gms/internal/fx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hq<",
        "Lcom/google/android/gms/internal/gy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/fw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fx;->a:Lcom/google/android/gms/internal/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzakm()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fx;->a:Lcom/google/android/gms/internal/fw;

    invoke-static {v0}, Lcom/google/android/gms/internal/fw;->a(Lcom/google/android/gms/internal/fw;)V

    return-void
.end method

.method public final synthetic zzakn()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fx;->a:Lcom/google/android/gms/internal/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    return-object v0
.end method
