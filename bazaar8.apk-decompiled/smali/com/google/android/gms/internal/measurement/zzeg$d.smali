.class public final Lcom/google/android/gms/internal/measurement/zzeg$d;
.super Lcom/google/android/gms/internal/measurement/zzeg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public j:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzeg;-><init>(Lc/e/a/b/g/f/Ya;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->d:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->e:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {p1}, Lc/e/a/b/g/f/Fc;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->f:J

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->f:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->g:J

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->f:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->i:J

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->d:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    .line 30
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->f:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 31
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a(B)V
    .locals 5

    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 15
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    invoke-static {v0, v1, p1}, Lc/e/a/b/g/f/Fc;->a(JB)V

    return-void

    .line 16
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(J)V

    return-void
.end method

.method public final a(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(J)V

    return-void
.end method

.method public final a(ILc/e/a/b/g/f/Sb;)V
    .locals 1

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->c(Lc/e/a/b/g/f/Sb;)V

    return-void
.end method

.method public final a(ILc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)V
    .locals 1

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(Lc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)V

    return-void
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 1

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(Lcom/google/android/gms/internal/measurement/zzdp;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    int-to-byte p1, p2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(B)V

    return-void
.end method

.method public final a(J)V
    .locals 12

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->i:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_1

    :goto_0
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lc/e/a/b/g/f/Fc;->a(JB)V

    return-void

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lc/e/a/b/g/f/Fc;->a(JB)V

    ushr-long/2addr p1, v4

    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_3

    and-long v2, p1, v7

    cmp-long v11, v2, v5

    if-nez v11, :cond_2

    add-long/2addr v9, v0

    .line 24
    iput-wide v9, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lc/e/a/b/g/f/Fc;->a(JB)V

    return-void

    :cond_2
    add-long v2, v0, v9

    .line 25
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lc/e/a/b/g/f/Fc;->a(JB)V

    ushr-long/2addr p1, v4

    goto :goto_1

    .line 26
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a([BII)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b([BII)V

    return-void
.end method

.method public final b()I
    .locals 4

    .line 54
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final b(I)V
    .locals 7

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->i:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lc/e/a/b/g/f/Fc;->a(JB)V

    return-void

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lc/e/a/b/g/f/Fc;->a(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_2

    add-long/2addr v4, v0

    .line 23
    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lc/e/a/b/g/f/Fc;->a(JB)V

    return-void

    :cond_2
    add-long v2, v0, v4

    .line 24
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lc/e/a/b/g/f/Fc;->a(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 25
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(I)V

    return-void
.end method

.method public final b(ILc/e/a/b/g/f/Sb;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->c(II)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(ILc/e/a/b/g/f/Sb;)V

    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    return-void
.end method

.method public final b(ILcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->c(II)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    const/4 p1, 0x4

    .line 10
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

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
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(I)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(I)V

    .line 18
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzdp;->a(Lc/e/a/b/g/f/Ka;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8

    .line 33
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    .line 34
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    .line 35
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v2

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 37
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    .line 38
    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->f:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v2, v3

    .line 39
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lc/e/a/b/g/f/Hc;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 41
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    .line 42
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(I)V

    .line 43
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Lc/e/a/b/g/f/Hc;->a(Ljava/lang/CharSequence;)I

    move-result v2

    .line 45
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(I)V

    .line 46
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzeg$d;->j(J)V

    .line 47
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lc/e/a/b/g/f/Hc;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 48
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzic; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    .line 51
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    .line 52
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzeg$d;->j(J)V

    .line 53
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzeg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V

    return-void
.end method

.method public final b([BII)V
    .locals 11

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 27
    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    int-to-long v9, p3

    sub-long/2addr v0, v9

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v3, p2

    move-object v2, p1

    move-wide v7, v9

    .line 28
    invoke-static/range {v2 .. v8}, Lc/e/a/b/g/f/Fc;->a([BJJJ)V

    .line 29
    iget-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeg$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzeg$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(I)V

    return-void
.end method

.method public final c(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzeg$d;->c(J)V

    return-void
.end method

.method public final c(J)V
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    .line 8
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->f:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 9
    invoke-virtual {v0, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 10
    iget-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    return-void
.end method

.method public final c(Lc/e/a/b/g/f/Sb;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Lc/e/a/b/g/f/Sb;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->b(I)V

    .line 6
    invoke-interface {p1, p0}, Lc/e/a/b/g/f/Sb;->a(Lcom/google/android/gms/internal/measurement/zzeg;)V

    return-void
.end method

.method public final d(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    .line 2
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->f:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 3
    invoke-virtual {v0, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->j:J

    return-void
.end method

.method public final e(II)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeg$d;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzeg$d;->d(I)V

    return-void
.end method

.method public final j(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->e:Ljava/nio/ByteBuffer;

    .line 2
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzeg$d;->f:J

    sub-long/2addr p1, v1

    long-to-int p2, p1

    .line 3
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
