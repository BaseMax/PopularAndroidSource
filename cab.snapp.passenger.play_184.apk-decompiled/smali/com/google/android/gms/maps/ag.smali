.class final Lcom/google/android/gms/maps/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/d$a;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/a/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ag;->a:Lcom/google/android/gms/maps/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/ag;->a:Lcom/google/android/gms/maps/a/u;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/u;->zzd(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
