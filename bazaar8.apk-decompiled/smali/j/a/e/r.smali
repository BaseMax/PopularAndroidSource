.class public final Lj/a/e/r;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# instance fields
.field public final b:Lk/h;

.field public final c:Z

.field public final d:Lk/g;

.field public e:I

.field public f:Z

.field public final g:Lj/a/e/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lj/a/e/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lj/a/e/r;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lk/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/a/e/r;->b:Lk/h;

    .line 3
    iput-boolean p2, p0, Lj/a/e/r;->c:Z

    .line 4
    new-instance p1, Lk/g;

    invoke-direct {p1}, Lk/g;-><init>()V

    iput-object p1, p0, Lj/a/e/r;->d:Lk/g;

    .line 5
    new-instance p1, Lj/a/e/b$b;

    iget-object p2, p0, Lj/a/e/r;->d:Lk/g;

    invoke-direct {p1, p2}, Lj/a/e/b$b;-><init>(Lk/g;)V

    iput-object p1, p0, Lj/a/e/r;->g:Lj/a/e/b$b;

    const/16 p1, 0x4000

    .line 6
    iput p1, p0, Lj/a/e/r;->e:I

    return-void
.end method

.method public static a(Lk/h;I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 64
    invoke-interface {p0, v0}, Lk/h;->writeByte(I)Lk/h;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 65
    invoke-interface {p0, v0}, Lk/h;->writeByte(I)Lk/h;

    and-int/lit16 p1, p1, 0xff

    .line 66
    invoke-interface {p0, p1}, Lk/h;->writeByte(I)Lk/h;

    return-void
.end method


# virtual methods
.method public a(IBLk/g;I)V
    .locals 2

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, p4, v0, p2}, Lj/a/e/r;->a(IIBB)V

    if-lez p4, :cond_0

    .line 36
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lk/y;->a(Lk/g;J)V

    :cond_0
    return-void
.end method

