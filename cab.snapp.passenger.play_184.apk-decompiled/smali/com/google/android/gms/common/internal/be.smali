.class public final Lcom/google/android/gms/common/internal/be;
.super Lcom/google/android/gms/common/internal/w;


# instance fields
.field private a:Lcom/google/android/gms/common/internal/ax;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/ax;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/w;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/be;->a:Lcom/google/android/gms/common/internal/ax;

    iput p2, p0, Lcom/google/android/gms/common/internal/be;->b:I

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/be;->a:Lcom/google/android/gms/common/internal/ax;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/be;->a:Lcom/google/android/gms/common/internal/ax;

    iget v1, p0, Lcom/google/android/gms/common/internal/be;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/ax;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/be;->a:Lcom/google/android/gms/common/internal/ax;

    return-void
.end method
