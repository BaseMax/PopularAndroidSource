.class public final Lcom/google/android/gms/auth/api/signin/internal/zzn;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/signin/internal/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/m;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->a:I

    iput p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->b:I

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->c:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/d;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/auth/api/signin/d;->getExtensionType()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/auth/api/signin/d;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzn;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->b:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/el;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/el;->zzc(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/el;->zzc(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->c:Landroid/os/Bundle;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/el;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/el;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
