.class final Lcom/google/android/gms/internal/ph$d;
.super Lcom/google/android/gms/internal/ph$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final g:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ph$a;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ph$d;->g:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ph$d;->g:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ph$d;->c:[B

    iget v2, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    return-void
.end method

.method private final d(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ph$d;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ph$d;->a()V

    :cond_0
    return-void
.end method

.method public final write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ph$d;->c:[B

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ph$d;->c:[B

    iget v2, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    iput v1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ph$d;->f:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ph$d;->a()V

    iget v0, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ph$d;->c:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ph$d;->g:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ph$d;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ph$d;->f:I

    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph$a;->a(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ph$a;->a(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/ou;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ph;->zzay(Lcom/google/android/gms/internal/ou;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/qr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ph;->zze(Lcom/google/android/gms/internal/qr;)V

    return-void
.end method

.method public final zzaa(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph$a;->a(II)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ph$a;->b(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ph$a;->a(J)V

    return-void
.end method

.method public final zzab(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph$a;->a(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ph$a;->b(I)V

    return-void
.end method

.method public final zzac(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph$a;->a(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ph$a;->c(I)V

    return-void
.end method

.method public final zzay(Lcom/google/android/gms/internal/ou;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ph;->zzld(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ou;->a(Lcom/google/android/gms/internal/ot;)V

    return-void
.end method

.method public final zzb(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ph$d;->a()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ph$a;->a(B)V

    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph$a;->a(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ph$a;->b(J)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/ou;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ph;->zzz(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ph;->zzab(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ph;->zza(ILcom/google/android/gms/internal/ou;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ph;->zzz(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/qr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ph;->zzz(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ph;->zzab(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ph;->zza(ILcom/google/android/gms/internal/qr;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ph;->zzz(II)V

    return-void
.end method

.method public final zzct(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ph$a;->a(J)V

    return-void
.end method

.method public final zzcv(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ph$a;->b(J)V

    return-void
.end method

.method public final zzd([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ph;->write([BII)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/qr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/qr;->zzho()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ph;->zzld(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/ph;)V

    return-void
.end method

.method public final zzi([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ph;->zzld(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ph;->write([BII)V

    return-void
.end method

.method public final zzl(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph$a;->a(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ph$a;->a(B)V

    return-void
.end method

.method public final zzlc(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ph;->zzld(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ph;->zzct(J)V

    return-void
.end method

.method public final zzld(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ph$a;->b(I)V

    return-void
.end method

.method public final zzlf(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ph$d;->d(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ph$a;->c(I)V

    return-void
.end method

.method public final zzn(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ph;->zzts(Ljava/lang/String;)V

    return-void
.end method

.method public final zzts(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ph$d;->zzli(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/rz;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ph;->zzld(I)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ot;->zzd([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    iget v3, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ph$d;->a()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ph$d;->zzli(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ph$d;->e:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/sc; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ph$d;->c:[B

    iget v3, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    iget v4, p0, Lcom/google/android/gms/internal/ph$d;->d:I

    iget v5, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/rz;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ph$a;->b(I)V

    iput v1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/rz;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ph$a;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ph$d;->c:[B

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/rz;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ph$d;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ph$d;->f:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/sc; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ph$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ph$c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iget v1, p0, Lcom/google/android/gms/internal/ph$d;->f:I

    iget v3, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ph$d;->f:I

    iput v2, p0, Lcom/google/android/gms/internal/ph$d;->e:I

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/sc; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ph;->a(Ljava/lang/String;Lcom/google/android/gms/internal/sc;)V

    return-void
.end method

.method public final zzz(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ph;->zzld(I)V

    return-void
.end method