.method public a(IIBB)V
    .locals 4

    .line 56
    sget-object v0, Lj/a/e/r;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lj/a/e/r;->a:Ljava/util/logging/Logger;

    invoke-static {v1, p1, p2, p3, p4}, Lj/a/e/c;->a(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 57
    :cond_0
    iget v0, p0, Lj/a/e/r;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lj/a/e/r;->b:Lk/h;

    invoke-static {v0, p2}, Lj/a/e/r;->a(Lk/h;I)V

    .line 59
    iget-object p2, p0, Lj/a/e/r;->b:Lk/h;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lk/h;->writeByte(I)Lk/h;

    .line 60
    iget-object p2, p0, Lj/a/e/r;->b:Lk/h;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lk/h;->writeByte(I)Lk/h;

    .line 61
    iget-object p2, p0, Lj/a/e/r;->b:Lk/h;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lk/h;->writeInt(I)Lk/h;

    return-void

    .line 62
    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lj/a/e/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v2

    :cond_2
    const/4 p1, 0x2

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lj/a/e/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v2
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lj/a/e/r;->g:Lj/a/e/b$b;

    invoke-virtual {v0, p3}, Lj/a/e/b$b;->a(Ljava/util/List;)V

    .line 11
    iget-object p3, p0, Lj/a/e/r;->d:Lk/g;

    invoke-virtual {p3}, Lk/g;->size()J

    move-result-wide v0

    .line 12
    iget p3, p0, Lj/a/e/r;->e:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    const/4 v3, 0x5

    int-to-long v4, p3

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    add-int/2addr p3, v2

    .line 13
    invoke-virtual {p0, p1, p3, v3, v6}, Lj/a/e/r;->a(IIBB)V

    .line 14
    iget-object p3, p0, Lj/a/e/r;->b:Lk/h;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Lk/h;->writeInt(I)Lk/h;

    .line 15
    iget-object p2, p0, Lj/a/e/r;->b:Lk/h;

    iget-object p3, p0, Lj/a/e/r;->d:Lk/g;

    invoke-interface {p2, p3, v4, v5}, Lk/y;->a(Lk/g;J)V

    cmp-long p2, v0, v4

    if-lez p2, :cond_1

    sub-long/2addr v0, v4

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lj/a/e/r;->c(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    monitor-exit p0

    return-void

    .line 18
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 3

    monitor-enter p0

    .line 23
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_1

    .line 24
    iget v0, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0, p1, v0, v1, v2}, Lj/a/e/r;->a(IIBB)V

    .line 26
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    iget p2, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {p1, p2}, Lk/h;->writeInt(I)Lk/h;

    .line 27
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1}, Lk/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILokhttp3/internal/http2/ErrorCode;[B)V
    .locals 3

    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_2

    .line 45
    iget v0, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 46
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 47
    invoke-virtual {p0, v2, v0, v1, v2}, Lj/a/e/r;->a(IIBB)V

    .line 48
    iget-object v0, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {v0, p1}, Lk/h;->writeInt(I)Lk/h;

    .line 49
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    iget p2, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {p1, p2}, Lk/h;->writeInt(I)Lk/h;

    .line 50
    array-length p1, p3

    if-lez p1, :cond_0

    .line 51
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1, p3}, Lk/h;->write([B)Lk/h;

    .line 52
    :cond_0
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1}, Lk/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    .line 54
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lj/a/e/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 55
    :cond_2
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lj/a/e/v;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lj/a/e/r;->e:I

    invoke-virtual {p1, v0}, Lj/a/e/v;->c(I)I

    move-result v0

    iput v0, p0, Lj/a/e/r;->e:I

    .line 3
    invoke-virtual {p1}, Lj/a/e/v;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lj/a/e/r;->g:Lj/a/e/b$b;

    invoke-virtual {p1}, Lj/a/e/v;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lj/a/e/b$b;->b(I)V

    :cond_0
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v1, p1, v0}, Lj/a/e/r;->a(IIBB)V

    .line 6
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1}, Lk/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZII)V
    .locals 3

    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lj/a/e/r;->a(IIBB)V

    .line 39
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1, p2}, Lk/h;->writeInt(I)Lk/h;

    .line 40
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1, p3}, Lk/h;->writeInt(I)Lk/h;

    .line 41
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1}, Lk/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 19
    :try_start_0
    iget-boolean p3, p0, Lj/a/e/r;->f:Z

    if-nez p3, :cond_0

    .line 20
    invoke-virtual {p0, p1, p2, p4}, Lj/a/e/r;->a(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ZILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lj/a/e/r;->g:Lj/a/e/b$b;

    invoke-virtual {v0, p3}, Lj/a/e/b$b;->a(Ljava/util/List;)V

    .line 69
    iget-object p3, p0, Lj/a/e/r;->d:Lk/g;

    invoke-virtual {p3}, Lk/g;->size()J

    move-result-wide v0

    .line 70
    iget p3, p0, Lj/a/e/r;->e:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v4, 0x1

    int-to-byte v4, p1

    :cond_1
    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p2, p3, p1, v4}, Lj/a/e/r;->a(IIBB)V

    .line 72
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    iget-object p3, p0, Lj/a/e/r;->d:Lk/g;

    invoke-interface {p1, p3, v2, v3}, Lk/y;->a(Lk/g;J)V

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    sub-long/2addr v0, v2

    .line 73
    invoke-virtual {p0, p2, v0, v1}, Lj/a/e/r;->c(IJ)V

    :cond_2
    return-void

    .line 74
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a(ZILk/g;I)V
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    int-to-byte v0, p1

    .line 32
    :cond_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lj/a/e/r;->a(IBLk/g;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(IJ)V
    .locals 4

    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 11
    invoke-virtual {p0, p1, v0, v1, v2}, Lj/a/e/r;->a(IIBB)V

    .line 12
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lk/h;->writeInt(I)Lk/h;

    .line 13
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1}, Lk/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    .line 17
    invoke-static {p1, v0}, Lj/a/e/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 18
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lj/a/e/v;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lj/a/e/v;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p0, v1, v0, v2, v1}, Lj/a/e/r;->a(IIBB)V

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    .line 4
    invoke-virtual {p1, v1}, Lj/a/e/v;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne v1, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    if-ne v1, v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 5
    :goto_1
    iget-object v3, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {v3, v0}, Lk/h;->writeShort(I)Lk/h;

    .line 6
    iget-object v0, p0, Lj/a/e/r;->b:Lk/h;

    invoke-virtual {p1, v1}, Lj/a/e/v;->a(I)I

    move-result v3

    invoke-interface {v0, v3}, Lk/h;->writeInt(I)Lk/h;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {p1}, Lk/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final c(IJ)V
    .locals 7

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1
    iget v2, p0, Lj/a/e/r;->e:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr p2, v4

    const/16 v2, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0, p1, v3, v2, v0}, Lj/a/e/r;->a(IIBB)V

    .line 3
    iget-object v0, p0, Lj/a/e/r;->b:Lk/h;

    iget-object v1, p0, Lj/a/e/r;->d:Lk/g;

    invoke-interface {v0, v1, v4, v5}, Lk/y;->a(Lk/g;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lj/a/e/r;->f:Z

    .line 2
    iget-object v0, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {v0}, Lk/y;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {v0}, Lk/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/r;->f:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lj/a/e/r;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lj/a/e/r;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lj/a/e/r;->a:Ljava/util/logging/Logger;

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lj/a/e/c;->a:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lj/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lj/a/e/r;->b:Lk/h;

    sget-object v1, Lj/a/e/c;->a:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->m()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lk/h;->write([B)Lk/h;

    .line 6
    iget-object v0, p0, Lj/a/e/r;->b:Lk/h;

    invoke-interface {v0}, Lk/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lj/a/e/r;->e:I

    return v0
.end method
