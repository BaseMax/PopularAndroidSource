.class public Lcom/google/android/gms/maps/model/Cap;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/Cap;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/gms/maps/model/a;

.field private final d:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/maps/model/Cap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/model/Cap;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Cap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/a;Ljava/lang/Float;)V

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/lang/Float;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/a/a$a;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-direct {v0, p2}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/a/a;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/a;Ljava/lang/Float;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/maps/model/a;Ljava/lang/Float;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const-string v0, "Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/Cap;->c:Lcom/google/android/gms/maps/model/a;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/maps/model/a;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/a;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/maps/model/Cap;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown Cap type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/CustomCap;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->c:Lcom/google/android/gms/maps/model/a;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/a;F)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/model/SquareCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/SquareCap;-><init>()V

    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/maps/model/Cap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/maps/model/Cap;

    iget v1, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    iget v3, p1, Lcom/google/android/gms/maps/model/Cap;->b:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->c:Lcom/google/android/gms/maps/model/a;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/Cap;->c:Lcom/google/android/gms/maps/model/a;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/ag;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/ag;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->c:Lcom/google/android/gms/maps/model/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[Cap: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/el;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/el;->zzc(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/Cap;->c:Lcom/google/android/gms/maps/model/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/a;->zzavz()Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/el;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/internal/el;->zza(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/el;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
