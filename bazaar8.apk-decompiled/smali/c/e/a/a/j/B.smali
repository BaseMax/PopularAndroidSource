.class public Lc/e/a/a/j/B;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lc/e/a/a/e/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/B$a;,
        Lc/e/a/a/j/B$b;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/e;

.field public final b:I

.field public final c:Lc/e/a/a/j/A;

.field public final d:Lc/e/a/a/j/A$a;

.field public final e:Lc/e/a/a/o/v;

.field public f:Lc/e/a/a/j/B$a;

.field public g:Lc/e/a/a/j/B$a;

.field public h:Lc/e/a/a/j/B$a;

.field public i:Lcom/google/android/exoplayer2/Format;

.field public j:Z

.field public k:Lcom/google/android/exoplayer2/Format;

.field public l:J

.field public m:J

.field public n:Z

.field public o:Lc/e/a/a/j/B$b;


# direct methods
.method public constructor <init>(Lc/e/a/a/n/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/B;->a:Lc/e/a/a/n/e;

    .line 3
    invoke-interface {p1}, Lc/e/a/a/n/e;->c()I

    move-result p1

    iput p1, p0, Lc/e/a/a/j/B;->b:I

    .line 4
    new-instance p1, Lc/e/a/a/j/A;

    invoke-direct {p1}, Lc/e/a/a/j/A;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    .line 5
    new-instance p1, Lc/e/a/a/j/A$a;

    invoke-direct {p1}, Lc/e/a/a/j/A$a;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/B;->d:Lc/e/a/a/j/A$a;

    .line 6
    new-instance p1, Lc/e/a/a/o/v;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    .line 7
    new-instance p1, Lc/e/a/a/j/B$a;

    iget v0, p0, Lc/e/a/a/j/B;->b:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lc/e/a/a/j/B$a;-><init>(JI)V

    iput-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    .line 8
    iget-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    iput-object p1, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    .line 9
    iput-object p1, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->m:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    add-long/2addr v0, p1

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->a()I

    move-result v0

    return v0
.end method

.method public a(JZZ)I
    .locals 1

    .line 23
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/e/a/a/j/A;->a(JZZ)I

    move-result p1

    return p1
.end method

.method public a(Lc/e/a/a/E;Lc/e/a/a/c/f;ZZJ)I
    .locals 7

    .line 24
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    iget-object v5, p0, Lc/e/a/a/j/B;->i:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lc/e/a/a/j/B;->d:Lc/e/a/a/j/A$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/A;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;ZZLcom/google/android/exoplayer2/Format;Lc/e/a/a/j/A$a;)I

    move-result p3

    const/4 p4, -0x5

    if-eq p3, p4, :cond_5

    const/4 p1, -0x4

    if-eq p3, p1, :cond_1

    const/4 p1, -0x3

    if-ne p3, p1, :cond_0

    return p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 26
    :cond_1
    invoke-virtual {p2}, Lc/e/a/a/c/a;->i()Z

    move-result p3

    if-nez p3, :cond_4

    .line 27
    iget-wide p3, p2, Lc/e/a/a/c/f;->d:J

    cmp-long v0, p3, p5

    if-gez v0, :cond_2

    const/high16 p3, -0x80000000

    .line 28
    invoke-virtual {p2, p3}, Lc/e/a/a/c/a;->b(I)V

    .line 29
    :cond_2
    invoke-virtual {p2}, Lc/e/a/a/c/f;->m()Z

    move-result p3

    if-nez p3, :cond_4

    .line 30
    invoke-virtual {p2}, Lc/e/a/a/c/f;->l()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 31
    iget-object p3, p0, Lc/e/a/a/j/B;->d:Lc/e/a/a/j/A$a;

    invoke-virtual {p0, p2, p3}, Lc/e/a/a/j/B;->a(Lc/e/a/a/c/f;Lc/e/a/a/j/A$a;)V

    .line 32
    :cond_3
    iget-object p3, p0, Lc/e/a/a/j/B;->d:Lc/e/a/a/j/A$a;

    iget p3, p3, Lc/e/a/a/j/A$a;->a:I

    invoke-virtual {p2, p3}, Lc/e/a/a/c/f;->g(I)V

    .line 33
    iget-object p3, p0, Lc/e/a/a/j/B;->d:Lc/e/a/a/j/A$a;

    iget-wide p4, p3, Lc/e/a/a/j/A$a;->b:J

    iget-object p2, p2, Lc/e/a/a/c/f;->c:Ljava/nio/ByteBuffer;

    iget p3, p3, Lc/e/a/a/j/A$a;->a:I

    invoke-virtual {p0, p4, p5, p2, p3}, Lc/e/a/a/j/B;->a(JLjava/nio/ByteBuffer;I)V

    :cond_4
    return p1

    .line 34
    :cond_5
    iget-object p1, p1, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lc/e/a/a/j/B;->i:Lcom/google/android/exoplayer2/Format;

    return p4
