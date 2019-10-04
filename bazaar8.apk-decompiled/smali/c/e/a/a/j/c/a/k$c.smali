.class public Lc/e/a/a/j/c/a/k$c;
.super Lc/e/a/a/j/c/a/k$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final g:Lc/e/a/a/j/c/a/m;

.field public final h:Lc/e/a/a/j/c/a/m;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;Lc/e/a/a/j/c/a/m;Lc/e/a/a/j/c/a/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/c/a/h;",
            "JJJJ",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/k$d;",
            ">;",
            "Lc/e/a/a/j/c/a/m;",
            "Lc/e/a/a/j/c/a/m;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p10}, Lc/e/a/a/j/c/a/k$a;-><init>(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;)V

    .line 2
    iput-object p11, p0, Lc/e/a/a/j/c/a/k$c;->g:Lc/e/a/a/j/c/a/m;

    .line 3
    iput-object p12, p0, Lc/e/a/a/j/c/a/k$c;->h:Lc/e/a/a/j/c/a/m;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 4

    .line 10
    iget-object v0, p0, Lc/e/a/a/j/c/a/k$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 12
    iget-wide v0, p0, Lc/e/a/a/j/c/a/k$a;->e:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-wide v2, p0, Lc/e/a/a/j/c/a/k;->b:J

    div-long/2addr v0, v2

    .line 13
    invoke-static {p1, p2, v0, v1}, Lc/e/a/a/o/I;->a(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Lc/e/a/a/j/c/a/j;)Lc/e/a/a/j/c/a/h;
    .locals 13

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/a/k$c;->g:Lc/e/a/a/j/c/a/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lc/e/a/a/j/c/a/j;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->e:I

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/c/a/m;->a(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v8

    .line 3
    new-instance p1, Lc/e/a/a/j/c/a/h;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lc/e/a/a/j/c/a/h;-><init>(Ljava/lang/String;JJ)V

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lc/e/a/a/j/c/a/k;->a(Lc/e/a/a/j/c/a/j;)Lc/e/a/a/j/c/a/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/a/a/j/c/a/j;J)Lc/e/a/a/j/c/a/h;
    .locals 14

    move-object v0, p0

    .line 5
    iget-object v1, v0, Lc/e/a/a/j/c/a/k$a;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    iget-wide v2, v0, Lc/e/a/a/j/c/a/k$a;->d:J

    sub-long v2, p2, v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/c/a/k$d;

    iget-wide v1, v1, Lc/e/a/a/j/c/a/k$d;->a:J

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v1, v0, Lc/e/a/a/j/c/a/k$a;->d:J

    sub-long v1, p2, v1

    iget-wide v3, v0, Lc/e/a/a/j/c/a/k$a;->e:J

    mul-long v1, v1, v3

    :goto_0
    move-wide v6, v1

    .line 8
    iget-object v1, v0, Lc/e/a/a/j/c/a/k$c;->h:Lc/e/a/a/j/c/a/m;

    move-object v2, p1

    iget-object v2, v2, Lc/e/a/a/j/c/a/j;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->e:I

    move-object v2, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lc/e/a/a/j/c/a/m;->a(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v9

    .line 9
    new-instance v1, Lc/e/a/a/j/c/a/h;

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lc/e/a/a/j/c/a/h;-><init>(Ljava/lang/String;JJ)V

    return-object v1
.end method
