.class public final Lc/e/a/a/e/i/b;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lc/e/a/a/e/g;


# static fields
.field public static final a:Lc/e/a/a/e/j;


# instance fields
.field public b:Lc/e/a/a/e/i;

.field public c:Lc/e/a/a/e/q;

.field public d:Lc/e/a/a/e/i/c;

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/e/i/a;->a:Lc/e/a/a/e/i/a;

    sput-object v0, Lc/e/a/a/e/i/b;->a:Lc/e/a/a/e/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()[Lc/e/a/a/e/g;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lc/e/a/a/e/g;

    new-instance v1, Lc/e/a/a/e/i/b;

    invoke-direct {v1}, Lc/e/a/a/e/i/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 13

    .line 7
    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    if-nez p2, :cond_1

    .line 8
    invoke-static {p1}, Lc/e/a/a/e/i/d;->a(Lc/e/a/a/e/h;)Lc/e/a/a/e/i/c;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    .line 9
    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p2}, Lc/e/a/a/e/i/c;->a()I

    move-result v3

    const v4, 0x8000

    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    invoke-virtual {p2}, Lc/e/a/a/e/i/c;->h()I

    move-result v5

    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    .line 11
    invoke-virtual {p2}, Lc/e/a/a/e/i/c;->i()I

    move-result v6

    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    invoke-virtual {p2}, Lc/e/a/a/e/i/c;->g()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, "audio/raw"

    .line 12
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lc/e/a/a/e/i/b;->c:Lc/e/a/a/e/q;

    invoke-interface {v0, p2}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 14
    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    invoke-virtual {p2}, Lc/e/a/a/e/i/c;->e()I

    move-result p2

    iput p2, p0, Lc/e/a/a/e/i/b;->e:I

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    :goto_0
    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    invoke-virtual {p2}, Lc/e/a/a/e/i/c;->j()Z

    move-result p2

    if-nez p2, :cond_2

    .line 17
    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    invoke-static {p1, p2}, Lc/e/a/a/e/i/d;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/i/c;)V

    .line 18
    iget-object p2, p0, Lc/e/a/a/e/i/b;->b:Lc/e/a/a/e/i;

    iget-object v0, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    invoke-interface {p2, v0}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    .line 19
    :cond_2
    iget-object p2, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    invoke-virtual {p2}, Lc/e/a/a/e/i/c;->f()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 p2, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 20
    :goto_1
    invoke-static {v2}, Lc/e/a/a/o/e;->b(Z)V

    .line 21
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_4

    return v5

    :cond_4
    const v2, 0x8000

    .line 22
    iget v3, p0, Lc/e/a/a/e/i/b;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 23
    iget-object v0, p0, Lc/e/a/a/e/i/b;->c:Lc/e/a/a/e/q;

    invoke-interface {v0, p1, v1, p2}, Lc/e/a/a/e/q;->a(Lc/e/a/a/e/h;IZ)I

    move-result p2

    if-eq p2, v5, :cond_5

    .line 24
    iget v0, p0, Lc/e/a/a/e/i/b;->f:I

    add-int/2addr v0, p2

    iput v0, p0, Lc/e/a/a/e/i/b;->f:I

    .line 25
    :cond_5
    iget v0, p0, Lc/e/a/a/e/i/b;->f:I

    iget v1, p0, Lc/e/a/a/e/i/b;->e:I

    div-int/2addr v0, v1

    if-lez v0, :cond_6

    .line 26
    iget-object v1, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v2

    iget p1, p0, Lc/e/a/a/e/i/b;->f:I

    int-to-long v6, p1

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lc/e/a/a/e/i/c;->a(J)J

    move-result-wide v7

    .line 27
    iget p1, p0, Lc/e/a/a/e/i/b;->e:I

    mul-int v10, v0, p1

    .line 28
    iget p1, p0, Lc/e/a/a/e/i/b;->f:I

    sub-int/2addr p1, v10

    iput p1, p0, Lc/e/a/a/e/i/b;->f:I

    .line 29
    iget-object v6, p0, Lc/e/a/a/e/i/b;->c:Lc/e/a/a/e/q;

    const/4 v9, 0x1

    iget v11, p0, Lc/e/a/a/e/i/b;->f:I

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    :cond_6
    if-ne p2, v5, :cond_7

    const/4 v4, -0x1

    :cond_7
    return v4
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc/e/a/a/e/i/b;->f:I

    return-void
.end method

.method public a(Lc/e/a/a/e/i;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/i/b;->b:Lc/e/a/a/e/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v0, v1}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/i/b;->c:Lc/e/a/a/e/q;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/e/a/a/e/i/b;->d:Lc/e/a/a/e/i/c;

    .line 5
    invoke-interface {p1}, Lc/e/a/a/e/i;->a()V

    return-void
.end method

.method public a(Lc/e/a/a/e/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lc/e/a/a/e/i/d;->a(Lc/e/a/a/e/h;)Lc/e/a/a/e/i/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
