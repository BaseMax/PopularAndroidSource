.class public abstract Lcom/google/android/gms/maps/a/ah;
.super Lcom/google/android/gms/internal/op;

# interfaces
.implements Lcom/google/android/gms/maps/a/ag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;-><init>()V

    const-string v0, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/a/ah;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/op;->a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    if-eq p1, v0, :cond_3

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/maps/model/a/t;->zzbk(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/a/ah;->zzc(Lcom/google/android/gms/maps/model/a/s;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/maps/model/a/t;->zzbk(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/a/ah;->zzd(Lcom/google/android/gms/maps/model/a/s;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/maps/model/a/t;->zzbk(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/a/ah;->zzb(Lcom/google/android/gms/maps/model/a/s;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method