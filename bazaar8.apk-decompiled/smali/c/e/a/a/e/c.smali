.class public Lc/e/a/a/e/c;
.super Ljava/lang/Object;
.source "ConstantBitrateSeekMap.java"

# interfaces
.implements Lc/e/a/a/e/o;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lc/e/a/a/e/c;->a:J

    .line 3
    iput-wide p3, p0, Lc/e/a/a/e/c;->b:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    .line 4
    :cond_0
    iput p6, p0, Lc/e/a/a/e/c;->c:I

    .line 5
    iput p5, p0, Lc/e/a/a/e/c;->e:I

    const-wide/16 v0, -0x1

    cmp-long p6, p1, v0

    if-nez p6, :cond_1

    .line 6
    iput-wide v0, p0, Lc/e/a/a/e/c;->d:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lc/e/a/a/e/c;->f:J

    goto :goto_0

    :cond_1
    sub-long v0, p1, p3

    .line 8
    iput-wide v0, p0, Lc/e/a/a/e/c;->d:J

    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Lc/e/a/a/e/c;->a(JJI)J

    move-result-wide p1

    iput-wide p1, p0, Lc/e/a/a/e/c;->f:J

    :goto_0
    return-void
.end method

.method public static a(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 1
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x8

    mul-long p0, p0, p2

    const-wide/32 p2, 0xf4240

    mul-long p0, p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public b(J)Lc/e/a/a/e/o$a;
    .locals 7

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    new-instance p1, Lc/e/a/a/e/o$a;

    new-instance p2, Lc/e/a/a/e/p;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lc/e/a/a/e/c;->b:J

    invoke-direct {p2, v0, v1, v2, v3}, Lc/e/a/a/e/p;-><init>(JJ)V

    invoke-direct {p1, p2}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/e/c;->c(J)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/e/c;->d(J)J

    move-result-wide v2

    .line 5
    new-instance v4, Lc/e/a/a/e/p;

    invoke-direct {v4, v2, v3, v0, v1}, Lc/e/a/a/e/p;-><init>(JJ)V

    cmp-long v5, v2, p1

    if-gez v5, :cond_2

    .line 6
    iget p1, p0, Lc/e/a/a/e/c;->c:I

    int-to-long v2, p1

    add-long/2addr v2, v0

    iget-wide v5, p0, Lc/e/a/a/e/c;->a:J

    cmp-long p2, v2, v5

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long p1, p1

    add-long/2addr v0, p1

    .line 7
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/e/c;->d(J)J

    move-result-wide p1

    .line 8
    new-instance v2, Lc/e/a/a/e/p;

    invoke-direct {v2, p1, p2, v0, v1}, Lc/e/a/a/e/p;-><init>(JJ)V

    .line 9
    new-instance p1, Lc/e/a/a/e/o$a;

    invoke-direct {p1, v4, v2}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;Lc/e/a/a/e/p;)V

    return-object p1

    .line 10
    :cond_2
    :goto_0
    new-instance p1, Lc/e/a/a/e/o$a;

    invoke-direct {p1, v4}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object p1
.end method

.method public final c(J)J
    .locals 9

    .line 2
    iget v0, p0, Lc/e/a/a/e/c;->e:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0x7a1200

    div-long/2addr p1, v0

    .line 3
    iget v0, p0, Lc/e/a/a/e/c;->c:I

    int-to-long v1, v0

    div-long/2addr p1, v1

    int-to-long v1, v0

    mul-long v3, p1, v1

    .line 4
    iget-wide p1, p0, Lc/e/a/a/e/c;->d:J

    int-to-long v0, v0

    sub-long v7, p1, v0

    const-wide/16 v5, 0x0

    .line 5
    invoke-static/range {v3 .. v8}, Lc/e/a/a/o/I;->b(JJJ)J

    move-result-wide p1

    .line 6
    iget-wide v0, p0, Lc/e/a/a/e/c;->b:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/c;->f:J

    return-wide v0
.end method

.method public d(J)J
    .locals 3

    .line 2
    iget-wide v0, p0, Lc/e/a/a/e/c;->b:J

    iget v2, p0, Lc/e/a/a/e/c;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Lc/e/a/a/e/c;->a(JJI)J

    move-result-wide p1

    return-wide p1
.end method
