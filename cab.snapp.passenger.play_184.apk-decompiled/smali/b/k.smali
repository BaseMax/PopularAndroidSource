.class public final Lb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/u;


# instance fields
.field private final a:Lb/d;

.field private final b:Ljava/util/zip/Deflater;

.field private final c:Lb/g;

.field private d:Z

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lb/u;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lb/k;->e:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lb/k;->b:Ljava/util/zip/Deflater;

    .line 59
    invoke-static {p1}, Lb/n;->buffer(Lb/u;)Lb/d;

    move-result-object p1

    iput-object p1, p0, Lb/k;->a:Lb/d;

    .line 60
    new-instance p1, Lb/g;

    iget-object v0, p0, Lb/k;->a:Lb/d;

    iget-object v1, p0, Lb/k;->b:Ljava/util/zip/Deflater;

    invoke-direct {p1, v0, v1}, Lb/g;-><init>(Lb/d;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lb/k;->c:Lb/g;

    .line 1123
    iget-object p1, p0, Lb/k;->a:Lb/d;

    invoke-interface {p1}, Lb/d;->buffer()Lb/c;

    move-result-object p1

    const/16 v0, 0x1f8b

    .line 1124
    invoke-virtual {p1, v0}, Lb/c;->writeShort(I)Lb/c;

    const/16 v0, 0x8

    .line 1125
    invoke-virtual {p1, v0}, Lb/c;->writeByte(I)Lb/c;

    const/4 v0, 0x0

    .line 1126
    invoke-virtual {p1, v0}, Lb/c;->writeByte(I)Lb/c;

    .line 1127
    invoke-virtual {p1, v0}, Lb/c;->writeInt(I)Lb/c;

    .line 1128
    invoke-virtual {p1, v0}, Lb/c;->writeByte(I)Lb/c;

    .line 1129
    invoke-virtual {p1, v0}, Lb/c;->writeByte(I)Lb/c;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lb/c;J)V
    .locals 4

    .line 139
    iget-object p1, p1, Lb/c;->a:Lb/r;

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 140
    iget v0, p1, Lb/r;->c:I

    iget v1, p1, Lb/r;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 141
    iget-object v0, p0, Lb/k;->e:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lb/r;->a:[B

    iget v3, p1, Lb/r;->b:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 139
    iget-object p1, p1, Lb/r;->f:Lb/r;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Lb/k;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object v1, p0, Lb/k;->c:Lb/g;

    invoke-virtual {v1}, Lb/g;->a()V

    .line 1133
    iget-object v1, p0, Lb/k;->a:Lb/d;

    iget-object v2, p0, Lb/k;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lb/d;->writeIntLe(I)Lb/d;

    .line 1134
    iget-object v1, p0, Lb/k;->a:Lb/d;

    iget-object v2, p0, Lb/k;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lb/d;->writeIntLe(I)Lb/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 98
    :goto_0
    :try_start_1
    iget-object v1, p0, Lb/k;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 104
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lb/k;->a:Lb/d;

    invoke-interface {v1}, Lb/d;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lb/k;->d:Z

    if-eqz v0, :cond_3

    .line 110
    invoke-static {v0}, Lb/x;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final deflater()Ljava/util/zip/Deflater;
    .locals 1

    .line 118
    iget-object v0, p0, Lb/k;->b:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lb/k;->c:Lb/g;

    invoke-virtual {v0}, Lb/g;->flush()V

    return-void
.end method

.method public final timeout()Lb/w;
    .locals 1

    .line 78
    iget-object v0, p0, Lb/k;->a:Lb/d;

    invoke-interface {v0}, Lb/d;->timeout()Lb/w;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lb/c;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lb/k;->a(Lb/c;J)V

    .line 70
    iget-object v0, p0, Lb/k;->c:Lb/g;

    invoke-virtual {v0, p1, p2, p3}, Lb/g;->write(Lb/c;J)V

    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
