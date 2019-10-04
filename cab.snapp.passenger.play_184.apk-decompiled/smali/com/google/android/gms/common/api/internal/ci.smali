.class final Lcom/google/android/gms/common/api/internal/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ck;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/internal/ch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ci;->a:Lcom/google/android/gms/common/api/internal/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ci;->a:Lcom/google/android/gms/common/api/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ch;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
