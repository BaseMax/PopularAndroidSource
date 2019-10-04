.class final Lcom/google/android/gms/maps/u;
.super Lcom/google/android/gms/maps/a/be;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/u;->a:Lcom/google/android/gms/maps/g;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/be;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/u;->a:Lcom/google/android/gms/maps/g;

    new-instance v1, Lcom/google/android/gms/maps/i;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/i;-><init>(Lcom/google/android/gms/maps/a/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g;->onStreetViewPanoramaReady(Lcom/google/android/gms/maps/i;)V

    return-void
.end method