.end method

.method public a(Lc/e/a/a/e/h;IZ)I
    .locals 4

    .line 84
    invoke-virtual {p0, p2}, Lc/e/a/a/j/B;->c(I)I

    move-result p2

    .line 85
    iget-object v0, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    iget-object v1, v0, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    iget-object v1, v1, Lc/e/a/a/n/d;->a:[B

    iget-wide v2, p0, Lc/e/a/a/j/B;->m:J

    .line 86
    invoke-virtual {v0, v2, v3}, Lc/e/a/a/j/B$a;->a(J)I

    move-result v0

    .line 87
    invoke-interface {p1, v1, v0, p2}, Lc/e/a/a/e/h;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 88
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 89
    :cond_1
    invoke-virtual {p0, p1}, Lc/e/a/a/j/B;->b(I)V

    return p1
.end method

.method public a(I)V
    .locals 6

    .line 8
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/A;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/a/j/B;->m:J

    .line 9
    iget-wide v0, p0, Lc/e/a/a/j/B;->m:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    iget-wide v2, p1, Lc/e/a/a/j/B$a;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    :goto_0
    iget-wide v0, p0, Lc/e/a/a/j/B;->m:J

    iget-wide v2, p1, Lc/e/a/a/j/B$a;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 11
    iget-object p1, p1, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p1, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    .line 13
    invoke-virtual {p0, v0}, Lc/e/a/a/j/B;->a(Lc/e/a/a/j/B$a;)V

    .line 14
    new-instance v1, Lc/e/a/a/j/B$a;

    iget-wide v2, p1, Lc/e/a/a/j/B$a;->b:J

    iget v4, p0, Lc/e/a/a/j/B;->b:I

    invoke-direct {v1, v2, v3, v4}, Lc/e/a/a/j/B$a;-><init>(JI)V

    iput-object v1, p1, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    .line 15
    iget-wide v1, p0, Lc/e/a/a/j/B;->m:J

    iget-wide v3, p1, Lc/e/a/a/j/B$a;->b:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-object v1, p1, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    .line 16
    iget-object v1, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    if-ne v1, v0, :cond_4

    .line 17
    iget-object p1, p1, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    iput-object p1, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    goto :goto_3

    .line 18
    :cond_3
    :goto_2
    iget-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    invoke-virtual {p0, p1}, Lc/e/a/a/j/B;->a(Lc/e/a/a/j/B$a;)V

    .line 19
    new-instance p1, Lc/e/a/a/j/B$a;

    iget-wide v0, p0, Lc/e/a/a/j/B;->m:J

    iget v2, p0, Lc/e/a/a/j/B;->b:I

    invoke-direct {p1, v0, v1, v2}, Lc/e/a/a/j/B$a;-><init>(JI)V

    iput-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    .line 20
    iget-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    iput-object p1, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    .line 21
    iput-object p1, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    :cond_4
    :goto_3
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 75
    :goto_0
    iget-object v0, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    iget-wide v1, v0, Lc/e/a/a/j/B$a;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 76
    iget-object v0, v0, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    iput-object v0, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(JIIILc/e/a/a/e/q$a;)V
    .locals 11

    move-object v0, p0

    .line 95
    iget-boolean v1, v0, Lc/e/a/a/j/B;->j:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, v0, Lc/e/a/a/j/B;->k:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v1}, Lc/e/a/a/j/B;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 97
    :cond_0
    iget-wide v1, v0, Lc/e/a/a/j/B;->l:J

    add-long v4, p1, v1

    .line 98
    iget-boolean v1, v0, Lc/e/a/a/j/B;->n:Z

    if-eqz v1, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, v0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v1, v4, v5}, Lc/e/a/a/j/A;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 100
    iput-boolean v1, v0, Lc/e/a/a/j/B;->n:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 101
    :cond_3
    :goto_1
    iget-wide v1, v0, Lc/e/a/a/j/B;->m:J

    move v9, p4

    int-to-long v6, v9

    sub-long/2addr v1, v6

    move/from16 v3, p5

    int-to-long v6, v3

    sub-long/2addr v1, v6

    .line 102
    iget-object v3, v0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    move v6, p3

    move-wide v7, v1

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lc/e/a/a/j/A;->a(JIJILc/e/a/a/e/q$a;)V

    return-void
