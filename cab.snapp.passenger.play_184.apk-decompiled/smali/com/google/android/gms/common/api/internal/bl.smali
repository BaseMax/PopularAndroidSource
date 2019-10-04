.class public Lcom/google/android/gms/common/api/internal/bl;
.super Lcom/google/android/gms/common/api/internal/cw;


# instance fields
.field private b:Lcom/google/android/gms/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/bd;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/cw;-><init>(Lcom/google/android/gms/common/api/internal/bd;)V

    new-instance p1, Lcom/google/android/gms/c/g;

    invoke-direct {p1}, Lcom/google/android/gms/c/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bl;->b:Lcom/google/android/gms/c/g;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bl;->a:Lcom/google/android/gms/common/api/internal/bd;

    const-string v0, "GmsAvailabilityHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/bd;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zzp(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/bl;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/bl;->zzn(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/bd;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/common/api/internal/bl;

    const-string v1, "GmsAvailabilityHelper"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/bd;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bl;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/bl;->b:Lcom/google/android/gms/c/g;

    invoke-virtual {p0}, Lcom/google/android/gms/c/g;->getTask()Lcom/google/android/gms/c/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/c/f;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/c/g;

    invoke-direct {p0}, Lcom/google/android/gms/c/g;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/common/api/internal/bl;->b:Lcom/google/android/gms/c/g;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/bl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/bl;-><init>(Lcom/google/android/gms/common/api/internal/bd;)V

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bl;->e:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bl;->a:Lcom/google/android/gms/common/api/internal/bd;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/bd;->zzajn()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/j;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bl;->b:Lcom/google/android/gms/c/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/g;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bl;->b:Lcom/google/android/gms/c/g;

    invoke-virtual {v2}, Lcom/google/android/gms/c/g;->getTask()Lcom/google/android/gms/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/c/f;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/common/api/internal/cw;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_1
    return-void
.end method

.method protected final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/bl;->b:Lcom/google/android/gms/c/g;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/c/g;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final getTask()Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bl;->b:Lcom/google/android/gms/c/g;

    invoke-virtual {v0}, Lcom/google/android/gms/c/g;->getTask()Lcom/google/android/gms/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/cw;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bl;->b:Lcom/google/android/gms/c/g;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/g;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
