.class public final Lc/e/a/a/e/e/p;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public a:Lc/e/a/a/e/e/e;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:[J

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[J

.field public l:[Z

.field public m:Z

.field public n:[Z

.field public o:Lc/e/a/a/e/e/o;

.field public p:I

.field public q:Lc/e/a/a/o/v;

.field public r:Z

.field public s:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 5

    .line 24
    iget-object v0, p0, Lc/e/a/a/e/e/p;->k:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lc/e/a/a/e/e/p;->j:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/e/e/p;->e:I

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lc/e/a/a/e/e/p;->s:J

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/e/e/p;->m:Z

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/e/e/p;->r:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc/e/a/a/e/e/p;->o:Lc/e/a/a/e/e/o;

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 6
    iput p1, p0, Lc/e/a/a/e/e/p;->e:I

    .line 7
    iput p2, p0, Lc/e/a/a/e/e/p;->f:I

    .line 8
    iget-object v0, p0, Lc/e/a/a/e/e/p;->h:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 9
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, Lc/e/a/a/e/e/p;->g:[J

    .line 10
    new-array p1, p1, [I

    iput-object p1, p0, Lc/e/a/a/e/e/p;->h:[I

    .line 11
    :cond_1
    iget-object p1, p0, Lc/e/a/a/e/e/p;->i:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    if-ge p1, p2, :cond_3

    :cond_2
    mul-int/lit8 p2, p2, 0x7d

    .line 12
    div-int/lit8 p2, p2, 0x64

    .line 13
    new-array p1, p2, [I

    iput-object p1, p0, Lc/e/a/a/e/e/p;->i:[I

    .line 14
    new-array p1, p2, [I

    iput-object p1, p0, Lc/e/a/a/e/e/p;->j:[I

    .line 15
    new-array p1, p2, [J

    iput-object p1, p0, Lc/e/a/a/e/e/p;->k:[J

    .line 16
    new-array p1, p2, [Z

    iput-object p1, p0, Lc/e/a/a/e/e/p;->l:[Z

    .line 17
    new-array p1, p2, [Z

    iput-object p1, p0, Lc/e/a/a/e/e/p;->n:[Z

    :cond_3
    return-void
.end method

.method public a(Lc/e/a/a/e/h;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lc/e/a/a/e/e/p;->q:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    iget v1, p0, Lc/e/a/a/e/e/p;->p:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 19
    iget-object p1, p0, Lc/e/a/a/e/e/p;->q:Lc/e/a/a/o/v;

    invoke-virtual {p1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 20
    iput-boolean v2, p0, Lc/e/a/a/e/e/p;->r:Z

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lc/e/a/a/e/e/p;->q:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    iget v1, p0, Lc/e/a/a/e/e/p;->p:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lc/e/a/a/o/v;->a([BII)V

    .line 22
    iget-object p1, p0, Lc/e/a/a/e/e/p;->q:Lc/e/a/a/o/v;

    invoke-virtual {p1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 23
    iput-boolean v2, p0, Lc/e/a/a/e/e/p;->r:Z

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/e/p;->q:Lc/e/a/a/o/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/e/a/a/o/v;->d()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lc/e/a/a/o/v;

    invoke-direct {v0, p1}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object v0, p0, Lc/e/a/a/e/e/p;->q:Lc/e/a/a/o/v;

    .line 3
    :cond_1
    iput p1, p0, Lc/e/a/a/e/e/p;->p:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lc/e/a/a/e/e/p;->m:Z

    .line 5
    iput-boolean p1, p0, Lc/e/a/a/e/e/p;->r:Z

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/e/e/p;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/e/e/p;->n:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
