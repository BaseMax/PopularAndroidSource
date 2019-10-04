.class public final Lc/e/a/a/n/k;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field public final a:Lc/e/a/a/n/j;

.field public final b:Lc/e/a/a/n/l;

.field public final c:[B

.field public d:Z

.field public e:Z

.field public f:J


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/n/k;->d:Z

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/n/k;->e:Z

    .line 4
    iput-object p1, p0, Lc/e/a/a/n/k;->a:Lc/e/a/a/n/j;

    .line 5
    iput-object p2, p0, Lc/e/a/a/n/k;->b:Lc/e/a/a/n/l;

    const/4 p1, 0x1

    .line 6
    new-array p1, p1, [B

    iput-object p1, p0, Lc/e/a/a/n/k;->c:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/n/k;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/n/k;->a:Lc/e/a/a/n/j;

    invoke-interface {v0}, Lc/e/a/a/n/j;->close()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/n/k;->e:Z

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/k;->c:[B

    invoke-virtual {p0, v0}, Lc/e/a/a/n/k;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/a/n/k;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lc/e/a/a/n/k;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 4
    iget-boolean v0, p0, Lc/e/a/a/n/k;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/n/k;->s()V

    .line 6
    iget-object v0, p0, Lc/e/a/a/n/k;->a:Lc/e/a/a/n/j;

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/n/j;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 7
    :cond_0
    iget-wide p2, p0, Lc/e/a/a/n/k;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lc/e/a/a/n/k;->f:J

    return p1
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/n/k;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/n/k;->a:Lc/e/a/a/n/j;

    iget-object v1, p0, Lc/e/a/a/n/k;->b:Lc/e/a/a/n/l;

    invoke-interface {v0, v1}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/l;)J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/n/k;->d:Z

    :cond_0
    return-void
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/n/k;->s()V

    return-void
.end method
