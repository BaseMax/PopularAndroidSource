.class public final Lk/t;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lk/h;


# instance fields
.field public final a:Lk/g;

.field public final b:Lk/y;

.field public c:Z


# direct methods
.method public constructor <init>(Lk/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/g;

    invoke-direct {v0}, Lk/g;-><init>()V

    iput-object v0, p0, Lk/t;->a:Lk/g;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lk/t;->b:Lk/y;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lk/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/t;->a:Lk/g;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lk/h;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1}, Lk/g;->a(Ljava/lang/String;)Lk/g;

    .line 12
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lokio/ByteString;)Lk/h;
    .locals 1

    .line 6
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1}, Lk/g;->a(Lokio/ByteString;)Lk/g;

    .line 8
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lk/g;J)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1, p2, p3}, Lk/g;->a(Lk/g;J)V

    .line 4
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lk/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/t;->b:Lk/y;

    invoke-interface {v0}, Lk/y;->b()Lk/B;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lk/h;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1, p2}, Lk/g;->c(J)Lk/g;

    .line 3
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lk/t;->a:Lk/g;

    iget-wide v1, v1, Lk/g;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 3
    iget-object v1, p0, Lk/t;->b:Lk/y;

    iget-object v2, p0, Lk/t;->a:Lk/g;

    iget-object v3, p0, Lk/t;->a:Lk/g;

    iget-wide v3, v3, Lk/g;->c:J

    invoke-interface {v1, v2, v3, v4}, Lk/y;->a(Lk/g;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :goto_0
    :try_start_1
    iget-object v2, p0, Lk/t;->b:Lk/y;

    invoke-interface {v2}, Lk/y;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lk/t;->c:Z

    if-nez v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {v1}, Lk/C;->a(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e()Lk/h;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0}, Lk/g;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v2, p0, Lk/t;->b:Lk/y;

    iget-object v3, p0, Lk/t;->a:Lk/g;

    invoke-interface {v2, v3, v0, v1}, Lk/y;->a(Lk/g;J)V

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/t;->a:Lk/g;

    iget-wide v1, v0, Lk/g;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 3
    iget-object v3, p0, Lk/t;->b:Lk/y;

    invoke-interface {v3, v0, v1, v2}, Lk/y;->a(Lk/g;J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk/t;->b:Lk/y;

    invoke-interface {v0}, Lk/y;->flush()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(J)Lk/h;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1, p2}, Lk/g;->g(J)Lk/g;

    .line 3
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/t;->b:Lk/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 9
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1}, Lk/g;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 11
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lk/h;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1}, Lk/g;->write([B)Lk/g;

    .line 3
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lk/h;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1, p2, p3}, Lk/g;->write([BII)Lk/g;

    .line 7
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lk/h;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1}, Lk/g;->writeByte(I)Lk/g;

    .line 3
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lk/h;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1}, Lk/g;->writeInt(I)Lk/g;

    .line 3
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lk/h;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/t;->a:Lk/g;

    invoke-virtual {v0, p1}, Lk/g;->writeShort(I)Lk/g;

    .line 3
    invoke-virtual {p0}, Lk/t;->e()Lk/h;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
