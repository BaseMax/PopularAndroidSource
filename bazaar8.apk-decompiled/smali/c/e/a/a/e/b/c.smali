.class public final Lc/e/a/a/e/b/c;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lc/e/a/a/e/g;


# static fields
.field public static final a:Lc/e/a/a/e/j;

.field public static final b:I


# instance fields
.field public final c:Lc/e/a/a/o/v;

.field public final d:Lc/e/a/a/o/v;

.field public final e:Lc/e/a/a/o/v;

.field public final f:Lc/e/a/a/o/v;

.field public final g:Lc/e/a/a/e/b/d;

.field public h:Lc/e/a/a/e/i;

.field public i:I

.field public j:J

.field public k:I

.field public l:I

.field public m:I

.field public n:J

.field public o:Z

.field public p:Lc/e/a/a/e/b/b;

.field public q:Lc/e/a/a/e/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/e/b/a;->a:Lc/e/a/a/e/b/a;

    sput-object v0, Lc/e/a/a/e/b/c;->a:Lc/e/a/a/e/j;

    const-string v0, "FLV"

    .line 2
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lc/e/a/a/e/b/c;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/a/o/v;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    .line 3
    new-instance v0, Lc/e/a/a/o/v;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object v0, p0, Lc/e/a/a/e/b/c;->d:Lc/e/a/a/o/v;

    .line 4
    new-instance v0, Lc/e/a/a/o/v;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object v0, p0, Lc/e/a/a/e/b/c;->e:Lc/e/a/a/o/v;

    .line 5
    new-instance v0, Lc/e/a/a/o/v;

    invoke-direct {v0}, Lc/e/a/a/o/v;-><init>()V

    iput-object v0, p0, Lc/e/a/a/e/b/c;->f:Lc/e/a/a/o/v;

    .line 6
    new-instance v0, Lc/e/a/a/e/b/d;

    invoke-direct {v0}, Lc/e/a/a/e/b/d;-><init>()V

    iput-object v0, p0, Lc/e/a/a/e/b/c;->g:Lc/e/a/a/e/b/d;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lc/e/a/a/e/b/c;->i:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide v0, p0, Lc/e/a/a/e/b/c;->j:J

    return-void
.end method

