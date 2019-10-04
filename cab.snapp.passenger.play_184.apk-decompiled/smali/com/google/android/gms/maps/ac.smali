.class final Lcom/google/android/gms/maps/ac;
.super Lcom/google/android/gms/maps/a/aj;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ac;->a:Lcom/google/android/gms/maps/c$s;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMyLocationButtonClick()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/ac;->a:Lcom/google/android/gms/maps/c$s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/c$s;->onMyLocationButtonClick()Z

    move-result v0

    return v0
.end method
