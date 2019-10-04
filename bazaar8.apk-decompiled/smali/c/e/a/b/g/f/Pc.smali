.class public final Lc/e/a/b/g/f/Pc;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Lc/e/a/b/g/f/Ua;


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lc/e/a/b/g/f/Pc;->h:I

    const/16 v0, 0x40

    .line 3
    iput v0, p0, Lc/e/a/b/g/f/Pc;->j:I

    const/high16 v0, 0x4000000

    .line 4
    iput v0, p0, Lc/e/a/b/g/f/Pc;->k:I

    .line 5
    iput-object p1, p0, Lc/e/a/b/g/f/Pc;->a:[B

    .line 6
    iput p2, p0, Lc/e/a/b/g/f/Pc;->b:I

    add-int/2addr p3, p2

    .line 7
    iput p3, p0, Lc/e/a/b/g/f/Pc;->d:I

    iput p3, p0, Lc/e/a/b/g/f/Pc;->c:I

    .line 8
    iput p2, p0, Lc/e/a/b/g/f/Pc;->f:I

    return-void
.end method

.method public static a([BII)Lc/e/a/b/g/f/Pc;
    .locals 1

    .line 1
    new-instance p1, Lc/e/a/b/g/f/Pc;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lc/e/a/b/g/f/Pc;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 25
    iget v0, p0, Lc/e/a/b/g/f/Pc;->f:I

    iget v1, p0, Lc/e/a/b/g/f/Pc;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(Lc/e/a/b/g/f/bc;)Lc/e/a/b/g/f/nb;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/nb<",
            "TT;*>;>(",
            "Lc/e/a/b/g/f/bc<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 12
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/g/f/Pc;->l:Lc/e/a/b/g/f/Ua;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lc/e/a/b/g/f/Pc;->a:[B

    iget v1, p0, Lc/e/a/b/g/f/Pc;->b:I

    iget v2, p0, Lc/e/a/b/g/f/Pc;->c:I

    invoke-static {v0, v1, v2}, Lc/e/a/b/g/f/Ua;->a([BII)Lc/e/a/b/g/f/Ua;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/Pc;->l:Lc/e/a/b/g/f/Ua;

    .line 14
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/Pc;->l:Lc/e/a/b/g/f/Ua;

    invoke-virtual {v0}, Lc/e/a/b/g/f/Ua;->t()I

    move-result v0

    .line 15
    iget v1, p0, Lc/e/a/b/g/f/Pc;->f:I

    iget v2, p0, Lc/e/a/b/g/f/Pc;->b:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 16
    iget-object v2, p0, Lc/e/a/b/g/f/Pc;->l:Lc/e/a/b/g/f/Ua;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lc/e/a/b/g/f/Ua;->g(I)V

    .line 17
    iget-object v0, p0, Lc/e/a/b/g/f/Pc;->l:Lc/e/a/b/g/f/Ua;

    iget v1, p0, Lc/e/a/b/g/f/Pc;->j:I

    iget v2, p0, Lc/e/a/b/g/f/Pc;->i:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/Ua;->d(I)I

    .line 18
    iget-object v0, p0, Lc/e/a/b/g/f/Pc;->l:Lc/e/a/b/g/f/Ua;

    .line 19
    invoke-static {}, Lc/e/a/b/g/f/cb;->d()Lc/e/a/b/g/f/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc/e/a/b/g/f/Ua;->a(Lc/e/a/b/g/f/bc;Lc/e/a/b/g/f/cb;)Lc/e/a/b/g/f/Sb;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/f/nb;

    .line 20
    iget v0, p0, Lc/e/a/b/g/f/Pc;->g:I

    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/Pc;->c(I)Z

    return-object p1

    .line 21
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v2, "CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 23
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzfh; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziu;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zziu;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final a(I)V
    .locals 1

    .line 30
    iget v0, p0, Lc/e/a/b/g/f/Pc;->g:I

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Pc;->b(II)V

    return-void
.end method

.method public final a(Lc/e/a/b/g/f/Wc;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v0

    .line 3
    iget v1, p0, Lc/e/a/b/g/f/Pc;->i:I

    iget v2, p0, Lc/e/a/b/g/f/Pc;->j:I

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/Pc;->d(I)I

    move-result v0

    .line 5
    iget v1, p0, Lc/e/a/b/g/f/Pc;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/e/a/b/g/f/Pc;->i:I

    .line 6
    invoke-virtual {p1, p0}, Lc/e/a/b/g/f/Wc;->a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Pc;->b(I)V

    .line 8
    iget p1, p0, Lc/e/a/b/g/f/Pc;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lc/e/a/b/g/f/Pc;->i:I

    .line 9
    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/Pc;->e(I)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zziu;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zziu;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
.end method

.method public final a(II)[B
    .locals 3

    if-nez p2, :cond_0

    .line 26
    sget-object p1, Lc/e/a/b/g/f/Zc;->h:[B

    return-object p1

    .line 27
    :cond_0
    new-array v0, p2, [B

    .line 28
    iget v1, p0, Lc/e/a/b/g/f/Pc;->b:I

    add-int/2addr v1, p1

    .line 29
    iget-object p1, p0, Lc/e/a/b/g/f/Pc;->a:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v0

    if-ltz v0, :cond_1

    .line 5
    iget v1, p0, Lc/e/a/b/g/f/Pc;->d:I

    iget v2, p0, Lc/e/a/b/g/f/Pc;->f:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/g/f/Pc;->a:[B

    sget-object v4, Lc/e/a/b/g/f/Vc;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 7
    iget v2, p0, Lc/e/a/b/g/f/Pc;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lc/e/a/b/g/f/Pc;->f:I

    return-object v1

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->a()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object v0

    throw v0

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->b()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object v0

    throw v0
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/Pc;->g:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zziu;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zziu;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
.end method

.method public final b(II)V
    .locals 3

    .line 10
    iget v0, p0, Lc/e/a/b/g/f/Pc;->f:I

    iget v1, p0, Lc/e/a/b/g/f/Pc;->b:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 11
    iput v1, p0, Lc/e/a/b/g/f/Pc;->f:I

    .line 12
    iput p2, p0, Lc/e/a/b/g/f/Pc;->g:I

    return-void

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/Pc;->f:I

    iget v1, p0, Lc/e/a/b/g/f/Pc;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/a/b/g/f/Pc;->g:I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v0

    iput v0, p0, Lc/e/a/b/g/f/Pc;->g:I

    .line 4
    iget v0, p0, Lc/e/a/b/g/f/Pc;->g:I

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziu;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zziu;-><init>(Ljava/lang/String;)V

    .line 6
    throw v0
.end method

.method public final c(I)Z
    .locals 4

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 8
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 10
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    return v1

    .line 11
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zziu;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zziu;-><init>(Ljava/lang/String;)V

    .line 12
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/Pc;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    .line 15
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Pc;->b(I)V

    return v1

    .line 16
    :cond_4
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Pc;->f(I)V

    return v1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 18
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 19
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 20
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 21
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 22
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 23
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    .line 24
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    return v1

    .line 25
    :cond_6
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->e()I

    return v1
.end method

.method public final d(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 2
    iget v0, p0, Lc/e/a/b/g/f/Pc;->f:I

    add-int/2addr p1, v0

    .line 3
    iget v0, p0, Lc/e/a/b/g/f/Pc;->h:I

    if-gt p1, v0, :cond_0

    .line 4
    iput p1, p0, Lc/e/a/b/g/f/Pc;->h:I

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->g()V

    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->a()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->b()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object p1

    throw p1
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->c()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public final e(I)V
    .locals 0

    .line 8
    iput p1, p0, Lc/e/a/b/g/f/Pc;->h:I

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->g()V

    return-void
.end method

.method public final f()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->h()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->c()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final f(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 3
    iget v0, p0, Lc/e/a/b/g/f/Pc;->f:I

    add-int v1, v0, p1

    iget v2, p0, Lc/e/a/b/g/f/Pc;->h:I

    if-gt v1, v2, :cond_1

    .line 4
    iget v1, p0, Lc/e/a/b/g/f/Pc;->d:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    .line 5
    iput v0, p0, Lc/e/a/b/g/f/Pc;->f:I

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->a()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 7
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Pc;->f(I)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->a()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->b()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object p1

    throw p1
.end method

.method public final g()V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/Pc;->d:I

    iget v1, p0, Lc/e/a/b/g/f/Pc;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/e/a/b/g/f/Pc;->d:I

    .line 2
    iget v0, p0, Lc/e/a/b/g/f/Pc;->d:I

    .line 3
    iget v1, p0, Lc/e/a/b/g/f/Pc;->h:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 4
    iput v1, p0, Lc/e/a/b/g/f/Pc;->e:I

    .line 5
    iget v1, p0, Lc/e/a/b/g/f/Pc;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lc/e/a/b/g/f/Pc;->d:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lc/e/a/b/g/f/Pc;->e:I

    return-void
.end method

.method public final h()B
    .locals 3

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/Pc;->f:I

    iget v1, p0, Lc/e/a/b/g/f/Pc;->d:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/Pc;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lc/e/a/b/g/f/Pc;->f:I

    aget-byte v0, v1, v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->a()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object v0

    throw v0
.end method

.method public final i()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/Pc;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v1, p0, Lc/e/a/b/g/f/Pc;->f:I

    sub-int/2addr v0, v1

    return v0
.end method
