.class public final Lcom/google/android/gms/common/api/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/bx;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Looper;)Lcom/google/android/gms/common/api/r;
    .locals 1

    const-string v0, "Looper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/r;->b:Landroid/os/Looper;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/bx;)Lcom/google/android/gms/common/api/r;
    .locals 1

    const-string v0, "StatusExceptionMapper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/internal/bx;

    return-object p0
.end method

.method public final zzagq()Lcom/google/android/gms/common/api/e$a;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/internal/bx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/co;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/co;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/internal/bx;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Landroid/os/Looper;

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/e$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/internal/bx;

    iget-object v2, p0, Lcom/google/android/gms/common/api/r;->b:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/e$a;-><init>(Lcom/google/android/gms/common/api/internal/bx;Landroid/os/Looper;B)V

    return-object v0
.end method
