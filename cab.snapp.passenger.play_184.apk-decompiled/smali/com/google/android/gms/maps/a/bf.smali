.class public final Lcom/google/android/gms/maps/a/bf;
.super Lcom/google/android/gms/internal/oo;

# interfaces
.implements Lcom/google/android/gms/maps/a/f;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/oo;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final fromScreenLocation(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/oo;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/oq;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/oo;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/oq;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/oo;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/oo;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/maps/model/VisibleRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/oq;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/VisibleRegion;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/oo;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/oq;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/oo;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
