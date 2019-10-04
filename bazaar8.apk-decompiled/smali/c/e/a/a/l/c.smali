.class public Lc/e/a/a/l/c;
.super Lc/e/a/a/l/e;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/l/c$b;,
        Lc/e/a/a/l/c$a;,
        Lc/e/a/a/l/c$c;
    }
.end annotation


# instance fields
.field public final g:Lc/e/a/a/l/c$a;

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:F

.field public final l:J

.field public final m:Lc/e/a/a/o/f;

.field public final n:[Lcom/google/android/exoplayer2/Format;

.field public final o:[I

.field public final p:[I

.field public q:Lc/e/a/a/l/l;

.field public r:F

.field public s:I

.field public t:I

.field public u:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILc/e/a/a/l/c$a;JJJFJLc/e/a/a/o/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lc/e/a/a/l/e;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 3
    iput-object p3, p0, Lc/e/a/a/l/c;->g:Lc/e/a/a/l/c$a;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 4
    iput-wide p4, p0, Lc/e/a/a/l/c;->h:J

    mul-long p6, p6, p1

    .line 5
    iput-wide p6, p0, Lc/e/a/a/l/c;->i:J

    mul-long p8, p8, p1

    .line 6
    iput-wide p8, p0, Lc/e/a/a/l/c;->j:J

    .line 7
    iput p10, p0, Lc/e/a/a/l/c;->k:F

    .line 8
    iput-wide p11, p0, Lc/e/a/a/l/c;->l:J

    .line 9
    iput-object p13, p0, Lc/e/a/a/l/c;->m:Lc/e/a/a/o/f;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lc/e/a/a/l/c;->r:F

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lc/e/a/a/l/c;->t:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide p2, p0, Lc/e/a/a/l/c;->u:J

    .line 13
    sget-object p2, Lc/e/a/a/l/l;->a:Lc/e/a/a/l/l;

    iput-object p2, p0, Lc/e/a/a/l/c;->q:Lc/e/a/a/l/l;

    .line 14
    iget p2, p0, Lc/e/a/a/l/e;->b:I

    new-array p3, p2, [Lcom/google/android/exoplayer2/Format;

    iput-object p3, p0, Lc/e/a/a/l/c;->n:[Lcom/google/android/exoplayer2/Format;

    .line 15
    new-array p3, p2, [I

    iput-object p3, p0, Lc/e/a/a/l/c;->o:[I

    .line 16
    new-array p2, p2, [I

    iput-object p2, p0, Lc/e/a/a/l/c;->p:[I

    .line 17
    :goto_0
    iget p2, p0, Lc/e/a/a/l/e;->b:I

    if-ge p1, p2, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lc/e/a/a/l/e;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 19
    iget-object p3, p0, Lc/e/a/a/l/c;->n:[Lcom/google/android/exoplayer2/Format;

    aput-object p2, p3, p1

    .line 20
    iget-object p2, p0, Lc/e/a/a/l/c;->o:[I

    aget-object p3, p3, p1

    iget p3, p3, Lcom/google/android/exoplayer2/Format;->e:I

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILc/e/a/a/l/c$a;JJJFJLc/e/a/a/o/f;Lc/e/a/a/l/b;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lc/e/a/a/l/c;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILc/e/a/a/l/c$a;JJJFJLc/e/a/a/o/f;)V

    return-void
.end method

.method public static a([[D)I
    .locals 4

    .line 48
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 49
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static a([[[JI[[J[I)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 50
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 51
    aget-object v4, p0, v1

    aget-object v4, v4, p1

    aget-object v5, p2, v1

    aget v6, p3, v1

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 52
    aget-object v4, p0, v1

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    array-length p2, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    aget-object v1, p0, p3

    .line 54
    aget-object v1, v1, p1

    aput-wide v2, v1, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic a([[J)[[[J
    .locals 0

    .line 1
    invoke-static {p0}, Lc/e/a/a/l/c;->c([[J)[[[J

    move-result-object p0

    return-object p0
.end method

.method public static b([[D)[[D
    .locals 14

    .line 6
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 8
    aget-object v3, p0, v2

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [D

    aput-object v3, v0, v2

    .line 9
    aget-object v3, v0, v2

    array-length v3, v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    aget-object v3, p0, v2

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v3, v4

    aget-object v3, p0, v2

    aget-wide v6, v3, v1

    sub-double/2addr v4, v6

    const/4 v3, 0x0

    .line 11
    :goto_1
    aget-object v6, p0, v2

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 12
    aget-object v8, p0, v2

    aget-wide v9, v8, v3

    aget-object v8, p0, v2

    add-int/lit8 v11, v3, 0x1

    aget-wide v12, v8, v11

    add-double/2addr v9, v12

    mul-double v9, v9, v6

    .line 13
    aget-object v6, v0, v2

    aget-object v7, p0, v2

    aget-wide v12, v7, v1

    sub-double/2addr v9, v12

    div-double/2addr v9, v4

    aput-wide v9, v6, v3

    move v3, v11

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c([[J)[[[J
    .locals 15

    .line 3
    invoke-static {p0}, Lc/e/a/a/l/c;->d([[J)[[D

    move-result-object v0

    .line 4
    invoke-static {v0}, Lc/e/a/a/l/c;->b([[D)[[D

    move-result-object v1

    .line 5
    invoke-static {v1}, Lc/e/a/a/l/c;->a([[D)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    .line 6
    array-length v3, v0

    const/4 v4, 0x2

    filled-new-array {v3, v2, v4}, [I

    move-result-object v3

    const-class v5, J

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[J

    .line 7
    array-length v5, v0

    new-array v5, v5, [I

    const/4 v6, 0x1

    .line 8
    invoke-static {v3, v6, p0, v5}, Lc/e/a/a/l/c;->a([[[JI[[J[I)V

    const/4 v7, 0x2

    :goto_0
    add-int/lit8 v8, v2, -0x1

    const/4 v9, 0x0

    if-ge v7, v8, :cond_3

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v8, 0x0

    .line 9
    :goto_1
    array-length v12, v0

    if-ge v9, v12, :cond_2

    .line 10
    aget v12, v5, v9

    add-int/2addr v12, v6

    aget-object v13, v0, v9

    array-length v13, v13

    if-ne v12, v13, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    aget-object v12, v1, v9

    aget v13, v5, v9

    aget-wide v13, v12, v13

    cmpg-double v12, v13, v10

    if-gez v12, :cond_1

    move v8, v9

    move-wide v10, v13

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 12
    :cond_2
    aget v9, v5, v8

    add-int/2addr v9, v6

    aput v9, v5, v8

    .line 13
    invoke-static {v3, v7, p0, v5}, Lc/e/a/a/l/c;->a([[[JI[[J[I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 14
    :cond_3
    array-length p0, v3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p0, :cond_4

    aget-object v1, v3, v0

    .line 15
    aget-object v5, v1, v8

    add-int/lit8 v7, v2, -0x2

    aget-object v10, v1, v7

    aget-wide v11, v10, v9

    const-wide/16 v13, 0x2

    mul-long v11, v11, v13

    aput-wide v11, v5, v9

    .line 16
    aget-object v5, v1, v8

    aget-object v1, v1, v7

    aget-wide v10, v1, v6

    mul-long v10, v10, v13

    aput-wide v10, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-object v3
.end method

.method public static d([[J)[[D
    .locals 8

    .line 1
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [D

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 4
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 5
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-wide v6, v5, v3

    long-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lc/e/a/a/j/b/l;",
            ">;)I"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lc/e/a/a/l/c;->m:Lc/e/a/a/o/f;

    invoke-interface {v0}, Lc/e/a/a/o/f;->a()J

    move-result-wide v0

    .line 25
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/l/c;->c(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 27
    :cond_0
    iput-wide v0, p0, Lc/e/a/a/l/c;->u:J

    .line 28
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 29
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 30
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/a/j/b/l;

    .line 31
    iget-wide v4, v4, Lc/e/a/a/j/b/d;->f:J

    sub-long/2addr v4, p1

    iget v6, p0, Lc/e/a/a/l/c;->r:F

    .line 32
    invoke-static {v4, v5, v6}, Lc/e/a/a/o/I;->b(JF)J

    move-result-wide v4

    .line 33
    invoke-virtual {p0}, Lc/e/a/a/l/c;->j()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    return v2

    .line 34
    :cond_2
    iget-object v4, p0, Lc/e/a/a/l/c;->o:[I

    invoke-virtual {p0, v0, v1, v4}, Lc/e/a/a/l/c;->a(J[I)I

    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Lc/e/a/a/l/e;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 36
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/b/l;

    .line 37
    iget-object v4, v1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    .line 38
    iget-wide v8, v1, Lc/e/a/a/j/b/d;->f:J

    sub-long/2addr v8, p1

    .line 39
    iget v1, p0, Lc/e/a/a/l/c;->r:F

    .line 40
    invoke-static {v8, v9, v1}, Lc/e/a/a/o/I;->b(JF)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_3

    .line 41
    iget v1, v4, Lcom/google/android/exoplayer2/Format;->e:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->e:I

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->o:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    const/16 v8, 0x2d0

    if-ge v1, v8, :cond_3

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->n:I

    if-eq v4, v5, :cond_3

    const/16 v5, 0x500

    if-ge v4, v5, :cond_3

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->o:I

    if-ge v1, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final a(J[I)I
    .locals 9

    .line 43
    iget-object v0, p0, Lc/e/a/a/l/c;->g:Lc/e/a/a/l/c$a;

    invoke-interface {v0}, Lc/e/a/a/l/c$a;->a()J

    move-result-wide v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    :goto_0
    iget v2, p0, Lc/e/a/a/l/e;->b:I

    if-ge v0, v2, :cond_3

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {p0, v0, p1, p2}, Lc/e/a/a/l/e;->b(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Lc/e/a/a/l/e;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 47
    aget v3, p3, v0

    iget v4, p0, Lc/e/a/a/l/c;->r:F

    move-object v1, p0

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/l/c;->a(Lcom/google/android/exoplayer2/Format;IFJ)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public a(F)V
    .locals 0

    .line 5
    iput p1, p0, Lc/e/a/a/l/c;->r:F

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/l/c;->g:Lc/e/a/a/l/c$a;

    check-cast v0, Lc/e/a/a/l/c$b;

    .line 4
    invoke-virtual {v0, p1, p2}, Lc/e/a/a/l/c$b;->a(J)V

    return-void
.end method

.method public a(JJJLjava/util/List;[Lc/e/a/a/j/b/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lc/e/a/a/j/b/l;",
            ">;[",
            "Lc/e/a/a/j/b/n;",
            ")V"
        }
    .end annotation

    .line 6
    iget-object p1, p0, Lc/e/a/a/l/c;->m:Lc/e/a/a/o/f;

    invoke-interface {p1}, Lc/e/a/a/o/f;->a()J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lc/e/a/a/l/c;->q:Lc/e/a/a/l/l;

    iget-object v1, p0, Lc/e/a/a/l/c;->n:[Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lc/e/a/a/l/c;->p:[I

    invoke-interface {v0, v1, p7, p8, v2}, Lc/e/a/a/l/l;->a([Lcom/google/android/exoplayer2/Format;Ljava/util/List;[Lc/e/a/a/j/b/n;[I)[I

    .line 8
    iget p7, p0, Lc/e/a/a/l/c;->t:I

    if-nez p7, :cond_0

    const/4 p3, 0x1

    .line 9
    iput p3, p0, Lc/e/a/a/l/c;->t:I

    .line 10
    iget-object p3, p0, Lc/e/a/a/l/c;->p:[I

    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/l/c;->a(J[I)I

    move-result p1

    iput p1, p0, Lc/e/a/a/l/c;->s:I

    return-void

    .line 11
    :cond_0
    iget p7, p0, Lc/e/a/a/l/c;->s:I

    .line 12
    iget-object p8, p0, Lc/e/a/a/l/c;->p:[I

    invoke-virtual {p0, p1, p2, p8}, Lc/e/a/a/l/c;->a(J[I)I

    move-result p8

    iput p8, p0, Lc/e/a/a/l/c;->s:I

    .line 13
    iget p8, p0, Lc/e/a/a/l/c;->s:I

    if-ne p8, p7, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-virtual {p0, p7, p1, p2}, Lc/e/a/a/l/e;->b(IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    invoke-virtual {p0, p7}, Lc/e/a/a/l/e;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 16
    iget p2, p0, Lc/e/a/a/l/c;->s:I

    invoke-virtual {p0, p2}, Lc/e/a/a/l/e;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 17
    iget p8, p2, Lcom/google/android/exoplayer2/Format;->e:I

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->e:I

    if-le p8, v0, :cond_2

    .line 18
    invoke-virtual {p0, p5, p6}, Lc/e/a/a/l/c;->b(J)J

    move-result-wide p5

    cmp-long p8, p3, p5

    if-gez p8, :cond_2

    .line 19
    iput p7, p0, Lc/e/a/a/l/c;->s:I

    goto :goto_0

    .line 20
    :cond_2
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->e:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->e:I

    if-ge p2, p1, :cond_3

    iget-wide p1, p0, Lc/e/a/a/l/c;->i:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_3

    .line 21
    iput p7, p0, Lc/e/a/a/l/c;->s:I

    .line 22
    :cond_3
    :goto_0
    iget p1, p0, Lc/e/a/a/l/c;->s:I

    if-eq p1, p7, :cond_4

    const/4 p1, 0x3

    .line 23
    iput p1, p0, Lc/e/a/a/l/c;->t:I

    :cond_4
    return-void
.end method

.method public a(Lc/e/a/a/l/l;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/l/c;->q:Lc/e/a/a/l/l;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;IFJ)Z
    .locals 0

    int-to-float p1, p2

    mul-float p1, p1, p3

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    cmp-long p3, p1, p4

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    .line 3
    iget v0, p0, Lc/e/a/a/l/c;->s:I

    return v0
.end method

.method public final b(J)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 4
    iget-wide v0, p0, Lc/e/a/a/l/c;->h:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-float p1, p1

    .line 5
    iget p2, p0, Lc/e/a/a/l/c;->k:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_1

    :cond_1
    iget-wide p1, p0, Lc/e/a/a/l/c;->h:J

    :goto_1
    return-wide p1
.end method

.method public b([[J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/c;->g:Lc/e/a/a/l/c$a;

    check-cast v0, Lc/e/a/a/l/c$b;

    .line 2
    invoke-virtual {v0, p1}, Lc/e/a/a/l/c$b;->a([[J)V

    return-void
.end method

.method public c()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lc/e/a/a/l/c;->u:J

    return-void
.end method

.method public c(J)Z
    .locals 5

    .line 2
    iget-wide v0, p0, Lc/e/a/a/l/c;->u:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lc/e/a/a/l/c;->l:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/l/c;->t:I

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/l/c;->j:J

    return-wide v0
.end method
