.class public abstract Lcom/google/android/gms/location/ah;
.super Lcom/google/android/gms/internal/op;

# interfaces
.implements Lcom/google/android/gms/location/ag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;-><init>()V

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/location/ah;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzbd(Landroid/os/IBinder;)Lcom/google/android/gms/location/ag;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.ILocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/location/ag;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/ag;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/ai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/ai;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/op;->a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    return p4

    :cond_0
    if-eq p1, p4, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sget-object p1, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/oq;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/ah;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/oq;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/ah;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    :goto_0
    return p4
.end method