.method public static synthetic c()[Lc/e/a/a/e/g;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lc/e/a/a/e/g;

    new-instance v1, Lc/e/a/a/e/b/c;

    invoke-direct {v1}, Lc/e/a/a/e/b/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 2

    .line 19
    :cond_0
    :goto_0
    iget p2, p0, Lc/e/a/a/e/b/c;->i:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 20
    invoke-virtual {p0, p1}, Lc/e/a/a/e/b/c;->d(Lc/e/a/a/e/h;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 22
    :cond_2
    invoke-virtual {p0, p1}, Lc/e/a/a/e/b/c;->e(Lc/e/a/a/e/h;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 23
    :cond_3
    invoke-virtual {p0, p1}, Lc/e/a/a/e/b/c;->f(Lc/e/a/a/e/h;)V

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p0, p1}, Lc/e/a/a/e/b/c;->c(Lc/e/a/a/e/h;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lc/e/a/a/e/b/c;->i:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide p1, p0, Lc/e/a/a/e/b/c;->j:J

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lc/e/a/a/e/b/c;->k:I

    return-void
.end method

.method public a(Lc/e/a/a/e/i;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lc/e/a/a/e/b/c;->h:Lc/e/a/a/e/i;

    return-void
.end method

.method public a(Lc/e/a/a/e/h;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lc/e/a/a/e/h;->a([BII)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->e(I)V

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->x()I

    move-result v0

    sget v2, Lc/e/a/a/e/b/c;->b:I

    if-eq v0, v2, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lc/e/a/a/e/h;->a([BII)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->e(I)V

    .line 6
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->A()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lc/e/a/a/e/h;->a([BII)V

    .line 8
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->e(I)V

    .line 9
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->i()I

    move-result v0

    .line 10
    invoke-interface {p1}, Lc/e/a/a/e/h;->b()V

    .line 11
    invoke-interface {p1, v0}, Lc/e/a/a/e/h;->a(I)V

    .line 12
    iget-object v0, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v0, v1, v2}, Lc/e/a/a/e/h;->a([BII)V

    .line 13
    iget-object p1, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    invoke-virtual {p1, v1}, Lc/e/a/a/o/v;->e(I)V

    .line 14
    iget-object p1, p0, Lc/e/a/a/e/b/c;->c:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->i()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final b(Lc/e/a/a/e/h;)Lc/e/a/a/o/v;
    .locals 4

    .line 1
    iget v0, p0, Lc/e/a/a/e/b/c;->m:I

    iget-object v1, p0, Lc/e/a/a/e/b/c;->f:Lc/e/a/a/o/v;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->b()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/b/c;->f:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lc/e/a/a/e/b/c;->m:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/o/v;->a([BI)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/b/c;->f:Lc/e/a/a/o/v;

    invoke-virtual {v0, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lc/e/a/a/e/b/c;->f:Lc/e/a/a/o/v;

    iget v1, p0, Lc/e/a/a/e/b/c;->m:I

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->d(I)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/e/b/c;->f:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    iget v1, p0, Lc/e/a/a/e/b/c;->m:I

    invoke-interface {p1, v0, v2, v1}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 6
    iget-object p1, p0, Lc/e/a/a/e/b/c;->f:Lc/e/a/a/o/v;

    return-object p1
.end method

.method public final b()V
    .locals 5

    .line 7
    iget-boolean v0, p0, Lc/e/a/a/e/b/c;->o:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lc/e/a/a/e/b/c;->h:Lc/e/a/a/e/i;

    new-instance v3, Lc/e/a/a/e/o$b;

    invoke-direct {v3, v1, v2}, Lc/e/a/a/e/o$b;-><init>(J)V

    invoke-interface {v0, v3}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lc/e/a/a/e/b/c;->o:Z

    .line 10
    :cond_0
    iget-wide v3, p0, Lc/e/a/a/e/b/c;->j:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lc/e/a/a/e/b/c;->g:Lc/e/a/a/e/b/d;

    .line 12
    invoke-virtual {v0}, Lc/e/a/a/e/b/d;->a()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lc/e/a/a/e/b/c;->n:J

    neg-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lc/e/a/a/e/b/c;->j:J

    :cond_2
    return-void
.end method

.method public final c(Lc/e/a/a/e/h;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/b/c;->d:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v1, v3}, Lc/e/a/a/e/h;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/b/c;->d:Lc/e/a/a/o/v;

    invoke-virtual {p1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 4
    iget-object p1, p0, Lc/e/a/a/e/b/c;->d:Lc/e/a/a/o/v;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lc/e/a/a/o/v;->f(I)V

    .line 5
    iget-object p1, p0, Lc/e/a/a/e/b/c;->d:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result p1

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 6
    iget-object p1, p0, Lc/e/a/a/e/b/c;->p:Lc/e/a/a/e/b/b;

    if-nez p1, :cond_3

    .line 7
    new-instance p1, Lc/e/a/a/e/b/b;

    iget-object v4, p0, Lc/e/a/a/e/b/c;->h:Lc/e/a/a/e/i;

    const/16 v5, 0x8

    .line 8
    invoke-interface {v4, v5, v3}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object v4

    invoke-direct {p1, v4}, Lc/e/a/a/e/b/b;-><init>(Lc/e/a/a/e/q;)V

    iput-object p1, p0, Lc/e/a/a/e/b/c;->p:Lc/e/a/a/e/b/b;

    :cond_3
    const/4 p1, 0x2

    if-eqz v2, :cond_4

    .line 9
    iget-object v2, p0, Lc/e/a/a/e/b/c;->q:Lc/e/a/a/e/b/e;

    if-nez v2, :cond_4

    .line 10
    new-instance v2, Lc/e/a/a/e/b/e;

    iget-object v4, p0, Lc/e/a/a/e/b/c;->h:Lc/e/a/a/e/i;

    .line 11
    invoke-interface {v4, v1, p1}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object v4

    invoke-direct {v2, v4}, Lc/e/a/a/e/b/e;-><init>(Lc/e/a/a/e/q;)V

    iput-object v2, p0, Lc/e/a/a/e/b/c;->q:Lc/e/a/a/e/b/e;

    .line 12
    :cond_4
    iget-object v2, p0, Lc/e/a/a/e/b/c;->h:Lc/e/a/a/e/i;

    invoke-interface {v2}, Lc/e/a/a/e/i;->a()V

    .line 13
    iget-object v2, p0, Lc/e/a/a/e/b/c;->d:Lc/e/a/a/o/v;

    invoke-virtual {v2}, Lc/e/a/a/o/v;->i()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p0, Lc/e/a/a/e/b/c;->k:I

    .line 14
    iput p1, p0, Lc/e/a/a/e/b/c;->i:I

    return v3
.end method

.method public final d(Lc/e/a/a/e/h;)Z
    .locals 6

    .line 1
    iget v0, p0, Lc/e/a/a/e/b/c;->l:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/e/a/a/e/b/c;->p:Lc/e/a/a/e/b/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/e/b/c;->b()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/b/c;->p:Lc/e/a/a/e/b/b;

    invoke-virtual {p0, p1}, Lc/e/a/a/e/b/c;->b(Lc/e/a/a/e/h;)Lc/e/a/a/o/v;

    move-result-object p1

    iget-wide v2, p0, Lc/e/a/a/e/b/c;->j:J

    iget-wide v4, p0, Lc/e/a/a/e/b/c;->n:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lc/e/a/a/o/v;J)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lc/e/a/a/e/b/c;->l:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lc/e/a/a/e/b/c;->q:Lc/e/a/a/e/b/e;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/e/b/c;->b()V

    .line 6
    iget-object v0, p0, Lc/e/a/a/e/b/c;->q:Lc/e/a/a/e/b/e;

    invoke-virtual {p0, p1}, Lc/e/a/a/e/b/c;->b(Lc/e/a/a/e/h;)Lc/e/a/a/o/v;

    move-result-object p1

    iget-wide v2, p0, Lc/e/a/a/e/b/c;->j:J

    iget-wide v4, p0, Lc/e/a/a/e/b/c;->n:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lc/e/a/a/o/v;J)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lc/e/a/a/e/b/c;->l:I

    const/16 v2, 0x12

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lc/e/a/a/e/b/c;->o:Z

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lc/e/a/a/e/b/c;->g:Lc/e/a/a/e/b/d;

    invoke-virtual {p0, p1}, Lc/e/a/a/e/b/c;->b(Lc/e/a/a/e/h;)Lc/e/a/a/o/v;

    move-result-object p1

    iget-wide v2, p0, Lc/e/a/a/e/b/c;->n:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lc/e/a/a/o/v;J)V

    .line 9
    iget-object p1, p0, Lc/e/a/a/e/b/c;->g:Lc/e/a/a/e/b/d;

    invoke-virtual {p1}, Lc/e/a/a/e/b/d;->a()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lc/e/a/a/e/b/c;->h:Lc/e/a/a/e/i;

    new-instance v0, Lc/e/a/a/e/o$b;

    invoke-direct {v0, v2, v3}, Lc/e/a/a/e/o$b;-><init>(J)V

    invoke-interface {p1, v0}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    .line 11
    iput-boolean v1, p0, Lc/e/a/a/e/b/c;->o:Z

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lc/e/a/a/e/b/c;->m:I

    invoke-interface {p1, v0}, Lc/e/a/a/e/h;->c(I)V

    const/4 v1, 0x0

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 13
    iput p1, p0, Lc/e/a/a/e/b/c;->k:I

    const/4 p1, 0x2

    .line 14
    iput p1, p0, Lc/e/a/a/e/b/c;->i:I

    return v1
.end method

.method public final e(Lc/e/a/a/e/h;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/b/c;->e:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-interface {p1, v0, v2, v3, v1}, Lc/e/a/a/e/h;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/b/c;->e:Lc/e/a/a/o/v;

    invoke-virtual {p1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 3
    iget-object p1, p0, Lc/e/a/a/e/b/c;->e:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result p1

    iput p1, p0, Lc/e/a/a/e/b/c;->l:I

    .line 4
    iget-object p1, p0, Lc/e/a/a/e/b/c;->e:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->x()I

    move-result p1

    iput p1, p0, Lc/e/a/a/e/b/c;->m:I

    .line 5
    iget-object p1, p0, Lc/e/a/a/e/b/c;->e:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->x()I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lc/e/a/a/e/b/c;->n:J

    .line 6
    iget-object p1, p0, Lc/e/a/a/e/b/c;->e:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v2, p1

    iget-wide v4, p0, Lc/e/a/a/e/b/c;->n:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iput-wide v2, p0, Lc/e/a/a/e/b/c;->n:J

    .line 7
    iget-object p1, p0, Lc/e/a/a/e/b/c;->e:Lc/e/a/a/o/v;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lc/e/a/a/o/v;->f(I)V

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lc/e/a/a/e/b/c;->i:I

    return v1
.end method

.method public final f(Lc/e/a/a/e/h;)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/e/b/c;->k:I

    invoke-interface {p1, v0}, Lc/e/a/a/e/h;->c(I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lc/e/a/a/e/b/c;->k:I

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lc/e/a/a/e/b/c;->i:I

    return-void
.end method
