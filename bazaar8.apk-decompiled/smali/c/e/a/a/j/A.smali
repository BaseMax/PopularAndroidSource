.class public final Lc/e/a/a/j/A;
.super Ljava/lang/Object;
.source "SampleMetadataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/A$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:[J

.field public d:[I

.field public e:[I

.field public f:[J

.field public g:[Lc/e/a/a/e/q$a;

.field public h:[Lcom/google/android/exoplayer2/Format;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Lcom/google/android/exoplayer2/Format;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lc/e/a/a/j/A;->a:I

    .line 3
    iget v0, p0, Lc/e/a/a/j/A;->a:I

    new-array v1, v0, [I

    iput-object v1, p0, Lc/e/a/a/j/A;->b:[I

    .line 4
    new-array v1, v0, [J

    iput-object v1, p0, Lc/e/a/a/j/A;->c:[J

    .line 5
    new-array v1, v0, [J

    iput-object v1, p0, Lc/e/a/a/j/A;->f:[J

    .line 6
    new-array v1, v0, [I

    iput-object v1, p0, Lc/e/a/a/j/A;->e:[I

    .line 7
    new-array v1, v0, [I

    iput-object v1, p0, Lc/e/a/a/j/A;->d:[I

    .line 8
    new-array v1, v0, [Lc/e/a/a/e/q$a;

    iput-object v1, p0, Lc/e/a/a/j/A;->g:[Lc/e/a/a/e/q$a;

    .line 9
    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lc/e/a/a/j/A;->h:[Lcom/google/android/exoplayer2/Format;

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Lc/e/a/a/j/A;->m:J

    .line 11
    iput-wide v0, p0, Lc/e/a/a/j/A;->n:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lc/e/a/a/j/A;->q:Z

    .line 13
    iput-boolean v0, p0, Lc/e/a/a/j/A;->p:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    monitor-enter p0

    .line 39
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->i:I

    iget v1, p0, Lc/e/a/a/j/A;->l:I

    sub-int/2addr v0, v1

    .line 40
    iget v1, p0, Lc/e/a/a/j/A;->i:I

    iput v1, p0, Lc/e/a/a/j/A;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v1, p1

    const/4 p1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge p1, p2, :cond_3

    .line 112
    iget-object v3, p0, Lc/e/a/a/j/A;->f:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    .line 113
    iget-object v3, p0, Lc/e/a/a/j/A;->e:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v2, p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 114
    iget v3, p0, Lc/e/a/a/j/A;->a:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public declared-synchronized a(JZZ)I
    .locals 8

    monitor-enter p0

    .line 32
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->l:I

    invoke-virtual {p0, v0}, Lc/e/a/a/j/A;->d(I)I

    move-result v2

    .line 33
    invoke-virtual {p0}, Lc/e/a/a/j/A;->j()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/e/a/a/j/A;->f:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lc/e/a/a/j/A;->n:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget p4, p0, Lc/e/a/a/j/A;->i:I

    iget v0, p0, Lc/e/a/a/j/A;->l:I

    sub-int v3, p4, v0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/j/A;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v7, :cond_1

    .line 35
    monitor-exit p0

    return v7

    .line 36
    :cond_1
    :try_start_1
    iget p2, p0, Lc/e/a/a/j/A;->l:I

    add-int/2addr p2, p1

    iput p2, p0, Lc/e/a/a/j/A;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit p0

    return p1

    .line 38
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lc/e/a/a/E;Lc/e/a/a/c/f;ZZLcom/google/android/exoplayer2/Format;Lc/e/a/a/j/A$a;)I
    .locals 3

    monitor-enter p0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/a/j/A;->j()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    .line 12
    iget-boolean p4, p0, Lc/e/a/a/j/A;->o:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lc/e/a/a/j/A;->r:Lcom/google/android/exoplayer2/Format;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p2, p0, Lc/e/a/a/j/A;->r:Lcom/google/android/exoplayer2/Format;

    if-eq p2, p5, :cond_2

    .line 14
    :cond_1
    iget-object p2, p0, Lc/e/a/a/j/A;->r:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p1, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return v1

    :cond_2
    const/4 p1, -0x3

    .line 16
    monitor-exit p0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 17
    :try_start_1
    invoke-virtual {p2, p1}, Lc/e/a/a/c/a;->e(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    return v2

    .line 19
    :cond_4
    :try_start_2
    iget p4, p0, Lc/e/a/a/j/A;->l:I

    invoke-virtual {p0, p4}, Lc/e/a/a/j/A;->d(I)I

    move-result p4

    if-nez p3, :cond_7

    .line 20
    iget-object p3, p0, Lc/e/a/a/j/A;->h:[Lcom/google/android/exoplayer2/Format;

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    iget-object p1, p0, Lc/e/a/a/j/A;->e:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lc/e/a/a/c/a;->e(I)V

    .line 22
    iget-object p1, p0, Lc/e/a/a/j/A;->f:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lc/e/a/a/c/f;->d:J

    .line 23
    invoke-virtual {p2}, Lc/e/a/a/c/f;->m()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    .line 24
    monitor-exit p0

    return v2

    .line 25
    :cond_6
    :try_start_3
    iget-object p1, p0, Lc/e/a/a/j/A;->d:[I

    aget p1, p1, p4

    iput p1, p6, Lc/e/a/a/j/A$a;->a:I

    .line 26
    iget-object p1, p0, Lc/e/a/a/j/A;->c:[J

    aget-wide p2, p1, p4

    iput-wide p2, p6, Lc/e/a/a/j/A$a;->b:J

    .line 27
    iget-object p1, p0, Lc/e/a/a/j/A;->g:[Lc/e/a/a/e/q$a;

    aget-object p1, p1, p4

    iput-object p1, p6, Lc/e/a/a/j/A$a;->c:Lc/e/a/a/e/q$a;

    .line 28
    iget p1, p0, Lc/e/a/a/j/A;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/a/j/A;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    monitor-exit p0

    return v2

    .line 30
    :cond_7
    :goto_1
    :try_start_4
    iget-object p2, p0, Lc/e/a/a/j/A;->h:[Lcom/google/android/exoplayer2/Format;

    aget-object p2, p2, p4

    iput-object p2, p1, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(I)J
    .locals 5

    .line 115
    iget-wide v0, p0, Lc/e/a/a/j/A;->m:J

    .line 116
    invoke-virtual {p0, p1}, Lc/e/a/a/j/A;->c(I)J

    move-result-wide v2

    .line 117
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/a/j/A;->m:J

    .line 118
    iget v0, p0, Lc/e/a/a/j/A;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lc/e/a/a/j/A;->i:I

    .line 119
    iget v0, p0, Lc/e/a/a/j/A;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lc/e/a/a/j/A;->j:I

    .line 120
    iget v0, p0, Lc/e/a/a/j/A;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lc/e/a/a/j/A;->k:I

    .line 121
    iget v0, p0, Lc/e/a/a/j/A;->k:I

    iget v1, p0, Lc/e/a/a/j/A;->a:I

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 122
    iput v0, p0, Lc/e/a/a/j/A;->k:I

    .line 123
    :cond_0
    iget v0, p0, Lc/e/a/a/j/A;->l:I

    sub-int/2addr v0, p1

    iput v0, p0, Lc/e/a/a/j/A;->l:I

    .line 124
    iget p1, p0, Lc/e/a/a/j/A;->l:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lc/e/a/a/j/A;->l:I

    .line 126
    :cond_1
    iget p1, p0, Lc/e/a/a/j/A;->i:I

    if-nez p1, :cond_3

    .line 127
    iget p1, p0, Lc/e/a/a/j/A;->k:I

    if-nez p1, :cond_2

    iget p1, p0, Lc/e/a/a/j/A;->a:I

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 128
    iget-object v0, p0, Lc/e/a/a/j/A;->c:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lc/e/a/a/j/A;->d:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    .line 129
    :cond_3
    iget-object p1, p0, Lc/e/a/a/j/A;->c:[J

    iget v0, p0, Lc/e/a/a/j/A;->k:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public declared-synchronized a(JIJILc/e/a/a/e/q$a;)V
    .locals 5

    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lc/e/a/a/j/A;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 50
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lc/e/a/a/j/A;->p:Z

    .line 52
    :cond_1
    iget-boolean v0, p0, Lc/e/a/a/j/A;->q:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 53
    :goto_1
    iput-boolean v0, p0, Lc/e/a/a/j/A;->o:Z

    .line 54
    iget-wide v3, p0, Lc/e/a/a/j/A;->n:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lc/e/a/a/j/A;->n:J

    .line 55
    iget v0, p0, Lc/e/a/a/j/A;->i:I

    invoke-virtual {p0, v0}, Lc/e/a/a/j/A;->d(I)I

    move-result v0

    .line 56
    iget-object v3, p0, Lc/e/a/a/j/A;->f:[J

    aput-wide p1, v3, v0

    .line 57
    iget-object p1, p0, Lc/e/a/a/j/A;->c:[J

    aput-wide p4, p1, v0

    .line 58
    iget-object p1, p0, Lc/e/a/a/j/A;->d:[I

    aput p6, p1, v0

    .line 59
    iget-object p1, p0, Lc/e/a/a/j/A;->e:[I

    aput p3, p1, v0

    .line 60
    iget-object p1, p0, Lc/e/a/a/j/A;->g:[Lc/e/a/a/e/q$a;

    aput-object p7, p1, v0

    .line 61
    iget-object p1, p0, Lc/e/a/a/j/A;->h:[Lcom/google/android/exoplayer2/Format;

    iget-object p2, p0, Lc/e/a/a/j/A;->r:Lcom/google/android/exoplayer2/Format;

    aput-object p2, p1, v0

    .line 62
    iget-object p1, p0, Lc/e/a/a/j/A;->b:[I

    iget p2, p0, Lc/e/a/a/j/A;->s:I

    aput p2, p1, v0

    .line 63
    iget p1, p0, Lc/e/a/a/j/A;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lc/e/a/a/j/A;->i:I

    .line 64
    iget p1, p0, Lc/e/a/a/j/A;->i:I

    iget p2, p0, Lc/e/a/a/j/A;->a:I

    if-ne p1, p2, :cond_4

    .line 65
    iget p1, p0, Lc/e/a/a/j/A;->a:I

    add-int/lit16 p1, p1, 0x3e8

    .line 66
    new-array p2, p1, [I

    .line 67
    new-array p3, p1, [J

    .line 68
    new-array p4, p1, [J

    .line 69
    new-array p5, p1, [I

    .line 70
    new-array p6, p1, [I

    .line 71
    new-array p7, p1, [Lc/e/a/a/e/q$a;

    .line 72
    new-array v0, p1, [Lcom/google/android/exoplayer2/Format;

    .line 73
    iget v2, p0, Lc/e/a/a/j/A;->a:I

    iget v3, p0, Lc/e/a/a/j/A;->k:I

    sub-int/2addr v2, v3

    .line 74
    iget-object v3, p0, Lc/e/a/a/j/A;->c:[J

    iget v4, p0, Lc/e/a/a/j/A;->k:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v3, p0, Lc/e/a/a/j/A;->f:[J

    iget v4, p0, Lc/e/a/a/j/A;->k:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v3, p0, Lc/e/a/a/j/A;->e:[I

    iget v4, p0, Lc/e/a/a/j/A;->k:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v3, p0, Lc/e/a/a/j/A;->d:[I

    iget v4, p0, Lc/e/a/a/j/A;->k:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v3, p0, Lc/e/a/a/j/A;->g:[Lc/e/a/a/e/q$a;

    iget v4, p0, Lc/e/a/a/j/A;->k:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v3, p0, Lc/e/a/a/j/A;->h:[Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lc/e/a/a/j/A;->k:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object v3, p0, Lc/e/a/a/j/A;->b:[I

    iget v4, p0, Lc/e/a/a/j/A;->k:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget v3, p0, Lc/e/a/a/j/A;->k:I

    .line 82
    iget-object v4, p0, Lc/e/a/a/j/A;->c:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v4, p0, Lc/e/a/a/j/A;->f:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v4, p0, Lc/e/a/a/j/A;->e:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v4, p0, Lc/e/a/a/j/A;->d:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget-object v4, p0, Lc/e/a/a/j/A;->g:[Lc/e/a/a/e/q$a;

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget-object v4, p0, Lc/e/a/a/j/A;->h:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v4, p0, Lc/e/a/a/j/A;->b:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iput-object p3, p0, Lc/e/a/a/j/A;->c:[J

    .line 90
    iput-object p4, p0, Lc/e/a/a/j/A;->f:[J

    .line 91
    iput-object p5, p0, Lc/e/a/a/j/A;->e:[I

    .line 92
    iput-object p6, p0, Lc/e/a/a/j/A;->d:[I

    .line 93
    iput-object p7, p0, Lc/e/a/a/j/A;->g:[Lc/e/a/a/e/q$a;

    .line 94
    iput-object v0, p0, Lc/e/a/a/j/A;->h:[Lcom/google/android/exoplayer2/Format;

    .line 95
    iput-object p2, p0, Lc/e/a/a/j/A;->b:[I

    .line 96
    iput v1, p0, Lc/e/a/a/j/A;->k:I

    .line 97
    iget p2, p0, Lc/e/a/a/j/A;->a:I

    iput p2, p0, Lc/e/a/a/j/A;->i:I

    .line 98
    iput p1, p0, Lc/e/a/a/j/A;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/j/A;->i:I

    .line 2
    iput v0, p0, Lc/e/a/a/j/A;->j:I

    .line 3
    iput v0, p0, Lc/e/a/a/j/A;->k:I

    .line 4
    iput v0, p0, Lc/e/a/a/j/A;->l:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lc/e/a/a/j/A;->p:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 6
    iput-wide v2, p0, Lc/e/a/a/j/A;->m:J

    .line 7
    iput-wide v2, p0, Lc/e/a/a/j/A;->n:J

    .line 8
    iput-boolean v0, p0, Lc/e/a/a/j/A;->o:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lc/e/a/a/j/A;->r:Lcom/google/android/exoplayer2/Format;

    .line 10
    iput-boolean v1, p0, Lc/e/a/a/j/A;->q:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized a(J)Z
    .locals 7

    monitor-enter p0

    .line 100
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 101
    iget-wide v3, p0, Lc/e/a/a/j/A;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 102
    :cond_1
    :try_start_1
    iget-wide v3, p0, Lc/e/a/a/j/A;->m:J

    iget v0, p0, Lc/e/a/a/j/A;->l:I

    .line 103
    invoke-virtual {p0, v0}, Lc/e/a/a/j/A;->c(I)J

    move-result-wide v5

    .line 104
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 105
    monitor-exit p0

    return v1

    .line 106
    :cond_2
    :try_start_2
    iget v0, p0, Lc/e/a/a/j/A;->i:I

    .line 107
    iget v1, p0, Lc/e/a/a/j/A;->i:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lc/e/a/a/j/A;->d(I)I

    move-result v1

    .line 108
    :cond_3
    :goto_0
    iget v3, p0, Lc/e/a/a/j/A;->l:I

    if-le v0, v3, :cond_4

    iget-object v3, p0, Lc/e/a/a/j/A;->f:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-ltz v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 109
    iget v1, p0, Lc/e/a/a/j/A;->a:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 110
    :cond_4
    iget p1, p0, Lc/e/a/a/j/A;->j:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lc/e/a/a/j/A;->b(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 42
    :try_start_0
    iput-boolean v0, p0, Lc/e/a/a/j/A;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return v1

    .line 44
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lc/e/a/a/j/A;->q:Z

    .line 45
    iget-object v2, p0, Lc/e/a/a/j/A;->r:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 46
    monitor-exit p0

    return v1

    .line 47
    :cond_1
    :try_start_2
    iput-object p1, p0, Lc/e/a/a/j/A;->r:Lcom/google/android/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()J
    .locals 2

    monitor-enter p0

    .line 15
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 16
    monitor-exit p0

    return-wide v0

    .line 17
    :cond_0
    :try_start_1
    iget v0, p0, Lc/e/a/a/j/A;->i:I

    invoke-virtual {p0, v0}, Lc/e/a/a/j/A;->a(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/j/A;->i()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 2
    iget v2, p0, Lc/e/a/a/j/A;->i:I

    iget v3, p0, Lc/e/a/a/j/A;->l:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lc/e/a/a/o/e;->a(Z)V

    .line 3
    iget v2, p0, Lc/e/a/a/j/A;->i:I

    sub-int/2addr v2, v0

    iput v2, p0, Lc/e/a/a/j/A;->i:I

    .line 4
    iget-wide v2, p0, Lc/e/a/a/j/A;->m:J

    iget v4, p0, Lc/e/a/a/j/A;->i:I

    invoke-virtual {p0, v4}, Lc/e/a/a/j/A;->c(I)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lc/e/a/a/j/A;->n:J

    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lc/e/a/a/j/A;->o:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Lc/e/a/a/j/A;->o:Z

    .line 6
    iget p1, p0, Lc/e/a/a/j/A;->i:I

    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    sub-int/2addr p1, v1

    .line 7
    invoke-virtual {p0, p1}, Lc/e/a/a/j/A;->d(I)I

    move-result p1

    .line 8
    iget-object v0, p0, Lc/e/a/a/j/A;->c:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lc/e/a/a/j/A;->d:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public declared-synchronized b(JZZ)J
    .locals 9

    monitor-enter p0

    .line 9
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->i:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/e/a/a/j/A;->f:[J

    iget v3, p0, Lc/e/a/a/j/A;->k:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 10
    iget p4, p0, Lc/e/a/a/j/A;->l:I

    iget v0, p0, Lc/e/a/a/j/A;->i:I

    if-eq p4, v0, :cond_1

    iget p4, p0, Lc/e/a/a/j/A;->l:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget p4, p0, Lc/e/a/a/j/A;->i:I

    :goto_0
    move v5, p4

    .line 11
    iget v4, p0, Lc/e/a/a/j/A;->k:I

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lc/e/a/a/j/A;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 12
    monitor-exit p0

    return-wide v1

    .line 13
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lc/e/a/a/j/A;->a(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 14
    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 2
    monitor-exit p0

    return-wide v0

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Lc/e/a/a/j/A;->l:I

    invoke-virtual {p0, v0}, Lc/e/a/a/j/A;->a(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 4
    invoke-virtual {p0, v2}, Lc/e/a/a/j/A;->d(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 5
    iget-object v4, p0, Lc/e/a/a/j/A;->f:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 6
    iget-object v4, p0, Lc/e/a/a/j/A;->e:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 7
    iget v2, p0, Lc/e/a/a/j/A;->a:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/j/A;->j:I

    return v0
.end method

.method public final d(I)I
    .locals 1

    .line 2
    iget v0, p0, Lc/e/a/a/j/A;->k:I

    add-int/2addr v0, p1

    .line 3
    iget p1, p0, Lc/e/a/a/j/A;->a:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public declared-synchronized e()J
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->i:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/A;->f:[J

    iget v1, p0, Lc/e/a/a/j/A;->k:I

    aget-wide v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(I)Z
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->j:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lc/e/a/a/j/A;->j:I

    iget v1, p0, Lc/e/a/a/j/A;->i:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 3
    iget v0, p0, Lc/e/a/a/j/A;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc/e/a/a/j/A;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()J
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/e/a/a/j/A;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/a/j/A;->s:I

    return-void
.end method

.method public g()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/j/A;->j:I

    iget v1, p0, Lc/e/a/a/j/A;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized h()Lcom/google/android/exoplayer2/Format;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lc/e/a/a/j/A;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/A;->r:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/j/A;->j:I

    iget v1, p0, Lc/e/a/a/j/A;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized j()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lc/e/a/a/j/A;->l:I

    iget v1, p0, Lc/e/a/a/j/A;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lc/e/a/a/j/A;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/j/A;->l:I

    invoke-virtual {p0, v0}, Lc/e/a/a/j/A;->d(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/A;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/e/a/a/j/A;->b:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lc/e/a/a/j/A;->s:I

    :goto_0
    return v0
.end method

.method public declared-synchronized m()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lc/e/a/a/j/A;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
