.class public final Lc/e/a/a/e/i/c;
.super Ljava/lang/Object;
.source "WavHeader.java"

# interfaces
.implements Lc/e/a/a/e/o;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/e/i/c;->a:I

    .line 3
    iput p2, p0, Lc/e/a/a/e/i/c;->b:I

    .line 4
    iput p3, p0, Lc/e/a/a/e/i/c;->c:I

    .line 5
    iput p4, p0, Lc/e/a/a/e/i/c;->d:I

    .line 6
    iput p5, p0, Lc/e/a/a/e/i/c;->e:I

    .line 7
    iput p6, p0, Lc/e/a/a/e/i/c;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 5
    iget v0, p0, Lc/e/a/a/e/i/c;->b:I

    iget v1, p0, Lc/e/a/a/e/i/c;->e:I

    mul-int v0, v0, v1

    iget v1, p0, Lc/e/a/a/e/i/c;->a:I

    mul-int v0, v0, v1

    return v0
.end method

.method public a(J)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lc/e/a/a/e/i/c;->g:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 4
    iget v0, p0, Lc/e/a/a/e/i/c;->c:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public a(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/e/a/a/e/i/c;->g:J

    .line 2
    iput-wide p3, p0, Lc/e/a/a/e/i/c;->h:J

    return-void
.end method

.method public b(J)Lc/e/a/a/e/o$a;
    .locals 11

    .line 1
    iget v0, p0, Lc/e/a/a/e/i/c;->c:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 2
    iget v2, p0, Lc/e/a/a/e/i/c;->d:I

    int-to-long v3, v2

    div-long/2addr v0, v3

    int-to-long v3, v2

    mul-long v5, v0, v3

    .line 3
    iget-wide v0, p0, Lc/e/a/a/e/i/c;->h:J

    int-to-long v2, v2

    sub-long v9, v0, v2

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lc/e/a/a/o/I;->b(JJJ)J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lc/e/a/a/e/i/c;->g:J

    add-long/2addr v2, v0

    .line 5
    invoke-virtual {p0, v2, v3}, Lc/e/a/a/e/i/c;->a(J)J

    move-result-wide v4

    .line 6
    new-instance v6, Lc/e/a/a/e/p;

    invoke-direct {v6, v4, v5, v2, v3}, Lc/e/a/a/e/p;-><init>(JJ)V

    cmp-long v7, v4, p1

    if-gez v7, :cond_1

    .line 7
    iget-wide p1, p0, Lc/e/a/a/e/i/c;->h:J

    iget v4, p0, Lc/e/a/a/e/i/c;->d:I

    int-to-long v7, v4

    sub-long/2addr p1, v7

    cmp-long v5, v0, p1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-long p1, v4

    add-long/2addr v2, p1

    .line 8
    invoke-virtual {p0, v2, v3}, Lc/e/a/a/e/i/c;->a(J)J

    move-result-wide p1

    .line 9
    new-instance v0, Lc/e/a/a/e/p;

    invoke-direct {v0, p1, p2, v2, v3}, Lc/e/a/a/e/p;-><init>(JJ)V

    .line 10
    new-instance p1, Lc/e/a/a/e/o$a;

    invoke-direct {p1, v6, v0}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;Lc/e/a/a/e/p;)V

    return-object p1

    .line 11
    :cond_1
    :goto_0
    new-instance p1, Lc/e/a/a/e/o$a;

    invoke-direct {p1, v6}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/i/c;->h:J

    iget v2, p0, Lc/e/a/a/e/i/c;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 2
    iget v2, p0, Lc/e/a/a/e/i/c;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/e/i/c;->d:I

    return v0
.end method

.method public f()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/e/i/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lc/e/a/a/e/i/c;->g:J

    iget-wide v2, p0, Lc/e/a/a/e/i/c;->h:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/e/i/c;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/e/i/c;->a:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/e/i/c;->b:I

    return v0
.end method

.method public j()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/i/c;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lc/e/a/a/e/i/c;->h:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
