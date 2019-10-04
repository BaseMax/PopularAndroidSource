.class public final Lc/e/a/a/e/f/g;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# static fields
.field public static final a:I


# instance fields
.field public b:I

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:I

.field public final k:[I

.field public final l:Lc/e/a/a/o/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OggS"

    .line 1
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lc/e/a/a/e/f/g;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lc/e/a/a/e/f/g;->k:[I

    .line 3
    new-instance v1, Lc/e/a/a/o/v;

    invoke-direct {v1, v0}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object v1, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/e/f/g;->b:I

    .line 2
    iput v0, p0, Lc/e/a/a/e/f/g;->c:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lc/e/a/a/e/f/g;->d:J

    .line 4
    iput-wide v1, p0, Lc/e/a/a/e/f/g;->e:J

    .line 5
    iput-wide v1, p0, Lc/e/a/a/e/f/g;->f:J

    .line 6
    iput-wide v1, p0, Lc/e/a/a/e/f/g;->g:J

    .line 7
    iput v0, p0, Lc/e/a/a/e/f/g;->h:I

    .line 8
    iput v0, p0, Lc/e/a/a/e/f/g;->i:I

    .line 9
    iput v0, p0, Lc/e/a/a/e/f/g;->j:I

    return-void
.end method

.method public a(Lc/e/a/a/e/h;Z)Z
    .locals 8

    .line 10
    iget-object v0, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->C()V

    .line 11
    invoke-virtual {p0}, Lc/e/a/a/e/f/g;->a()V

    .line 12
    invoke-interface {p1}, Lc/e/a/a/e/h;->getLength()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 13
    invoke-interface {p1}, Lc/e/a/a/e/h;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lc/e/a/a/e/h;->a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1b

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    .line 14
    iget-object v0, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/16 v1, 0x1b

    invoke-interface {p1, v0, v3, v1, v2}, Lc/e/a/a/e/h;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 15
    :cond_2
    iget-object v0, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->w()J

    move-result-wide v4

    sget v0, Lc/e/a/a/e/f/g;->a:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    return v3

    .line 16
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    iget-object v0, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->u()I

    move-result v0

    iput v0, p0, Lc/e/a/a/e/f/g;->b:I

    .line 18
    iget v0, p0, Lc/e/a/a/e/f/g;->b:I

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    return v3

    .line 19
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->u()I

    move-result p2

    iput p2, p0, Lc/e/a/a/e/f/g;->c:I

    .line 21
    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lc/e/a/a/e/f/g;->d:J

    .line 22
    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->n()J

    move-result-wide v4

    iput-wide v4, p0, Lc/e/a/a/e/f/g;->e:J

    .line 23
    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->n()J

    move-result-wide v4

    iput-wide v4, p0, Lc/e/a/a/e/f/g;->f:J

    .line 24
    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->n()J

    move-result-wide v4

    iput-wide v4, p0, Lc/e/a/a/e/f/g;->g:J

    .line 25
    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->u()I

    move-result p2

    iput p2, p0, Lc/e/a/a/e/f/g;->h:I

    .line 26
    iget p2, p0, Lc/e/a/a/e/f/g;->h:I

    add-int/2addr p2, v1

    iput p2, p0, Lc/e/a/a/e/f/g;->i:I

    .line 27
    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->C()V

    .line 28
    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    iget-object p2, p2, Lc/e/a/a/o/v;->a:[B

    iget v0, p0, Lc/e/a/a/e/f/g;->h:I

    invoke-interface {p1, p2, v3, v0}, Lc/e/a/a/e/h;->a([BII)V

    .line 29
    :goto_2
    iget p1, p0, Lc/e/a/a/e/f/g;->h:I

    if-ge v3, p1, :cond_7

    .line 30
    iget-object p1, p0, Lc/e/a/a/e/f/g;->k:[I

    iget-object p2, p0, Lc/e/a/a/e/f/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->u()I

    move-result p2

    aput p2, p1, v3

    .line 31
    iget p1, p0, Lc/e/a/a/e/f/g;->j:I

    iget-object p2, p0, Lc/e/a/a/e/f/g;->k:[I

    aget p2, p2, v3

    add-int/2addr p1, p2

    iput p1, p0, Lc/e/a/a/e/f/g;->j:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    return v3

    .line 32
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
