.class public final Lcom/google/android/gms/internal/ta;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static a:I = 0xb

.field private static b:I = 0xc

.field private static c:I = 0x10

.field private static d:I = 0x1a

.field public static final zzpnp:[I

.field public static final zzpnq:[J

.field public static final zzpnr:[F

.field public static final zzpns:[D

.field public static final zzpnt:[Z

.field public static final zzpnu:[[B

.field public static final zzpnv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/ta;->zzpnp:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/ta;->zzpnq:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/ta;->zzpnr:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/ta;->zzpns:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/ta;->zzpnt:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ta;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/ta;->zzpnu:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ta;->zzpnv:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/so;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/so;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/so;->zzkq(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/so;->zzcvt()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/so;->zzkq(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/so;->a(II)V

    return v1
.end method
