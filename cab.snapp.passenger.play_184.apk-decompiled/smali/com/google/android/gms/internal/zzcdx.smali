.class public final Lcom/google/android/gms/internal/zzcdx;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcdx;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcdv;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/android/gms/location/zze;


# instance fields
.field private c:Lcom/google/android/gms/location/zze;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcdv;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcdx;->a:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/location/zze;

    invoke-direct {v0}, Lcom/google/android/gms/location/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcdx;->b:Lcom/google/android/gms/location/zze;

    new-instance v0, Lcom/google/android/gms/internal/fz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcdx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/zze;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/zze;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcdv;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdx;->c:Lcom/google/android/gms/location/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdx;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcdx;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzcdx;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzcdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdx;->c:Lcom/google/android/gms/location/zze;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcdx;->c:Lcom/google/android/gms/location/zze;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/ag;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdx;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcdx;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/ag;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdx;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcdx;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/ag;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdx;->c:Lcom/google/android/gms/location/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/location/zze;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/el;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdx;->c:Lcom/google/android/gms/location/zze;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/el;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcdx;->d:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/el;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcdx;->e:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/el;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/el;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
