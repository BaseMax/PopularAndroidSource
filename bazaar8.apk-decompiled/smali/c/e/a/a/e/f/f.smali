.class public final Lc/e/a/a/e/f/f;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field public final a:Lc/e/a/a/e/f/g;

.field public final b:Lc/e/a/a/o/v;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/a/e/f/g;

    invoke-direct {v0}, Lc/e/a/a/e/f/g;-><init>()V

    iput-object v0, p0, Lc/e/a/a/e/f/f;->a:Lc/e/a/a/e/f/g;

    .line 3
    new-instance v0, Lc/e/a/a/o/v;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/e/a/a/o/v;-><init>([BI)V

    iput-object v0, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lc/e/a/a/e/f/f;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lc/e/a/a/e/f/f;->d:I

    .line 24
    :cond_0
    iget v1, p0, Lc/e/a/a/e/f/f;->d:I

    add-int v2, p1, v1

    iget-object v3, p0, Lc/e/a/a/e/f/f;->a:Lc/e/a/a/e/f/g;

    iget v4, v3, Lc/e/a/a/e/f/g;->h:I

    if-ge v2, v4, :cond_1

    .line 25
    iget-object v2, v3, Lc/e/a/a/e/f/g;->k:[I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lc/e/a/a/e/f/f;->d:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method

.method public a()Lc/e/a/a/e/f/g;
    .locals 1

    .line 22
    iget-object v0, p0, Lc/e/a/a/e/f/f;->a:Lc/e/a/a/e/f/g;

    return-object v0
.end method

.method public a(Lc/e/a/a/e/h;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lc/e/a/a/o/e;->b(Z)V

    .line 2
    iget-boolean v2, p0, Lc/e/a/a/e/f/f;->e:Z

    if-eqz v2, :cond_1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/e/f/f;->e:Z

    .line 4
    iget-object v2, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    invoke-virtual {v2}, Lc/e/a/a/o/v;->C()V

    .line 5
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lc/e/a/a/e/f/f;->e:Z

    if-nez v2, :cond_9

    .line 6
    iget v2, p0, Lc/e/a/a/e/f/f;->c:I

    if-gez v2, :cond_4

    .line 7
    iget-object v2, p0, Lc/e/a/a/e/f/f;->a:Lc/e/a/a/e/f/g;

    invoke-virtual {v2, p1, v1}, Lc/e/a/a/e/f/g;->a(Lc/e/a/a/e/h;Z)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 8
    :cond_2
    iget-object v2, p0, Lc/e/a/a/e/f/f;->a:Lc/e/a/a/e/f/g;

    iget v3, v2, Lc/e/a/a/e/f/g;->i:I

    .line 9
    iget v2, v2, Lc/e/a/a/e/f/g;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    invoke-virtual {v2}, Lc/e/a/a/o/v;->d()I

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Lc/e/a/a/e/f/f;->a(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 11
    iget v2, p0, Lc/e/a/a/e/f/f;->d:I

    add-int/2addr v2, v0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 12
    :goto_2
    invoke-interface {p1, v3}, Lc/e/a/a/e/h;->c(I)V

    .line 13
    iput v2, p0, Lc/e/a/a/e/f/f;->c:I

    .line 14
    :cond_4
    iget v2, p0, Lc/e/a/a/e/f/f;->c:I

    invoke-virtual {p0, v2}, Lc/e/a/a/e/f/f;->a(I)I

    move-result v2

    .line 15
    iget v3, p0, Lc/e/a/a/e/f/f;->c:I

    iget v4, p0, Lc/e/a/a/e/f/f;->d:I

    add-int/2addr v3, v4

    if-lez v2, :cond_7

    .line 16
    iget-object v4, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    invoke-virtual {v4}, Lc/e/a/a/o/v;->b()I

    move-result v4

    iget-object v5, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    invoke-virtual {v5}, Lc/e/a/a/o/v;->d()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_5

    .line 17
    iget-object v4, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    iget-object v5, v4, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {v4}, Lc/e/a/a/o/v;->d()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lc/e/a/a/o/v;->a:[B

    .line 18
    :cond_5
    iget-object v4, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    iget-object v5, v4, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {v4}, Lc/e/a/a/o/v;->d()I

    move-result v4

    invoke-interface {p1, v5, v4, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 19
    iget-object v4, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    invoke-virtual {v4}, Lc/e/a/a/o/v;->d()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lc/e/a/a/o/v;->d(I)V

    .line 20
    iget-object v2, p0, Lc/e/a/a/e/f/f;->a:Lc/e/a/a/e/f/g;

    iget-object v2, v2, Lc/e/a/a/e/f/g;->k:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lc/e/a/a/e/f/f;->e:Z

    .line 21
    :cond_7
    iget-object v2, p0, Lc/e/a/a/e/f/f;->a:Lc/e/a/a/e/f/g;

    iget v2, v2, Lc/e/a/a/e/f/g;->h:I

    if-ne v3, v2, :cond_8

    const/4 v3, -0x1

    :cond_8
    iput v3, p0, Lc/e/a/a/e/f/f;->c:I

    goto/16 :goto_1

    :cond_9
    return v1
.end method

.method public b()Lc/e/a/a/o/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/f/f;->a:Lc/e/a/a/e/f/g;

    invoke-virtual {v0}, Lc/e/a/a/e/f/g;->a()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->C()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc/e/a/a/e/f/f;->c:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/e/f/f;->e:Z

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/f/f;->b:Lc/e/a/a/o/v;

    iget-object v1, v0, Lc/e/a/a/o/v;->a:[B

    array-length v2, v1

    const v3, 0xfe01

    if-ne v2, v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lc/e/a/a/o/v;->d()I

    move-result v2

    .line 3
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/o/v;->a:[B

    return-void
.end method
