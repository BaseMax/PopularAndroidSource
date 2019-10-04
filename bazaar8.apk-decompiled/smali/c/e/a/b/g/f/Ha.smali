.class public final Lc/e/a/b/g/f/Ha;
.super Ljava/lang/Object;


# direct methods
.method public static a(I[BIILc/e/a/b/g/f/Ac;Lc/e/a/b/g/f/Ia;)I
    .locals 9

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 47
    invoke-static {p1, p2}, Lc/e/a/b/g/f/Ha;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 48
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->d()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    .line 49
    :cond_1
    invoke-static {}, Lc/e/a/b/g/f/Ac;->d()Lc/e/a/b/g/f/Ac;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 50
    invoke-static {p1, p2, p5}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 51
    iget p2, p5, Lc/e/a/b/g/f/Ia;->a:I

    if-eq p2, v7, :cond_2

    move v0, p2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    .line 52
    invoke-static/range {v0 .. v5}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/Ac;Lc/e/a/b/g/f/Ia;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    :cond_2
    move v0, p2

    move p2, v2

    :cond_3
    if-gt p2, p3, :cond_4

    if-ne v0, v7, :cond_4

    .line 53
    invoke-virtual {p4, p0, v6}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    return p2

    .line 54
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->h()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    .line 55
    :cond_5
    invoke-static {p1, p2, p5}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p2

    .line 56
    iget p3, p5, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz p3, :cond_8

    .line 57
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    .line 58
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {p4, p0, p1}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzdp;->a([BII)Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    :goto_1
    add-int/2addr p2, p3

    return p2

    .line 60
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    .line 61
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    .line 62
    :cond_9
    invoke-static {p1, p2}, Lc/e/a/b/g/f/Ha;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 63
    :cond_a
    invoke-static {p1, p2, p5}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result p1

    .line 64
    iget-wide p2, p5, Lc/e/a/b/g/f/Ia;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    return p1

    .line 65
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->d()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static a(I[BIILc/e/a/b/g/f/Ia;)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_7

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 66
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->d()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 67
    invoke-static {p1, p2, p4}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p2

    .line 68
    iget v0, p4, Lc/e/a/b/g/f/Ia;->a:I

    if-eq v0, p0, :cond_2

    .line 69
    invoke-static {v0, p1, p2, p3, p4}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/Ia;)I

    move-result p2

    goto :goto_0

    :cond_2
    if-gt p2, p3, :cond_3

    if-ne v0, p0, :cond_3

    return p2

    .line 70
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->h()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    .line 71
    :cond_4
    invoke-static {p1, p2, p4}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p0

    .line 72
    iget p1, p4, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_5
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 73
    :cond_6
    invoke-static {p1, p2, p4}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result p0

    return p0

    .line 74
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->d()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(I[BIILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lc/e/a/b/g/f/vb<",
            "*>;",
            "Lc/e/a/b/g/f/Ia;",
            ")I"
        }
    .end annotation

    .line 28
    check-cast p4, Lc/e/a/b/g/f/pb;

    .line 29
    invoke-static {p1, p2, p5}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p2

    .line 30
    iget v0, p5, Lc/e/a/b/g/f/Ia;->a:I

    invoke-virtual {p4, v0}, Lc/e/a/b/g/f/pb;->e(I)V

    :goto_0
    if-ge p2, p3, :cond_0

    .line 31
    invoke-static {p1, p2, p5}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 32
    iget v1, p5, Lc/e/a/b/g/f/Ia;->a:I

    if-ne p0, v1, :cond_0

    .line 33
    invoke-static {p1, v0, p5}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p2

    .line 34
    iget v0, p5, Lc/e/a/b/g/f/Ia;->a:I

    invoke-virtual {p4, v0}, Lc/e/a/b/g/f/pb;->e(I)V

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static a(I[BILc/e/a/b/g/f/Ia;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 4
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    .line 5
    iput p0, p3, Lc/e/a/b/g/f/Ia;->a:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 6
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    .line 7
    iput p0, p3, Lc/e/a/b/g/f/Ia;->a:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 8
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    .line 9
    iput p0, p3, Lc/e/a/b/g/f/Ia;->a:I

    return v0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 10
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    .line 11
    iput p0, p3, Lc/e/a/b/g/f/Ia;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 12
    aget-byte p2, p1, p2

    if-ltz p2, :cond_4

    .line 13
    iput p0, p3, Lc/e/a/b/g/f/Ia;->a:I

    return v0

    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method public static a(Lc/e/a/b/g/f/hc;I[BIILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/g/f/hc<",
            "*>;I[BII",
            "Lc/e/a/b/g/f/vb<",
            "*>;",
            "Lc/e/a/b/g/f/Ia;",
            ")I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p2, p3, p4, p6}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIILc/e/a/b/g/f/Ia;)I

    move-result p3

    .line 42
    iget-object v0, p6, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_0

    .line 43
    invoke-static {p2, p3, p6}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 44
    iget v1, p6, Lc/e/a/b/g/f/Ia;->a:I

    if-ne p1, v1, :cond_0

    .line 45
    invoke-static {p0, p2, v0, p4, p6}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIILc/e/a/b/g/f/Ia;)I

    move-result p3

    .line 46
    iget-object v0, p6, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static a(Lc/e/a/b/g/f/hc;[BIIILc/e/a/b/g/f/Ia;)I
    .locals 8

    .line 23
    check-cast p0, Lc/e/a/b/g/f/Wb;

    .line 24
    invoke-virtual {p0}, Lc/e/a/b/g/f/Wb;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 25
    invoke-virtual/range {v0 .. v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;[BIIILc/e/a/b/g/f/Ia;)I

    move-result p1

    .line 26
    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;)V

    .line 27
    iput-object v7, p5, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    return p1
.end method

.method public static a(Lc/e/a/b/g/f/hc;[BIILc/e/a/b/g/f/Ia;)I
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 15
    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 16
    invoke-static {p2, p1, v0, p4}, Lc/e/a/b/g/f/Ha;->a(I[BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 17
    iget p2, p4, Lc/e/a/b/g/f/Ia;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 18
    invoke-interface {p0}, Lc/e/a/b/g/f/hc;->a()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 19
    invoke-interface/range {v0 .. v5}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;[BIILc/e/a/b/g/f/Ia;)V

    .line 20
    invoke-interface {p0, p3}, Lc/e/a/b/g/f/hc;->c(Ljava/lang/Object;)V

    .line 21
    iput-object p3, p4, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    return p2

    .line 22
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0
.end method

.method public static a([BI)I
    .locals 2

    .line 14
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static a([BILc/e/a/b/g/f/Ia;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 2
    iput p1, p2, Lc/e/a/b/g/f/Ia;->a:I

    return v0

    .line 3
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lc/e/a/b/g/f/Ha;->a(I[BILc/e/a/b/g/f/Ia;)I

    move-result p0

    return p0
.end method

.method public static a([BILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lc/e/a/b/g/f/vb<",
            "*>;",
            "Lc/e/a/b/g/f/Ia;",
            ")I"
        }
    .end annotation

    .line 35
    check-cast p2, Lc/e/a/b/g/f/pb;

    .line 36
    invoke-static {p0, p1, p3}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p1

    .line 37
    iget v0, p3, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 38
    invoke-static {p0, p1, p3}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p1

    .line 39
    iget v1, p3, Lc/e/a/b/g/f/Ia;->a:I

    invoke-virtual {p2, v1}, Lc/e/a/b/g/f/pb;->e(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 40
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static b([BILc/e/a/b/g/f/Ia;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 2
    iput-wide v1, p2, Lc/e/a/b/g/f/Ia;->b:J

    return v0

    :cond_0
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .line 3
    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 4
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    .line 5
    :cond_1
    iput-wide v1, p2, Lc/e/a/b/g/f/Ia;->b:J

    return p1
.end method

.method public static b([BI)J
    .locals 7

    .line 6
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static c([BI)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc/e/a/b/g/f/Ha;->b([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static c([BILc/e/a/b/g/f/Ia;)I
    .locals 3

    .line 2
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p1

    .line 3
    iget v0, p2, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    .line 4
    iput-object p0, p2, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lc/e/a/b/g/f/qb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0
.end method

.method public static d([BI)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc/e/a/b/g/f/Ha;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static d([BILc/e/a/b/g/f/Ia;)I
    .locals 1

    .line 2
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p1

    .line 3
    iget v0, p2, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    .line 4
    iput-object p0, p2, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    invoke-static {p0, p1, v0}, Lc/e/a/b/g/f/Hc;->c([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0
.end method

.method public static e([BILc/e/a/b/g/f/Ia;)I
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result p1

    .line 2
    iget v0, p2, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v0, :cond_2

    .line 3
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    iput-object p0, p2, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->a([BII)Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object p0

    iput-object p0, p2, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0
.end method
