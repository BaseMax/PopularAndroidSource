.class final Lcom/google/android/gms/maps/m;
.super Lcom/google/android/gms/maps/a/ad;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/m;->a:Lcom/google/android/gms/maps/f;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/m;->a:Lcom/google/android/gms/maps/f;

    new-instance v1, Lcom/google/android/gms/maps/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/c;-><init>(Lcom/google/android/gms/maps/a/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/f;->onMapReady(Lcom/google/android/gms/maps/c;)V

    return-void
.end method
