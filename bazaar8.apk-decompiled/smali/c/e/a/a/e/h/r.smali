.class public final Lc/e/a/a/e/h/r;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lc/e/a/a/e/h/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/h/r$a;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/h/E;

.field public final b:Z

.field public final c:Z

.field public final d:Lc/e/a/a/e/h/w;

.field public final e:Lc/e/a/a/e/h/w;

.field public final f:Lc/e/a/a/e/h/w;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lc/e/a/a/e/q;

.field public k:Lc/e/a/a/e/h/r$a;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lc/e/a/a/o/v;


# direct methods
.method public constructor <init>(Lc/e/a/a/e/h/E;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/h/r;->a:Lc/e/a/a/e/h/E;

    .line 3
    iput-boolean p2, p0, Lc/e/a/a/e/h/r;->b:Z

    .line 4
    iput-boolean p3, p0, Lc/e/a/a/e/h/r;->c:Z

    const/4 p1, 0x3

    .line 5
    new-array p1, p1, [Z

    iput-object p1, p0, Lc/e/a/a/e/h/r;->h:[Z

    .line 6
    new-instance p1, Lc/e/a/a/e/h/w;

    const/16 p2, 0x80

    const/4 p3, 0x7

    invoke-direct {p1, p3, p2}, Lc/e/a/a/e/h/w;-><init>(II)V

    iput-object p1, p0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    .line 7
    new-instance p1, Lc/e/a/a/e/h/w;

    const/16 p3, 0x8

    invoke-direct {p1, p3, p2}, Lc/e/a/a/e/h/w;-><init>(II)V

    iput-object p1, p0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    .line 8
    new-instance p1, Lc/e/a/a/e/h/w;

    const/4 p3, 0x6

    invoke-direct {p1, p3, p2}, Lc/e/a/a/e/h/w;-><init>(II)V

    iput-object p1, p0, Lc/e/a/a/e/h/r;->f:Lc/e/a/a/e/h/w;

    .line 9
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1}, Lc/e/a/a/o/v;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/r;->o:Lc/e/a/a/o/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/h/r;->h:[Z

    invoke-static {v0}, Lc/e/a/a/o/t;->a([Z)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    invoke-virtual {v0}, Lc/e/a/a/e/h/w;->b()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    invoke-virtual {v0}, Lc/e/a/a/e/h/w;->b()V

    .line 4
    iget-object v0, p0, Lc/e/a/a/e/h/r;->f:Lc/e/a/a/e/h/w;

    invoke-virtual {v0}, Lc/e/a/a/e/h/w;->b()V

    .line 5
    iget-object v0, p0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v0}, Lc/e/a/a/e/h/r$a;->b()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lc/e/a/a/e/h/r;->g:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lc/e/a/a/e/h/r;->n:Z

    return-void
.end method

.method public a(JI)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lc/e/a/a/e/h/r;->m:J

    .line 14
    iget-boolean p1, p0, Lc/e/a/a/e/h/r;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lc/e/a/a/e/h/r;->n:Z

    return-void
.end method

.method public final a(JIIJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 37
    iget-boolean v2, v0, Lc/e/a/a/e/h/r;->l:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v2}, Lc/e/a/a/e/h/r$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    :cond_0
    iget-object v2, v0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    invoke-virtual {v2, v1}, Lc/e/a/a/e/h/w;->a(I)Z

    .line 39
    iget-object v2, v0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    invoke-virtual {v2, v1}, Lc/e/a/a/e/h/w;->a(I)Z

    .line 40
    iget-boolean v2, v0, Lc/e/a/a/e/h/r;->l:Z

    const/4 v3, 0x3

    if-nez v2, :cond_1

    .line 41
    iget-object v2, v0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    invoke-virtual {v2}, Lc/e/a/a/e/h/w;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    invoke-virtual {v2}, Lc/e/a/a/e/h/w;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v2, v0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    iget-object v4, v2, Lc/e/a/a/e/h/w;->d:[B

    iget v2, v2, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v2, v0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    iget-object v4, v2, Lc/e/a/a/e/h/w;->d:[B

    iget v2, v2, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, v0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    iget-object v4, v2, Lc/e/a/a/e/h/w;->d:[B

    iget v2, v2, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v4, v3, v2}, Lc/e/a/a/o/t;->c([BII)Lc/e/a/a/o/t$b;

    move-result-object v2

    .line 46
    iget-object v4, v0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    iget-object v5, v4, Lc/e/a/a/e/h/w;->d:[B

    iget v4, v4, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v5, v3, v4}, Lc/e/a/a/o/t;->b([BII)Lc/e/a/a/o/t$a;

    move-result-object v3

    .line 47
    iget-object v15, v0, Lc/e/a/a/e/h/r;->j:Lc/e/a/a/e/q;

    iget-object v4, v0, Lc/e/a/a/e/h/r;->i:Ljava/lang/String;

    iget v5, v2, Lc/e/a/a/o/t$b;->a:I

    iget v6, v2, Lc/e/a/a/o/t$b;->b:I

    iget v7, v2, Lc/e/a/a/o/t$b;->c:I

    .line 48
    invoke-static {v5, v6, v7}, Lc/e/a/a/o/g;->b(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget v9, v2, Lc/e/a/a/o/t$b;->e:I

    iget v10, v2, Lc/e/a/a/o/t$b;->f:I

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, -0x1

    iget v14, v2, Lc/e/a/a/o/t$b;->g:F

    const/16 v16, 0x0

    const-string v5, "video/avc"

    move-object v1, v15

    move-object/from16 v15, v16

    .line 49
    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 50
    invoke-interface {v1, v4}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, v0, Lc/e/a/a/e/h/r;->l:Z

    .line 52
    iget-object v1, v0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v1, v2}, Lc/e/a/a/e/h/r$a;->a(Lc/e/a/a/o/t$b;)V

    .line 53
    iget-object v1, v0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v1, v3}, Lc/e/a/a/e/h/r$a;->a(Lc/e/a/a/o/t$a;)V

    .line 54
    iget-object v1, v0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    invoke-virtual {v1}, Lc/e/a/a/e/h/w;->b()V

    .line 55
    iget-object v1, v0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    invoke-virtual {v1}, Lc/e/a/a/e/h/w;->b()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, v0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    invoke-virtual {v1}, Lc/e/a/a/e/h/w;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, v0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    iget-object v2, v1, Lc/e/a/a/e/h/w;->d:[B

    iget v1, v1, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v2, v3, v1}, Lc/e/a/a/o/t;->c([BII)Lc/e/a/a/o/t$b;

    move-result-object v1

    .line 58
    iget-object v2, v0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v2, v1}, Lc/e/a/a/e/h/r$a;->a(Lc/e/a/a/o/t$b;)V

    .line 59
    iget-object v1, v0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    invoke-virtual {v1}, Lc/e/a/a/e/h/w;->b()V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, v0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    invoke-virtual {v1}, Lc/e/a/a/e/h/w;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    iget-object v1, v0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    iget-object v2, v1, Lc/e/a/a/e/h/w;->d:[B

    iget v1, v1, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v2, v3, v1}, Lc/e/a/a/o/t;->b([BII)Lc/e/a/a/o/t$a;

    move-result-object v1

    .line 62
    iget-object v2, v0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v2, v1}, Lc/e/a/a/e/h/r$a;->a(Lc/e/a/a/o/t$a;)V

    .line 63
    iget-object v1, v0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    invoke-virtual {v1}, Lc/e/a/a/e/h/w;->b()V

    .line 64
    :cond_3
    :goto_0
    iget-object v1, v0, Lc/e/a/a/e/h/r;->f:Lc/e/a/a/e/h/w;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lc/e/a/a/e/h/w;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    iget-object v1, v0, Lc/e/a/a/e/h/r;->f:Lc/e/a/a/e/h/w;

    iget-object v2, v1, Lc/e/a/a/e/h/w;->d:[B

    iget v1, v1, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v2, v1}, Lc/e/a/a/o/t;->c([BI)I

    move-result v1

    .line 66
    iget-object v2, v0, Lc/e/a/a/e/h/r;->o:Lc/e/a/a/o/v;

    iget-object v3, v0, Lc/e/a/a/e/h/r;->f:Lc/e/a/a/e/h/w;

    iget-object v3, v3, Lc/e/a/a/e/h/w;->d:[B

    invoke-virtual {v2, v3, v1}, Lc/e/a/a/o/v;->a([BI)V

    .line 67
    iget-object v1, v0, Lc/e/a/a/e/h/r;->o:Lc/e/a/a/o/v;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 68
    iget-object v1, v0, Lc/e/a/a/e/h/r;->a:Lc/e/a/a/e/h/E;

    iget-object v2, v0, Lc/e/a/a/e/h/r;->o:Lc/e/a/a/o/v;

    move-wide/from16 v3, p5

    invoke-virtual {v1, v3, v4, v2}, Lc/e/a/a/e/h/E;->a(JLc/e/a/a/o/v;)V

    .line 69
    :cond_4
    iget-object v3, v0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    iget-boolean v7, v0, Lc/e/a/a/e/h/r;->l:Z

    iget-boolean v8, v0, Lc/e/a/a/e/h/r;->n:Z

    move-wide/from16 v4, p1

    move/from16 v6, p3

    .line 70
    invoke-virtual/range {v3 .. v8}, Lc/e/a/a/e/h/r$a;->a(JIZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, v0, Lc/e/a/a/e/h/r;->n:Z

    :cond_5
    return-void
.end method

.method public final a(JIJ)V
    .locals 7

    .line 27
    iget-boolean v0, p0, Lc/e/a/a/e/h/r;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v0}, Lc/e/a/a/e/h/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p3}, Lc/e/a/a/e/h/w;->b(I)V

    .line 29
    iget-object v0, p0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p3}, Lc/e/a/a/e/h/w;->b(I)V

    .line 30
    :cond_1
    iget-object v0, p0, Lc/e/a/a/e/h/r;->f:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p3}, Lc/e/a/a/e/h/w;->b(I)V

    .line 31
    iget-object v1, p0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/e/h/r$a;->a(JIJ)V

    return-void
.end method

.method public a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 4

    .line 8
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->a()V

    .line 9
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/h/r;->i:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/h/r;->j:Lc/e/a/a/e/q;

    .line 11
    new-instance v0, Lc/e/a/a/e/h/r$a;

    iget-object v1, p0, Lc/e/a/a/e/h/r;->j:Lc/e/a/a/e/q;

    iget-boolean v2, p0, Lc/e/a/a/e/h/r;->b:Z

    iget-boolean v3, p0, Lc/e/a/a/e/h/r;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lc/e/a/a/e/h/r$a;-><init>(Lc/e/a/a/e/q;ZZ)V

    iput-object v0, p0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    .line 12
    iget-object v0, p0, Lc/e/a/a/e/h/r;->a:Lc/e/a/a/e/h/E;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/e/h/E;->a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 14

    .line 15
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v0

    .line 16
    invoke-virtual {p1}, Lc/e/a/a/o/v;->d()I

    move-result v1

    .line 17
    iget-object v2, p1, Lc/e/a/a/o/v;->a:[B

    .line 18
    iget-wide v3, p0, Lc/e/a/a/e/h/r;->g:J

    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lc/e/a/a/e/h/r;->g:J

    .line 19
    iget-object v3, p0, Lc/e/a/a/e/h/r;->j:Lc/e/a/a/e/q;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 20
    :goto_0
    iget-object p1, p0, Lc/e/a/a/e/h/r;->h:[Z

    invoke-static {v2, v0, v1, p1}, Lc/e/a/a/o/t;->a([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 21
    invoke-virtual {p0, v2, v0, v1}, Lc/e/a/a/e/h/r;->a([BII)V

    return-void

    .line 22
    :cond_0
    invoke-static {v2, p1}, Lc/e/a/a/o/t;->b([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    .line 23
    invoke-virtual {p0, v2, v0, p1}, Lc/e/a/a/e/h/r;->a([BII)V

    :cond_1
    sub-int v10, v1, p1

    .line 24
    iget-wide v4, p0, Lc/e/a/a/e/h/r;->g:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    move v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 25
    :goto_1
    iget-wide v12, p0, Lc/e/a/a/e/h/r;->m:J

    move-object v7, p0

    move-wide v8, v4

    invoke-virtual/range {v7 .. v13}, Lc/e/a/a/e/h/r;->a(JIIJ)V

    .line 26
    iget-wide v7, p0, Lc/e/a/a/e/h/r;->m:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lc/e/a/a/e/h/r;->a(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public final a([BII)V
    .locals 1

    .line 32
    iget-boolean v0, p0, Lc/e/a/a/e/h/r;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v0}, Lc/e/a/a/e/h/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/h/r;->d:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/w;->a([BII)V

    .line 34
    iget-object v0, p0, Lc/e/a/a/e/h/r;->e:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/w;->a([BII)V

    .line 35
    :cond_1
    iget-object v0, p0, Lc/e/a/a/e/h/r;->f:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/w;->a([BII)V

    .line 36
    iget-object v0, p0, Lc/e/a/a/e/h/r;->k:Lc/e/a/a/e/h/r$a;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/r$a;->a([BII)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