.end method

.method public final a(JLjava/nio/ByteBuffer;I)V
    .locals 4

    .line 63
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/B;->a(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 64
    iget-object v0, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    iget-wide v0, v0, Lc/e/a/a/j/B$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 65
    iget-object v1, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    iget-object v2, v1, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    .line 66
    iget-object v2, v2, Lc/e/a/a/n/d;->a:[B

    invoke-virtual {v1, p1, p2}, Lc/e/a/a/j/B$a;->a(J)I

    move-result v1

    invoke-virtual {p3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 67
    iget-object v0, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    iget-wide v1, v0, Lc/e/a/a/j/B$a;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 68
    iget-object v0, v0, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    iput-object v0, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(J[BI)V
    .locals 5

    .line 69
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/B;->a(J)V

    move-wide v0, p1

    move p1, p4

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 70
    iget-object p2, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    iget-wide v2, p2, Lc/e/a/a/j/B$a;->b:J

    sub-long/2addr v2, v0

    long-to-int p2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 71
    iget-object v2, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    iget-object v3, v2, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    .line 72
    iget-object v3, v3, Lc/e/a/a/n/d;->a:[B

    invoke-virtual {v2, v0, v1}, Lc/e/a/a/j/B$a;->a(J)I

    move-result v2

    sub-int v4, p4, p1

    invoke-static {v3, v2, p3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p1, p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 73
    iget-object p2, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    iget-wide v2, p2, Lc/e/a/a/j/B$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 74
    iget-object p2, p2, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    iput-object p2, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lc/e/a/a/c/f;Lc/e/a/a/j/A$a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 35
    iget-wide v3, v2, Lc/e/a/a/j/A$a;->b:J

    .line 36
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lc/e/a/a/o/v;->c(I)V

    .line 37
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    iget-object v5, v5, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {v0, v3, v4, v5, v6}, Lc/e/a/a/j/B;->a(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 38
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    iget-object v5, v5, Lc/e/a/a/o/v;->a:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    .line 39
    iget-object v9, v1, Lc/e/a/a/c/f;->b:Lc/e/a/a/c/c;

    iget-object v10, v9, Lc/e/a/a/c/c;->a:[B

    if-nez v10, :cond_1

    const/16 v10, 0x10

    .line 40
    new-array v10, v10, [B

    iput-object v10, v9, Lc/e/a/a/c/c;->a:[B

    .line 41
    :cond_1
    iget-object v9, v1, Lc/e/a/a/c/f;->b:Lc/e/a/a/c/c;

    iget-object v9, v9, Lc/e/a/a/c/c;->a:[B

    invoke-virtual {v0, v3, v4, v9, v5}, Lc/e/a/a/j/B;->a(J[BI)V

    int-to-long v9, v5

    add-long/2addr v3, v9

    if-eqz v8, :cond_2

    .line 42
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lc/e/a/a/o/v;->c(I)V

    .line 43
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    iget-object v5, v5, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {v0, v3, v4, v5, v6}, Lc/e/a/a/j/B;->a(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 44
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    invoke-virtual {v5}, Lc/e/a/a/o/v;->A()I

    move-result v6

    move v10, v6

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    .line 45
    :goto_1
    iget-object v5, v1, Lc/e/a/a/c/f;->b:Lc/e/a/a/c/c;

    iget-object v5, v5, Lc/e/a/a/c/c;->d:[I

    if-eqz v5, :cond_3

    .line 46
    array-length v6, v5

    if-ge v6, v10, :cond_4

    .line 47
    :cond_3
    new-array v5, v10, [I

    :cond_4
    move-object v11, v5

    .line 48
    iget-object v5, v1, Lc/e/a/a/c/f;->b:Lc/e/a/a/c/c;

    iget-object v5, v5, Lc/e/a/a/c/c;->e:[I

    if-eqz v5, :cond_5

    .line 49
    array-length v6, v5

    if-ge v6, v10, :cond_6

    .line 50
    :cond_5
    new-array v5, v10, [I

    :cond_6
    move-object v12, v5

    if-eqz v8, :cond_7

    mul-int/lit8 v5, v10, 0x6

    .line 51
    iget-object v6, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    invoke-virtual {v6, v5}, Lc/e/a/a/o/v;->c(I)V

    .line 52
    iget-object v6, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    iget-object v6, v6, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {v0, v3, v4, v6, v5}, Lc/e/a/a/j/B;->a(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 53
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    invoke-virtual {v5, v7}, Lc/e/a/a/o/v;->e(I)V

    :goto_2
    if-ge v7, v10, :cond_8

    .line 54
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    invoke-virtual {v5}, Lc/e/a/a/o/v;->A()I

    move-result v5

    aput v5, v11, v7

    .line 55
    iget-object v5, v0, Lc/e/a/a/j/B;->e:Lc/e/a/a/o/v;

    invoke-virtual {v5}, Lc/e/a/a/o/v;->y()I

    move-result v5

    aput v5, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 56
    :cond_7
    aput v7, v11, v7

    .line 57
    iget v5, v2, Lc/e/a/a/j/A$a;->a:I

    iget-wide v8, v2, Lc/e/a/a/j/A$a;->b:J

    sub-long v8, v3, v8

    long-to-int v6, v8

    sub-int/2addr v5, v6

    aput v5, v12, v7

    .line 58
    :cond_8
    iget-object v5, v2, Lc/e/a/a/j/A$a;->c:Lc/e/a/a/e/q$a;

    .line 59
    iget-object v9, v1, Lc/e/a/a/c/f;->b:Lc/e/a/a/c/c;

    iget-object v13, v5, Lc/e/a/a/e/q$a;->b:[B

    iget-object v14, v9, Lc/e/a/a/c/c;->a:[B

    iget v15, v5, Lc/e/a/a/e/q$a;->a:I

    iget v1, v5, Lc/e/a/a/e/q$a;->c:I

    iget v5, v5, Lc/e/a/a/e/q$a;->d:I

    move/from16 v16, v1

    move/from16 v17, v5

    invoke-virtual/range {v9 .. v17}, Lc/e/a/a/c/c;->a(I[I[I[B[BIII)V

    .line 60
    iget-wide v5, v2, Lc/e/a/a/j/A$a;->b:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    int-to-long v3, v1

    add-long/2addr v5, v3

    .line 61
    iput-wide v5, v2, Lc/e/a/a/j/A$a;->b:J

    .line 62
    iget v3, v2, Lc/e/a/a/j/A$a;->a:I

    sub-int/2addr v3, v1

    iput v3, v2, Lc/e/a/a/j/A$a;->a:I

    return-void
.end method

.method public final a(Lc/e/a/a/j/B$a;)V
    .locals 6

    .line 103
    iget-boolean v0, p1, Lc/e/a/a/j/B$a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    iget-boolean v1, v0, Lc/e/a/a/j/B$a;->c:Z

    iget-wide v2, v0, Lc/e/a/a/j/B$a;->a:J

    iget-wide v4, p1, Lc/e/a/a/j/B$a;->a:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lc/e/a/a/j/B;->b:I

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 105
    new-array v0, v1, [Lc/e/a/a/n/d;

    const/4 v1, 0x0

    .line 106
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 107
    iget-object v2, p1, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    aput-object v2, v0, v1

    .line 108
    invoke-virtual {p1}, Lc/e/a/a/j/B$a;->a()Lc/e/a/a/j/B$a;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lc/e/a/a/j/B;->a:Lc/e/a/a/n/e;

    invoke-interface {p1, v0}, Lc/e/a/a/n/e;->a([Lc/e/a/a/n/d;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/B$b;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lc/e/a/a/j/B;->o:Lc/e/a/a/j/B$b;

    return-void
.end method

.method public a(Lc/e/a/a/o/v;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 90
    invoke-virtual {p0, p2}, Lc/e/a/a/j/B;->c(I)I

    move-result v0

    .line 91
    iget-object v1, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    iget-object v2, v1, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    iget-object v2, v2, Lc/e/a/a/n/d;->a:[B

    iget-wide v3, p0, Lc/e/a/a/j/B;->m:J

    .line 92
    invoke-virtual {v1, v3, v4}, Lc/e/a/a/j/B$a;->a(J)I

    move-result v1

    .line 93
    invoke-virtual {p1, v2, v1, v0}, Lc/e/a/a/o/v;->a([BII)V

    sub-int/2addr p2, v0

    .line 94
    invoke-virtual {p0, v0}, Lc/e/a/a/j/B;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 78
    iget-wide v0, p0, Lc/e/a/a/j/B;->l:J

    invoke-static {p1, v0, v1}, Lc/e/a/a/j/B;->a(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v1, v0}, Lc/e/a/a/j/A;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    .line 80
    iput-object p1, p0, Lc/e/a/a/j/B;->k:Lcom/google/android/exoplayer2/Format;

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lc/e/a/a/j/B;->j:Z

    .line 82
    iget-object p1, p0, Lc/e/a/a/j/B;->o:Lc/e/a/a/j/B$b;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {p1, v0}, Lc/e/a/a/j/B$b;->a(Lcom/google/android/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/A;->a(Z)V

    .line 2
    iget-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    invoke-virtual {p0, p1}, Lc/e/a/a/j/B;->a(Lc/e/a/a/j/B$a;)V

    .line 3
    new-instance p1, Lc/e/a/a/j/B$a;

    iget v0, p0, Lc/e/a/a/j/B;->b:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lc/e/a/a/j/B$a;-><init>(JI)V

    iput-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    .line 4
    iget-object p1, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    iput-object p1, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    .line 5
    iput-object p1, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    .line 6
    iput-wide v1, p0, Lc/e/a/a/j/B;->m:J

    .line 7
    iget-object p1, p0, Lc/e/a/a/j/B;->a:Lc/e/a/a/n/e;

    invoke-interface {p1}, Lc/e/a/a/n/e;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/j/B;->b(J)V

    return-void
.end method

.method public final b(I)V
    .locals 5

    .line 8
    iget-wide v0, p0, Lc/e/a/a/j/B;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/e/a/a/j/B;->m:J

    .line 9
    iget-wide v0, p0, Lc/e/a/a/j/B;->m:J

    iget-object p1, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    iget-wide v2, p1, Lc/e/a/a/j/B$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 10
    iget-object p1, p1, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    iput-object p1, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    iget-wide v1, v0, Lc/e/a/a/j/B$a;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 4
    iget-object v1, p0, Lc/e/a/a/j/B;->a:Lc/e/a/a/n/e;

    iget-object v0, v0, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    invoke-interface {v1, v0}, Lc/e/a/a/n/e;->a(Lc/e/a/a/n/d;)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    invoke-virtual {v0}, Lc/e/a/a/j/B$a;->a()Lc/e/a/a/j/B$a;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    iget-wide p1, p1, Lc/e/a/a/j/B$a;->a:J

    iget-wide v1, v0, Lc/e/a/a/j/B$a;->a:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    .line 7
    iput-object v0, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    :cond_2
    return-void
.end method

.method public b(JZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/e/a/a/j/A;->b(JZZ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/B;->b(J)V

    return-void
.end method

.method public final c(I)I
    .locals 6

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    iget-boolean v1, v0, Lc/e/a/a/j/B$a;->c:Z

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lc/e/a/a/j/B;->a:Lc/e/a/a/n/e;

    invoke-interface {v1}, Lc/e/a/a/n/e;->a()Lc/e/a/a/n/d;

    move-result-object v1

    new-instance v2, Lc/e/a/a/j/B$a;

    iget-object v3, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    iget-wide v3, v3, Lc/e/a/a/j/B$a;->b:J

    iget v5, p0, Lc/e/a/a/j/B;->b:I

    invoke-direct {v2, v3, v4, v5}, Lc/e/a/a/j/B$a;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/j/B$a;->a(Lc/e/a/a/n/d;Lc/e/a/a/j/B$a;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/B;->h:Lc/e/a/a/j/B$a;

    iget-wide v0, v0, Lc/e/a/a/j/B$a;->b:J

    iget-wide v2, p0, Lc/e/a/a/j/B;->m:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/j/B;->b(J)V

    return-void
.end method

.method public c(J)V
    .locals 3

    .line 2
    iget-wide v0, p0, Lc/e/a/a/j/B;->l:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 3
    iput-wide p1, p0, Lc/e/a/a/j/B;->l:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lc/e/a/a/j/B;->j:Z

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->d()I

    move-result v0

    return v0
.end method

.method public d(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/A;->e(I)Z

    move-result p1

    return p1
.end method

.method public e()J
    .locals 2

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/A;->f(I)V

    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->g()I

    move-result v0

    return v0
.end method

.method public h()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->i()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->j()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->k()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->l()I

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc/e/a/a/j/B;->a(Z)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/B;->c:Lc/e/a/a/j/A;

    invoke-virtual {v0}, Lc/e/a/a/j/A;->m()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/B;->f:Lc/e/a/a/j/B$a;

    iput-object v0, p0, Lc/e/a/a/j/B;->g:Lc/e/a/a/j/B$a;

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/B;->n:Z

    return-void
.end method
