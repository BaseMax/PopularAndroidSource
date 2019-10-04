.class final Lcom/google/android/gms/internal/gn;
.super Lcom/google/android/gms/internal/gu;


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

    invoke-direct {p0}, Lcom/google/android/gms/internal/gu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/common/api/internal/cv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzceo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/common/api/internal/cv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceo;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/cv;->setResult(Ljava/lang/Object;)V

    return-void
.end method
