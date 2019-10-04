.class public Lc/e/a/a/p/a/b;
.super Lc/e/a/a/p;
.source "CameraMotionRenderer.java"


# instance fields
.field public final j:Lc/e/a/a/E;

.field public final k:Lc/e/a/a/c/f;

.field public final l:Lc/e/a/a/o/v;

.field public m:J

.field public n:Lc/e/a/a/p/a/a;

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/p;-><init>(I)V

    .line 2
    new-instance v0, Lc/e/a/a/E;

    invoke-direct {v0}, Lc/e/a/a/E;-><init>()V

    iput-object v0, p0, Lc/e/a/a/p/a/b;->j:Lc/e/a/a/E;

    .line 3
    new-instance v0, Lc/e/a/a/c/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/e/a/a/c/f;-><init>(I)V

    iput-object v0, p0, Lc/e/a/a/p/a/b;->k:Lc/e/a/a/c/f;

    .line 4
    new-instance v0, Lc/e/a/a/o/v;

    invoke-direct {v0}, Lc/e/a/a/o/v;-><init>()V

    iput-object v0, p0, Lc/e/a/a/p/a/b;->l:Lc/e/a/a/o/v;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 2
    check-cast p2, Lc/e/a/a/p/a/a;

    iput-object p2, p0, Lc/e/a/a/p/a/b;->n:Lc/e/a/a/p/a/a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lc/e/a/a/p;->a(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(JJ)V
    .locals 4

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc/e/a/a/p;->g()Z

    move-result p3

    if-nez p3, :cond_2

    iget-wide p3, p0, Lc/e/a/a/p/a/b;->o:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 7
    iget-object p3, p0, Lc/e/a/a/p/a/b;->k:Lc/e/a/a/c/f;

    invoke-virtual {p3}, Lc/e/a/a/c/f;->g()V

    .line 8
    iget-object p3, p0, Lc/e/a/a/p/a/b;->j:Lc/e/a/a/E;

    iget-object p4, p0, Lc/e/a/a/p/a/b;->k:Lc/e/a/a/c/f;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lc/e/a/a/p;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_2

    .line 9
    iget-object p3, p0, Lc/e/a/a/p/a/b;->k:Lc/e/a/a/c/f;

    invoke-virtual {p3}, Lc/e/a/a/c/a;->i()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p3, p0, Lc/e/a/a/p/a/b;->k:Lc/e/a/a/c/f;

    invoke-virtual {p3}, Lc/e/a/a/c/f;->k()V

    .line 11
    iget-object p3, p0, Lc/e/a/a/p/a/b;->k:Lc/e/a/a/c/f;

    iget-wide v0, p3, Lc/e/a/a/c/f;->d:J

    iput-wide v0, p0, Lc/e/a/a/p/a/b;->o:J

    .line 12
    iget-object p4, p0, Lc/e/a/a/p/a/b;->n:Lc/e/a/a/p/a/a;

    if-eqz p4, :cond_0

    .line 13
    iget-object p3, p3, Lc/e/a/a/c/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Lc/e/a/a/p/a/b;->a(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-eqz p3, :cond_0

    .line 14
    iget-object p4, p0, Lc/e/a/a/p/a/b;->n:Lc/e/a/a/p/a/a;

    invoke-static {p4}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lc/e/a/a/p/a/a;

    iget-wide v0, p0, Lc/e/a/a/p/a/b;->o:J

    iget-wide v2, p0, Lc/e/a/a/p/a/b;->m:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lc/e/a/a/p/a/a;->a(J[F)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/p/a/b;->x()V

    return-void
.end method

.method public a([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    .line 4
    iput-wide p2, p0, Lc/e/a/a/p/a/b;->m:J

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)[F
    .locals 3

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Lc/e/a/a/p/a/b;->l:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/o/v;->a([BI)V

    .line 17
    iget-object v0, p0, Lc/e/a/a/p/a/b;->l:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lc/e/a/a/o/v;->e(I)V

    const/4 p1, 0x3

    .line 18
    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 19
    iget-object v2, p0, Lc/e/a/a/p/a/b;->l:Lc/e/a/a/o/v;

    invoke-virtual {v2}, Lc/e/a/a/o/v;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/p;->g()Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/p/a/b;->x()V

    return-void
.end method

.method public final x()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc/e/a/a/p/a/b;->o:J

    .line 2
    iget-object v0, p0, Lc/e/a/a/p/a/b;->n:Lc/e/a/a/p/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lc/e/a/a/p/a/a;->a()V

    :cond_0
    return-void
.end method
