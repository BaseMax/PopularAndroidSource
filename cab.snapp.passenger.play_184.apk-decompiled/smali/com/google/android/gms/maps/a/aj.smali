.class public abstract Lcom/google/android/gms/maps/a/aj;
.super Lcom/google/android/gms/internal/op;

# interfaces
.implements Lcom/google/android/gms/maps/a/ai;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;-><init>()V

    const-string v0, "com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/a/aj;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
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

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    return p4

    :cond_0
    if-ne p1, p4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/aj;->onMyLocationButtonClick()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/oq;->zza(Landroid/os/Parcel;Z)V

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method