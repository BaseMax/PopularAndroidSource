.class public final Lc/e/a/a/e/i/d;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/i/d$a;
    }
.end annotation


# direct methods
.method public static a(Lc/e/a/a/e/h;)Lc/e/a/a/e/i/c;
    .locals 14

    .line 1
    invoke-static {p0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lc/e/a/a/o/v;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lc/e/a/a/o/v;-><init>(I)V

    .line 3
    invoke-static {p0, v0}, Lc/e/a/a/e/i/d$a;->a(Lc/e/a/a/e/h;Lc/e/a/a/o/v;)Lc/e/a/a/e/i/d$a;

    move-result-object v2

    .line 4
    iget v2, v2, Lc/e/a/a/e/i/d$a;->a:I

    sget v3, Lc/e/a/a/b/H;->a:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return-object v4

    .line 5
    :cond_0
    iget-object v2, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-interface {p0, v2, v5, v3}, Lc/e/a/a/e/h;->a([BII)V

    .line 6
    invoke-virtual {v0, v5}, Lc/e/a/a/o/v;->e(I)V

    .line 7
    invoke-virtual {v0}, Lc/e/a/a/o/v;->i()I

    move-result v2

    .line 8
    sget v3, Lc/e/a/a/b/H;->b:I

    const-string v6, "WavHeaderReader"

    if-eq v2, v3, :cond_1

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported RIFF format: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lc/e/a/a/o/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 10
    :cond_1
    invoke-static {p0, v0}, Lc/e/a/a/e/i/d$a;->a(Lc/e/a/a/e/h;Lc/e/a/a/o/v;)Lc/e/a/a/e/i/d$a;

    move-result-object v2

    .line 11
    :goto_0
    iget v3, v2, Lc/e/a/a/e/i/d$a;->a:I

    sget v7, Lc/e/a/a/b/H;->c:I

    if-eq v3, v7, :cond_2

    .line 12
    iget-wide v2, v2, Lc/e/a/a/e/i/d$a;->b:J

    long-to-int v3, v2

    invoke-interface {p0, v3}, Lc/e/a/a/e/h;->a(I)V

    .line 13
    invoke-static {p0, v0}, Lc/e/a/a/e/i/d$a;->a(Lc/e/a/a/e/h;Lc/e/a/a/o/v;)Lc/e/a/a/e/i/d$a;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_2
    iget-wide v7, v2, Lc/e/a/a/e/i/d$a;->b:J

    const-wide/16 v9, 0x10

    cmp-long v3, v7, v9

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lc/e/a/a/o/e;->b(Z)V

    .line 15
    iget-object v3, v0, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p0, v3, v5, v1}, Lc/e/a/a/e/h;->a([BII)V

    .line 16
    invoke-virtual {v0, v5}, Lc/e/a/a/o/v;->e(I)V

    .line 17
    invoke-virtual {v0}, Lc/e/a/a/o/v;->p()I

    move-result v3

    .line 18
    invoke-virtual {v0}, Lc/e/a/a/o/v;->p()I

    move-result v8

    .line 19
    invoke-virtual {v0}, Lc/e/a/a/o/v;->o()I

    move-result v9

    .line 20
    invoke-virtual {v0}, Lc/e/a/a/o/v;->o()I

    move-result v10

    .line 21
    invoke-virtual {v0}, Lc/e/a/a/o/v;->p()I

    move-result v11

    .line 22
    invoke-virtual {v0}, Lc/e/a/a/o/v;->p()I

    move-result v12

    mul-int v0, v8, v12

    .line 23
    div-int/lit8 v0, v0, 0x8

    if-ne v11, v0, :cond_5

    .line 24
    invoke-static {v3, v12}, Lc/e/a/a/b/H;->a(II)I

    move-result v13

    if-nez v13, :cond_4

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported WAV format: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bit/sample, type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lc/e/a/a/o/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 26
    :cond_4
    iget-wide v2, v2, Lc/e/a/a/e/i/d$a;->b:J

    long-to-int v0, v2

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Lc/e/a/a/e/h;->a(I)V

    .line 27
    new-instance p0, Lc/e/a/a/e/i/c;

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lc/e/a/a/e/i/c;-><init>(IIIIII)V

    return-object p0

    .line 28
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected block alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; got: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static a(Lc/e/a/a/e/h;Lc/e/a/a/e/i/c;)V
    .locals 8

    .line 29
    invoke-static {p0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-interface {p0}, Lc/e/a/a/e/h;->b()V

    .line 32
    new-instance v0, Lc/e/a/a/o/v;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lc/e/a/a/o/v;-><init>(I)V

    .line 33
    invoke-static {p0, v0}, Lc/e/a/a/e/i/d$a;->a(Lc/e/a/a/e/h;Lc/e/a/a/o/v;)Lc/e/a/a/e/i/d$a;

    move-result-object v2

    .line 34
    :goto_0
    iget v3, v2, Lc/e/a/a/e/i/d$a;->a:I

    const-string v4, "data"

    invoke-static {v4}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown WAV chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lc/e/a/a/e/i/d$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WavHeaderReader"

    invoke-static {v4, v3}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x8

    .line 36
    iget-wide v5, v2, Lc/e/a/a/e/i/d$a;->b:J

    add-long/2addr v5, v3

    .line 37
    iget v3, v2, Lc/e/a/a/e/i/d$a;->a:I

    const-string v4, "RIFF"

    invoke-static {v4}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    const-wide/16 v5, 0xc

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v7, v5, v3

    if-gtz v7, :cond_1

    long-to-int v2, v5

    .line 38
    invoke-interface {p0, v2}, Lc/e/a/a/e/h;->c(I)V

    .line 39
    invoke-static {p0, v0}, Lc/e/a/a/e/i/d$a;->a(Lc/e/a/a/e/h;Lc/e/a/a/o/v;)Lc/e/a/a/e/i/d$a;

    move-result-object v2

    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lc/e/a/a/e/i/d$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_2
    invoke-interface {p0, v1}, Lc/e/a/a/e/h;->c(I)V

    .line 42
    invoke-interface {p0}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v0

    iget-wide v2, v2, Lc/e/a/a/e/i/d$a;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lc/e/a/a/e/i/c;->a(JJ)V

    return-void
.end method
