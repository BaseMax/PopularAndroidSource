.class public final Lcom/google/android/gms/location/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/location/zzz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/internal/ej;->zzd(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ej;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ej;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ej;->zzc(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    :cond_2
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ej;->zzg(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_0

    :cond_3
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ej;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ej;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ej;->zzaf(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/location/zzz;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/location/zzz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/location/zzz;

    return-object p1
.end method
