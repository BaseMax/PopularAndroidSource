.class final Lcom/google/android/gms/internal/hm;
.super Lcom/google/android/gms/internal/hb;


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/cv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/cv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/hb;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/hm;->a:Lcom/google/android/gms/common/api/internal/cv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->a:Lcom/google/android/gms/common/api/internal/cv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/cv;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/hm;->a:Lcom/google/android/gms/common/api/internal/cv;

    return-void
.end method
