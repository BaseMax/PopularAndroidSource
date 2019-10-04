.class public final Lc/e/a/a/j/c/j;
.super Ljava/lang/Object;
.source "EventSampleStream.java"

# interfaces
.implements Lc/e/a/a/j/C;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/Format;

.field public final b:Lc/e/a/a/g/a/c;

.field public c:[J

.field public d:Z

.field public e:Lc/e/a/a/j/c/a/e;

.field public f:Z

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lc/e/a/a/j/c/a/e;Lcom/google/android/exoplayer2/Format;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/e/a/a/j/c/j;->a:Lcom/google/android/exoplayer2/Format;

    .line 3
    iput-object p1, p0, Lc/e/a/a/j/c/j;->e:Lc/e/a/a/j/c/a/e;

    .line 4
    new-instance p2, Lc/e/a/a/g/a/c;

    invoke-direct {p2}, Lc/e/a/a/g/a/c;-><init>()V

    iput-object p2, p0, Lc/e/a/a/j/c/j;->b:Lc/e/a/a/g/a/c;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lc/e/a/a/j/c/j;->h:J

    .line 6
    iget-object p2, p1, Lc/e/a/a/j/c/a/e;->b:[J

    iput-object p2, p0, Lc/e/a/a/j/c/j;->c:[J

    .line 7
    invoke-virtual {p0, p1, p3}, Lc/e/a/a/j/c/j;->a(Lc/e/a/a/j/c/a/e;Z)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 4

    const/4 v0, 0x1

    if-nez p3, :cond_4

    .line 13
    iget-boolean p3, p0, Lc/e/a/a/j/c/j;->f:Z

    if-nez p3, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget p1, p0, Lc/e/a/a/j/c/j;->g:I

    iget-object p3, p0, Lc/e/a/a/j/c/j;->c:[J

    array-length p3, p3

    const/4 v1, -0x4

    const/4 v2, -0x3

    if-ne p1, p3, :cond_2

    .line 15
    iget-boolean p1, p0, Lc/e/a/a/j/c/j;->d:Z

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 16
    invoke-virtual {p2, p1}, Lc/e/a/a/c/a;->e(I)V

    return v1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 p3, p1, 0x1

    .line 17
    iput p3, p0, Lc/e/a/a/j/c/j;->g:I

    .line 18
    iget-object p3, p0, Lc/e/a/a/j/c/j;->b:Lc/e/a/a/g/a/c;

    iget-object v3, p0, Lc/e/a/a/j/c/j;->e:Lc/e/a/a/j/c/a/e;

    iget-object v3, v3, Lc/e/a/a/j/c/a/e;->a:[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    aget-object v3, v3, p1

    invoke-virtual {p3, v3}, Lc/e/a/a/g/a/c;->a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object p3

    if-eqz p3, :cond_3

    .line 19
    array-length v2, p3

    invoke-virtual {p2, v2}, Lc/e/a/a/c/f;->g(I)V

    .line 20
    invoke-virtual {p2, v0}, Lc/e/a/a/c/a;->e(I)V

    .line 21
    iget-object v0, p2, Lc/e/a/a/c/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    iget-object p3, p0, Lc/e/a/a/j/c/j;->c:[J

    aget-wide v2, p3, p1

    iput-wide v2, p2, Lc/e/a/a/c/f;->d:J

    return v1

    :cond_3
    return v2

    .line 23
    :cond_4
    :goto_0
    iget-object p2, p0, Lc/e/a/a/j/c/j;->a:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p1, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    .line 24
    iput-boolean v0, p0, Lc/e/a/a/j/c/j;->f:Z

    const/4 p1, -0x5

    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 4

    .line 9
    iget-object v0, p0, Lc/e/a/a/j/c/j;->c:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-static {v0, p1, p2, v2, v1}, Lc/e/a/a/o/I;->a([JJZZ)I

    move-result v0

    iput v0, p0, Lc/e/a/a/j/c/j;->g:I

    .line 11
    iget-boolean v0, p0, Lc/e/a/a/j/c/j;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/a/j/c/j;->g:I

    iget-object v3, p0, Lc/e/a/a/j/c/j;->c:[J

    array-length v3, v3

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    :goto_0
    iput-wide p1, p0, Lc/e/a/a/j/c/j;->h:J

    return-void
.end method

.method public a(Lc/e/a/a/j/c/a/e;Z)V
    .locals 6

    .line 1
    iget v0, p0, Lc/e/a/a/j/c/j;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lc/e/a/a/j/c/j;->c:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    .line 2
    :goto_0
    iput-boolean p2, p0, Lc/e/a/a/j/c/j;->d:Z

    .line 3
    iput-object p1, p0, Lc/e/a/a/j/c/j;->e:Lc/e/a/a/j/c/a/e;

    .line 4
    iget-object p1, p1, Lc/e/a/a/j/c/a/e;->b:[J

    iput-object p1, p0, Lc/e/a/a/j/c/j;->c:[J

    .line 5
    iget-wide p1, p0, Lc/e/a/a/j/c/j;->h:J

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/c/j;->a(J)V

    goto :goto_1

    :cond_1
    cmp-long p1, v4, v1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lc/e/a/a/j/c/j;->c:[J

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, v4, v5, p2, p2}, Lc/e/a/a/o/I;->a([JJZZ)I

    move-result p1

    iput p1, p0, Lc/e/a/a/j/c/j;->g:I

    :cond_2
    :goto_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/j;->e:Lc/e/a/a/j/c/a/e;

    invoke-virtual {v0}, Lc/e/a/a/j/c/a/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(J)I
    .locals 4

    .line 1
    iget v0, p0, Lc/e/a/a/j/c/j;->g:I

    iget-object v1, p0, Lc/e/a/a/j/c/j;->c:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {v1, p1, p2, v2, v3}, Lc/e/a/a/o/I;->a([JJZZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    iget p2, p0, Lc/e/a/a/j/c/j;->g:I

    sub-int p2, p1, p2

    .line 4
    iput p1, p0, Lc/e/a/a/j/c/j;->g:I

    return p2
.end method
