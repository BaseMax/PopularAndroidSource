.class final Lcom/google/android/gms/maps/ad;
.super Lcom/google/android/gms/maps/a/ao;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ad;->a:Lcom/google/android/gms/maps/c$u;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMyLocationClick(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/ad;->a:Lcom/google/android/gms/maps/c$u;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$u;->onMyLocationClick(Landroid/location/Location;)V

    return-void
.end method
