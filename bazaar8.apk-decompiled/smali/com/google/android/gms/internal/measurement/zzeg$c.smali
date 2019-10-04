.class public final Lcom/google/android/gms/internal/measurement/zzeg$c;
.super Lcom/google/android/gms/internal/measurement/zzeg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzeg;-><init>(Lc/e/a/b/g/f/Ya;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->d:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a(B)V
    .locals 1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(J)V

    return-void
.end method

.method public final a(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(J)V

    return-void
.end method

.method public final a(ILc/e/a/b/g/f/Sb;)V
    .locals 1

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$c;->c(Lc/e/a/b/g/f/Sb;)V

    return-void
.end method

.method public final a(ILc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)V
    .locals 1

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(Lc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)V

    return-void
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 1

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(Lcom/google/android/gms/internal/measurement/zzdp;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    int-to-byte p1, p2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(B)V

    return-void
.end method

.method public final a(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final a([BII)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b([BII)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(I)V

    return-void
.end method

.method public final b(ILc/e/a/b/g/f/Sb;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->c(II)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(ILc/e/a/b/g/f/Sb;)V

    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    return-void
.end method

.method public final b(ILcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->c(II)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    const/4 p1, 0x4

    .line 10
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    return-void
.end method

.method public final b(Lc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)V
    .locals 3

    .line 11
    move-object v0, p1

    check-cast v0, Lc/e/a/b/g/f/Ca;

    .line 12
    invoke-virtual {v0}, Lc/e/a/b/g/f/Ca;->h()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 13
    invoke-interface {p2, v0}, Lc/e/a/b/g/f/hc;->b(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/Ca;->a(I)V

    .line 15
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg;->c:Lc/e/a/b/g/f/Za;

    invoke-interface {p2, p1, v0}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdp;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(I)V

    .line 18
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzdp;->a(Lc/e/a/b/g/f/Ka;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->c(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(I)V

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 36
    :cond_0
    invoke-static {p1}, Lc/e/a/b/g/f/Hc;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 37
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(I)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzic; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzeg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V

    return-void
.end method

.method public final b([BII)V
    .locals 1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(I)V

    return-void
.end method

.method public final c(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzeg$c;->c(J)V

    return-void
.end method

.method public final c(J)V
    .locals 1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c(Lc/e/a/b/g/f/Sb;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Lc/e/a/b/g/f/Sb;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->b(I)V

    .line 6
    invoke-interface {p1, p0}, Lc/e/a/b/g/f/Sb;->a(Lcom/google/android/gms/internal/measurement/zzeg;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lc/e/a/b/g/f/Hc;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e(II)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$c;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$c;->d(I)V

    return-void
.end method
