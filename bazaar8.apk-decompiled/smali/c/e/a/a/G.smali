.class public final Lc/e/a/a/G;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# instance fields
.field public final a:Lc/e/a/a/j/u;

.field public final b:Ljava/lang/Object;

.field public final c:[Lc/e/a/a/j/C;

.field public d:Z

.field public e:Z

.field public f:Lc/e/a/a/H;

.field public final g:[Z

.field public final h:[Lc/e/a/a/S;

.field public final i:Lc/e/a/a/l/r;

.field public final j:Lc/e/a/a/j/v;

.field public k:Lc/e/a/a/G;

.field public l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public m:Lc/e/a/a/l/s;

.field public n:J


# direct methods
.method public constructor <init>([Lc/e/a/a/S;JLc/e/a/a/l/r;Lc/e/a/a/n/e;Lc/e/a/a/j/v;Lc/e/a/a/H;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/G;->h:[Lc/e/a/a/S;

    .line 3
    iget-wide v3, p7, Lc/e/a/a/H;->b:J

    sub-long/2addr p2, v3

    iput-wide p2, p0, Lc/e/a/a/G;->n:J

    .line 4
    iput-object p4, p0, Lc/e/a/a/G;->i:Lc/e/a/a/l/r;

    .line 5
    iput-object p6, p0, Lc/e/a/a/G;->j:Lc/e/a/a/j/v;

    .line 6
    iget-object v0, p7, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-object p2, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lc/e/a/a/G;->b:Ljava/lang/Object;

    .line 7
    iput-object p7, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    .line 8
    array-length p2, p1

    new-array p2, p2, [Lc/e/a/a/j/C;

    iput-object p2, p0, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    .line 9
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lc/e/a/a/G;->g:[Z

    .line 10
    iget-wide v5, p7, Lc/e/a/a/H;->d:J

    move-object v1, p6

    move-object v2, p5

    .line 11
    invoke-static/range {v0 .. v6}, Lc/e/a/a/G;->a(Lc/e/a/a/j/v$a;Lc/e/a/a/j/v;Lc/e/a/a/n/e;JJ)Lc/e/a/a/j/u;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    return-void
.end method

.method public static a(Lc/e/a/a/j/v$a;Lc/e/a/a/j/v;Lc/e/a/a/n/e;JJ)Lc/e/a/a/j/u;
    .locals 7

    .line 46
    invoke-interface {p1, p0, p2, p3, p4}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/v$a;Lc/e/a/a/n/e;J)Lc/e/a/a/j/u;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p5, p0

    if-eqz p2, :cond_0

    const-wide/high16 p0, -0x8000000000000000L

    cmp-long p2, p5, p0

    if-eqz p2, :cond_0

    .line 47
    new-instance p0, Lc/e/a/a/j/n;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lc/e/a/a/j/n;-><init>(Lc/e/a/a/j/u;ZJJ)V

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static a(JLc/e/a/a/j/v;Lc/e/a/a/j/u;)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    check-cast p3, Lc/e/a/a/j/n;

    iget-object p0, p3, Lc/e/a/a/j/n;->a:Lc/e/a/a/j/u;

    invoke-interface {p2, p0}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/u;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p2, p3}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/u;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaPeriodHolder"

    const-string p2, "Period release failed."

    .line 50
    invoke-static {p1, p2, p0}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/l/s;JZ)J
    .locals 7

    .line 11
    iget-object v0, p0, Lc/e/a/a/G;->h:[Lc/e/a/a/S;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/G;->a(Lc/e/a/a/l/s;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lc/e/a/a/l/s;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 12
    :goto_0
    iget v4, v1, Lc/e/a/a/l/s;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 13
    iget-object v4, v0, Lc/e/a/a/G;->g:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lc/e/a/a/G;->m:Lc/e/a/a/l/s;

    .line 14
    invoke-virtual {p1, v6, v3}, Lc/e/a/a/l/s;->a(Lc/e/a/a/l/s;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v3, v0, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    invoke-virtual {p0, v3}, Lc/e/a/a/G;->b([Lc/e/a/a/j/C;)V

    .line 16
    invoke-virtual {p0}, Lc/e/a/a/G;->a()V

    .line 17
    iput-object v1, v0, Lc/e/a/a/G;->m:Lc/e/a/a/l/s;

    .line 18
    invoke-virtual {p0}, Lc/e/a/a/G;->b()V

    .line 19
    iget-object v3, v1, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    .line 20
    iget-object v6, v0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    .line 21
    invoke-virtual {v3}, Lc/e/a/a/l/o;->a()[Lc/e/a/a/l/n;

    move-result-object v7

    iget-object v8, v0, Lc/e/a/a/G;->g:[Z

    iget-object v9, v0, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    move-object/from16 v10, p5

    move-wide v11, p2

    .line 22
    invoke-interface/range {v6 .. v12}, Lc/e/a/a/j/u;->a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJ)J

    move-result-wide v6

    .line 23
    iget-object v4, v0, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    invoke-virtual {p0, v4}, Lc/e/a/a/G;->a([Lc/e/a/a/j/C;)V

    .line 24
    iput-boolean v2, v0, Lc/e/a/a/G;->e:Z

    const/4 v4, 0x0

    .line 25
    :goto_2
    iget-object v8, v0, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    array-length v9, v8

    if-ge v4, v9, :cond_5

    .line 26
    aget-object v8, v8, v4

    if-eqz v8, :cond_2

    .line 27
    invoke-virtual {p1, v4}, Lc/e/a/a/l/s;->a(I)Z

    move-result v8

    invoke-static {v8}, Lc/e/a/a/o/e;->b(Z)V

    .line 28
    iget-object v8, v0, Lc/e/a/a/G;->h:[Lc/e/a/a/S;

    aget-object v8, v8, v4

    invoke-interface {v8}, Lc/e/a/a/S;->f()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_4

    .line 29
    iput-boolean v5, v0, Lc/e/a/a/G;->e:Z

    goto :goto_4

    .line 30
    :cond_2
    invoke-virtual {v3, v4}, Lc/e/a/a/l/o;->a(I)Lc/e/a/a/l/n;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Lc/e/a/a/o/e;->b(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-wide v6
.end method

.method public final a()V
    .locals 4

    .line 35
    iget-object v0, p0, Lc/e/a/a/G;->m:Lc/e/a/a/l/s;

    .line 36
    invoke-virtual {p0}, Lc/e/a/a/G;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    iget v2, v0, Lc/e/a/a/l/s;->a:I

    if-ge v1, v2, :cond_2

    .line 38
    invoke-virtual {v0, v1}, Lc/e/a/a/l/s;->a(I)Z

    move-result v2

    .line 39
    iget-object v3, v0, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-virtual {v3, v1}, Lc/e/a/a/l/o;->a(I)Lc/e/a/a/l/n;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 40
    invoke-interface {v3}, Lc/e/a/a/l/n;->e()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(FLc/e/a/a/Z;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/G;->d:Z

    .line 2
    iget-object v0, p0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    invoke-interface {v0}, Lc/e/a/a/j/u;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/G;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/G;->b(FLc/e/a/a/Z;)Lc/e/a/a/l/s;

    move-result-object p1

    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/l/s;

    .line 4
    iget-object p2, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v0, p2, Lc/e/a/a/H;->b:J

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1, p2}, Lc/e/a/a/G;->a(Lc/e/a/a/l/s;JZ)J

    move-result-wide p1

    .line 6
    iget-wide v0, p0, Lc/e/a/a/G;->n:J

    iget-object v2, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v3, v2, Lc/e/a/a/H;->b:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lc/e/a/a/G;->n:J

    .line 7
    invoke-virtual {v2, p1, p2}, Lc/e/a/a/H;->b(J)Lc/e/a/a/H;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/G;->k()Z

    move-result v0

    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/G;->c(J)J

    move-result-wide p1

    .line 10
    iget-object v0, p0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/u;->b(J)Z

    return-void
.end method

.method public a(Lc/e/a/a/G;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lc/e/a/a/G;->k:Lc/e/a/a/G;

    if-ne p1, v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/G;->a()V

    .line 33
    iput-object p1, p0, Lc/e/a/a/G;->k:Lc/e/a/a/G;

    .line 34
    invoke-virtual {p0}, Lc/e/a/a/G;->b()V

    return-void
.end method

.method public final a([Lc/e/a/a/j/C;)V
    .locals 4

    .line 41
    iget-object v0, p0, Lc/e/a/a/G;->m:Lc/e/a/a/l/s;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/l/s;

    const/4 v1, 0x0

    .line 42
    :goto_0
    iget-object v2, p0, Lc/e/a/a/G;->h:[Lc/e/a/a/S;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 43
    aget-object v2, v2, v1

    invoke-interface {v2}, Lc/e/a/a/S;->f()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 44
    invoke-virtual {v0, v1}, Lc/e/a/a/l/s;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-instance v2, Lc/e/a/a/j/s;

    invoke-direct {v2}, Lc/e/a/a/j/s;-><init>()V

    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(FLc/e/a/a/Z;)Lc/e/a/a/l/s;
    .locals 4

    .line 4
    iget-object v0, p0, Lc/e/a/a/G;->i:Lc/e/a/a/l/r;

    iget-object v1, p0, Lc/e/a/a/G;->h:[Lc/e/a/a/S;

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/G;->h()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v3, v3, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    invoke-virtual {v0, v1, v2, v3, p2}, Lc/e/a/a/l/r;->a([Lc/e/a/a/S;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/j/v$a;Lc/e/a/a/Z;)Lc/e/a/a/l/s;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lc/e/a/a/G;->m:Lc/e/a/a/l/s;

    invoke-virtual {p2, v0}, Lc/e/a/a/l/s;->a(Lc/e/a/a/l/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    iget-object v0, p2, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-virtual {v0}, Lc/e/a/a/l/o;->a()[Lc/e/a/a/l/n;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v3, p1}, Lc/e/a/a/l/n;->a(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final b()V
    .locals 4

    .line 9
    iget-object v0, p0, Lc/e/a/a/G;->m:Lc/e/a/a/l/s;

    .line 10
    invoke-virtual {p0}, Lc/e/a/a/G;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget v2, v0, Lc/e/a/a/l/s;->a:I

    if-ge v1, v2, :cond_2

    .line 12
    invoke-virtual {v0, v1}, Lc/e/a/a/l/s;->a(I)Z

    move-result v2

    .line 13
    iget-object v3, v0, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-virtual {v3, v1}, Lc/e/a/a/l/o;->a(I)Lc/e/a/a/l/n;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 14
    invoke-interface {v3}, Lc/e/a/a/l/n;->c()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/G;->k()Z

    move-result v0

    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/G;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    invoke-virtual {p0, p1, p2}, Lc/e/a/a/G;->c(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/u;->c(J)V

    :cond_0
    return-void
.end method

.method public final b([Lc/e/a/a/j/C;)V
    .locals 3

    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lc/e/a/a/G;->h:[Lc/e/a/a/S;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 16
    aget-object v1, v1, v0

    invoke-interface {v1}, Lc/e/a/a/S;->f()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 17
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()J
    .locals 5

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/G;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v0, v0, Lc/e/a/a/H;->b:J

    return-wide v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/G;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    .line 5
    invoke-interface {v0}, Lc/e/a/a/j/u;->g()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v3, v0, Lc/e/a/a/H;->e:J

    :cond_2
    return-wide v3
.end method

.method public c(J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/G;->f()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public d(J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/G;->f()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public d()Lc/e/a/a/G;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/G;->k:Lc/e/a/a/G;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/G;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    invoke-interface {v0}, Lc/e/a/a/j/u;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/G;->n:J

    return-wide v0
.end method

.method public g()J
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v0, v0, Lc/e/a/a/H;->b:J

    iget-wide v2, p0, Lc/e/a/a/G;->n:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public h()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/G;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public i()Lc/e/a/a/l/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/G;->m:Lc/e/a/a/l/s;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/l/s;

    return-object v0
.end method

.method public j()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/G;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/e/a/a/G;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    .line 2
    invoke-interface {v0}, Lc/e/a/a/j/u;->g()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/G;->k:Lc/e/a/a/G;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/G;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/a/G;->m:Lc/e/a/a/l/s;

    .line 3
    iget-object v0, p0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v0, v0, Lc/e/a/a/H;->d:J

    iget-object v2, p0, Lc/e/a/a/G;->j:Lc/e/a/a/j/v;

    iget-object v3, p0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    invoke-static {v0, v1, v2, v3}, Lc/e/a/a/G;->a(JLc/e/a/a/j/v;Lc/e/a/a/j/u;)V

    return-void
.end method
