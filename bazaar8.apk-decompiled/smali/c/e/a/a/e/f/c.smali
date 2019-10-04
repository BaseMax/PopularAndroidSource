.class public final Lc/e/a/a/e/f/c;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lc/e/a/a/e/f/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/f/c$a;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/f/g;

.field public final b:J

.field public final c:J

.field public final d:Lc/e/a/a/e/f/k;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(JJLc/e/a/a/e/f/k;JJZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/a/e/f/g;

    invoke-direct {v0}, Lc/e/a/a/e/f/g;-><init>()V

    iput-object v0, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    cmp-long v1, p3, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Lc/e/a/a/o/e;->a(Z)V

    .line 4
    iput-object p5, p0, Lc/e/a/a/e/f/c;->d:Lc/e/a/a/e/f/k;

    .line 5
    iput-wide p1, p0, Lc/e/a/a/e/f/c;->b:J

    .line 6
    iput-wide p3, p0, Lc/e/a/a/e/f/c;->c:J

    sub-long/2addr p3, p1

    cmp-long p1, p6, p3

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iput v0, p0, Lc/e/a/a/e/f/c;->e:I

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iput-wide p8, p0, Lc/e/a/a/e/f/c;->f:J

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lc/e/a/a/e/f/c;->e:I

    :goto_2
    return-void
.end method

.method public static synthetic a(Lc/e/a/a/e/f/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->b:J

    return-wide v0
.end method

.method public static synthetic a(Lc/e/a/a/e/f/c;JJJ)J
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p6}, Lc/e/a/a/e/f/c;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(Lc/e/a/a/e/f/c;)Lc/e/a/a/e/f/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/f/c;->d:Lc/e/a/a/e/f/k;

    return-object p0
.end method

.method public static synthetic c(Lc/e/a/a/e/f/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(JJJ)J
    .locals 4

    .line 42
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->c:J

    iget-wide v2, p0, Lc/e/a/a/e/f/c;->b:J

    sub-long/2addr v0, v2

    mul-long p3, p3, v0

    iget-wide v0, p0, Lc/e/a/a/e/f/c;->f:J

    div-long/2addr p3, v0

    sub-long/2addr p3, p5

    add-long/2addr p1, p3

    cmp-long p3, p1, v2

    if-gez p3, :cond_0

    move-wide p1, v2

    .line 43
    :cond_0
    iget-wide p3, p0, Lc/e/a/a/e/f/c;->c:J

    cmp-long p5, p1, p3

    if-ltz p5, :cond_1

    const-wide/16 p1, 0x1

    sub-long p1, p3, p1

    :cond_1
    return-wide p1
.end method

.method public a(JLc/e/a/a/e/h;)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 18
    iget-wide v2, v0, Lc/e/a/a/e/f/c;->i:J

    iget-wide v4, v0, Lc/e/a/a/e/f/c;->j:J

    const-wide/16 v6, 0x2

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    .line 19
    iget-wide v1, v0, Lc/e/a/a/e/f/c;->k:J

    add-long/2addr v1, v6

    neg-long v1, v1

    return-wide v1

    .line 20
    :cond_0
    invoke-interface/range {p3 .. p3}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v2

    .line 21
    iget-wide v4, v0, Lc/e/a/a/e/f/c;->j:J

    invoke-virtual {v0, v1, v4, v5}, Lc/e/a/a/e/f/c;->a(Lc/e/a/a/e/h;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 22
    iget-wide v4, v0, Lc/e/a/a/e/f/c;->i:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    return-wide v4

    .line 23
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_2
    iget-object v4, v0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lc/e/a/a/e/f/g;->a(Lc/e/a/a/e/h;Z)Z

    .line 25
    invoke-interface/range {p3 .. p3}, Lc/e/a/a/e/h;->b()V

    .line 26
    iget-object v4, v0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget-wide v8, v4, Lc/e/a/a/e/f/g;->d:J

    sub-long v8, p1, v8

    .line 27
    iget v5, v4, Lc/e/a/a/e/f/g;->i:I

    iget v4, v4, Lc/e/a/a/e/f/g;->j:I

    add-int/2addr v5, v4

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-ltz v4, :cond_4

    const-wide/32 v12, 0x11940

    cmp-long v4, v8, v12

    if-lez v4, :cond_3

    goto :goto_0

    .line 28
    :cond_3
    invoke-interface {v1, v5}, Lc/e/a/a/e/h;->c(I)V

    .line 29
    iget-object v1, v0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget-wide v1, v1, Lc/e/a/a/e/f/g;->d:J

    add-long/2addr v1, v6

    neg-long v1, v1

    return-wide v1

    :cond_4
    :goto_0
    const-wide/32 v12, 0x186a0

    cmp-long v4, v8, v10

    if-gez v4, :cond_5

    .line 30
    iput-wide v2, v0, Lc/e/a/a/e/f/c;->j:J

    .line 31
    iget-object v2, v0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget-wide v2, v2, Lc/e/a/a/e/f/g;->d:J

    iput-wide v2, v0, Lc/e/a/a/e/f/c;->l:J

    goto :goto_1

    .line 32
    :cond_5
    invoke-interface/range {p3 .. p3}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v2

    int-to-long v14, v5

    add-long/2addr v2, v14

    iput-wide v2, v0, Lc/e/a/a/e/f/c;->i:J

    .line 33
    iget-object v2, v0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget-wide v2, v2, Lc/e/a/a/e/f/g;->d:J

    iput-wide v2, v0, Lc/e/a/a/e/f/c;->k:J

    .line 34
    iget-wide v2, v0, Lc/e/a/a/e/f/c;->j:J

    iget-wide v10, v0, Lc/e/a/a/e/f/c;->i:J

    sub-long/2addr v2, v10

    add-long/2addr v2, v14

    cmp-long v4, v2, v12

    if-gez v4, :cond_6

    .line 35
    invoke-interface {v1, v5}, Lc/e/a/a/e/h;->c(I)V

    .line 36
    iget-wide v1, v0, Lc/e/a/a/e/f/c;->k:J

    add-long/2addr v1, v6

    neg-long v1, v1

    return-wide v1

    .line 37
    :cond_6
    :goto_1
    iget-wide v2, v0, Lc/e/a/a/e/f/c;->j:J

    iget-wide v10, v0, Lc/e/a/a/e/f/c;->i:J

    sub-long/2addr v2, v10

    cmp-long v4, v2, v12

    if-gez v4, :cond_7

    .line 38
    iput-wide v10, v0, Lc/e/a/a/e/f/c;->j:J

    return-wide v10

    :cond_7
    int-to-long v2, v5

    const-wide/16 v4, 0x1

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gtz v12, :cond_8

    goto :goto_2

    :cond_8
    move-wide v6, v4

    :goto_2
    mul-long v2, v2, v6

    .line 39
    invoke-interface/range {p3 .. p3}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iget-wide v1, v0, Lc/e/a/a/e/f/c;->j:J

    iget-wide v10, v0, Lc/e/a/a/e/f/c;->i:J

    sub-long/2addr v1, v10

    mul-long v8, v8, v1

    iget-wide v1, v0, Lc/e/a/a/e/f/c;->l:J

    iget-wide v12, v0, Lc/e/a/a/e/f/c;->k:J

    sub-long/2addr v1, v12

    div-long/2addr v8, v1

    add-long/2addr v6, v8

    .line 40
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 41
    iget-wide v6, v0, Lc/e/a/a/e/f/c;->j:J

    sub-long/2addr v6, v4

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public a(Lc/e/a/a/e/h;)J
    .locals 14

    .line 4
    iget v0, p0, Lc/e/a/a/e/f/c;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->h:J

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v0, v1, p1}, Lc/e/a/a/e/f/c;->a(JLc/e/a/a/e/h;)J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-ltz v7, :cond_3

    return-wide v0

    .line 8
    :cond_3
    iget-wide v10, p0, Lc/e/a/a/e/f/c;->h:J

    add-long/2addr v0, v3

    neg-long v12, v0

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lc/e/a/a/e/f/c;->a(Lc/e/a/a/e/h;JJ)J

    move-result-wide v5

    .line 9
    :goto_0
    iput v2, p0, Lc/e/a/a/e/f/c;->e:I

    add-long/2addr v5, v3

    neg-long v0, v5

    return-wide v0

    .line 10
    :cond_4
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Lc/e/a/a/e/f/c;->g:J

    .line 11
    iput v1, p0, Lc/e/a/a/e/f/c;->e:I

    .line 12
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->c:J

    const-wide/32 v3, 0xff1b

    sub-long/2addr v0, v3

    .line 13
    iget-wide v3, p0, Lc/e/a/a/e/f/c;->g:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    return-wide v0

    .line 14
    :cond_5
    invoke-virtual {p0, p1}, Lc/e/a/a/e/f/c;->b(Lc/e/a/a/e/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/a/e/f/c;->f:J

    .line 15
    iput v2, p0, Lc/e/a/a/e/f/c;->e:I

    .line 16
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->g:J

    return-wide v0
.end method

.method public a(Lc/e/a/a/e/h;JJ)J
    .locals 5

    .line 53
    iget-object v0, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lc/e/a/a/e/f/g;->a(Lc/e/a/a/e/h;Z)Z

    .line 54
    :goto_0
    iget-object v0, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget-wide v2, v0, Lc/e/a/a/e/f/g;->d:J

    cmp-long v4, v2, p2

    if-gez v4, :cond_0

    .line 55
    iget p4, v0, Lc/e/a/a/e/f/g;->i:I

    iget p5, v0, Lc/e/a/a/e/f/g;->j:I

    add-int/2addr p4, p5

    invoke-interface {p1, p4}, Lc/e/a/a/e/h;->c(I)V

    .line 56
    iget-object p4, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget-wide v2, p4, Lc/e/a/a/e/f/g;->d:J

    .line 57
    invoke-virtual {p4, p1, v1}, Lc/e/a/a/e/f/g;->a(Lc/e/a/a/e/h;Z)Z

    move-wide p4, v2

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p1}, Lc/e/a/a/e/h;->b()V

    return-wide p4
.end method

.method public a()Lc/e/a/a/e/f/c$a;
    .locals 6

    .line 17
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->f:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Lc/e/a/a/e/f/c$a;

    invoke-direct {v0, p0, v2}, Lc/e/a/a/e/f/c$a;-><init>(Lc/e/a/a/e/f/c;Lc/e/a/a/e/f/b;)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public bridge synthetic a()Lc/e/a/a/e/o;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/e/f/c;->a()Lc/e/a/a/e/f/c$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/e/a/a/e/h;J)Z
    .locals 6

    const-wide/16 v0, 0x3

    add-long/2addr p2, v0

    .line 44
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const/16 v0, 0x800

    .line 45
    new-array v0, v0, [B

    .line 46
    array-length v1, v0

    .line 47
    :goto_0
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v2, p2

    if-lez v5, :cond_1

    .line 48
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v1

    sub-long v1, p2, v1

    long-to-int v2, v1

    const/4 v1, 0x4

    if-ge v2, v1, :cond_0

    return v4

    :cond_0
    move v1, v2

    .line 49
    :cond_1
    invoke-interface {p1, v0, v4, v1, v4}, Lc/e/a/a/e/h;->b([BIIZ)Z

    :goto_1
    add-int/lit8 v2, v1, -0x3

    if-ge v4, v2, :cond_3

    .line 50
    aget-byte v2, v0, v4

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v4, 0x2

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v4, 0x3

    aget-byte v2, v0, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_2

    .line 51
    invoke-interface {p1, v4}, Lc/e/a/a/e/h;->c(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    :cond_3
    invoke-interface {p1, v2}, Lc/e/a/a/e/h;->c(I)V

    goto :goto_0
.end method

.method public b(Lc/e/a/a/e/h;)J
    .locals 5

    .line 6
    invoke-virtual {p0, p1}, Lc/e/a/a/e/f/c;->c(Lc/e/a/a/e/h;)V

    .line 7
    iget-object v0, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    invoke-virtual {v0}, Lc/e/a/a/e/f/g;->a()V

    .line 8
    :goto_0
    iget-object v0, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget v0, v0, Lc/e/a/a/e/f/g;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lc/e/a/a/e/f/c;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 9
    iget-object v0, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lc/e/a/a/e/f/g;->a(Lc/e/a/a/e/h;Z)Z

    .line 10
    iget-object v0, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget v1, v0, Lc/e/a/a/e/f/g;->i:I

    iget v0, v0, Lc/e/a/a/e/f/g;->j:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lc/e/a/a/e/h;->c(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/f/c;->a:Lc/e/a/a/e/f/g;

    iget-wide v0, p1, Lc/e/a/a/e/f/g;->d:J

    return-wide v0
.end method

.method public b()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->b:J

    iput-wide v0, p0, Lc/e/a/a/e/f/c;->i:J

    .line 3
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->c:J

    iput-wide v0, p0, Lc/e/a/a/e/f/c;->j:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lc/e/a/a/e/f/c;->k:J

    .line 5
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->f:J

    iput-wide v0, p0, Lc/e/a/a/e/f/c;->l:J

    return-void
.end method

.method public c(J)J
    .locals 4

    .line 2
    iget v0, p0, Lc/e/a/a/e/f/c;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lc/e/a/a/o/e;->a(Z)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lc/e/a/a/e/f/c;->d:Lc/e/a/a/e/f/k;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/e/f/k;->b(J)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lc/e/a/a/e/f/c;->h:J

    .line 4
    iput v1, p0, Lc/e/a/a/e/f/c;->e:I

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/e/f/c;->b()V

    .line 6
    iget-wide p1, p0, Lc/e/a/a/e/f/c;->h:J

    return-wide p1
.end method

.method public c(Lc/e/a/a/e/h;)V
    .locals 2

    .line 7
    iget-wide v0, p0, Lc/e/a/a/e/f/c;->c:J

    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/a/e/f/c;->a(Lc/e/a/a/e/h;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method
