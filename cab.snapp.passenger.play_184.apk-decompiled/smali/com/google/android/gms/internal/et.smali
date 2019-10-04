.class final Lcom/google/android/gms/internal/et;
.super Lcom/google/android/gms/internal/en;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/cv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/cv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/en;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/et;->a:Lcom/google/android/gms/common/api/internal/cv;

    return-void
.end method


# virtual methods
.method public final zzci(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/et;->a:Lcom/google/android/gms/common/api/internal/cv;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/cv;->setResult(Ljava/lang/Object;)V

    return-void
.end method
