.class public final Lcom/getkeepsafe/a/a/g;
.super Lcom/getkeepsafe/a/a/c$c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/a/a/f;Lcom/getkeepsafe/a/a/c$b;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/getkeepsafe/a/a/c$c;-><init>()V

    const/4 v0, 0x4

    .line 25
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    iget-boolean v1, p2, Lcom/getkeepsafe/a/a/c$b;->bigEndian:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    iget-wide v1, p2, Lcom/getkeepsafe/a/a/c$b;->phoff:J

    iget p2, p2, Lcom/getkeepsafe/a/a/c$b;->phentsize:I

    int-to-long v3, p2

    mul-long p3, p3, v3

    add-long/2addr v1, p3

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/getkeepsafe/a/a/g;->type:J

    const-wide/16 p2, 0x4

    add-long/2addr p2, v1

    .line 30
    invoke-virtual {p1, v0, p2, p3}, Lcom/getkeepsafe/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/getkeepsafe/a/a/g;->offset:J

    const-wide/16 p2, 0x8

    add-long/2addr p2, v1

    .line 31
    invoke-virtual {p1, v0, p2, p3}, Lcom/getkeepsafe/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/getkeepsafe/a/a/g;->vaddr:J

    const-wide/16 p2, 0x14

    add-long/2addr v1, p2

    .line 32
    invoke-virtual {p1, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/getkeepsafe/a/a/g;->memsz:J

    return-void
.end method
