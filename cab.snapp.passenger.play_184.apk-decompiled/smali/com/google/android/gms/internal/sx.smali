.class public abstract Lcom/google/android/gms/internal/sx;
.super Ljava/lang/Object;


# instance fields
.field protected volatile b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/sx;->b:I

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/sx;[BI)Lcom/google/android/gms/internal/sx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/sx;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/sw;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/so;->zzn([BII)Lcom/google/android/gms/internal/so;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/sx;->zza(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/sx;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/so;->zzkp(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/sw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final zza(Lcom/google/android/gms/internal/sx;[B)Lcom/google/android/gms/internal/sx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/sx;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/sw;
        }
    .end annotation

    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/sx;->a(Lcom/google/android/gms/internal/sx;[BI)Lcom/google/android/gms/internal/sx;

    move-result-object p0

    return-object p0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/sx;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sx;->zzho()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/sp;->zzo([BII)Lcom/google/android/gms/internal/sp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sx;->zza(Lcom/google/android/gms/internal/sp;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/sp;->zzcwt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sx;->zzdag()Lcom/google/android/gms/internal/sx;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/sy;->zzd(Lcom/google/android/gms/internal/sx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/sx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public zza(Lcom/google/android/gms/internal/sp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public zzdag()Lcom/google/android/gms/internal/sx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sx;

    return-object v0
.end method

.method public final zzdam()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/sx;->b:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sx;->zzho()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/sx;->b:I

    return v0
.end method

.method public final zzho()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sx;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/sx;->b:I

    return v0
.end method
