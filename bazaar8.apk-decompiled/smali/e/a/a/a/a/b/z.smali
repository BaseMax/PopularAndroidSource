.class public Le/a/a/a/a/b/z;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a/a/b/z$c;,
        Le/a/a/a/a/b/z$a;,
        Le/a/a/a/a/b/z$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;


# instance fields
.field public final b:Ljava/io/RandomAccessFile;

.field public c:I

.field public d:I

.field public e:Le/a/a/a/a/b/z$a;

.field public f:Le/a/a/a/a/b/z$a;

.field public final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/a/a/a/a/b/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/a/a/a/a/b/z;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Le/a/a/a/a/b/z;->g:[B

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Le/a/a/a/a/b/z;->a(Ljava/io/File;)V

    .line 5
    :cond_0
    invoke-static {p1}, Le/a/a/a/a/b/z;->b(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    .line 6
    invoke-virtual {p0}, Le/a/a/a/a/b/z;->u()V

    return-void
.end method

.method public static synthetic a(Le/a/a/a/a/b/z;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/a/a/b/z;->e(I)I

    move-result p0

    return p0
.end method

.method public static a([BI)I
    .locals 2

    .line 7
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static synthetic a(Le/a/a/a/a/b/z;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 4
    iget-object p0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Le/a/a/a/a/b/z;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic a(Le/a/a/a/a/b/z;I[BII)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/a/a/a/b/z;->a(I[BII)V

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 6

    .line 11
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Le/a/a/a/a/b/z;->b(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v2, 0x1000

    .line 13
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v2, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x10

    .line 15
    new-array v2, v2, [B

    const/4 v3, 0x4

    .line 16
    new-array v3, v3, [I

    const/16 v4, 0x1000

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    invoke-static {v2, v3}, Le/a/a/a/a/b/z;->a([B[I)V

    .line 17
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 19
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Rename failed!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 22
    throw p0
.end method

.method public static varargs a([B[I)V
    .locals 4

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    .line 6
    invoke-static {p0, v2, v3}, Le/a/a/a/a/b/z;->b([BII)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2

    .line 5
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 1
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 4
    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 3

    .line 8
    iget-object v0, p0, Le/a/a/a/a/b/z;->g:[B

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    invoke-static {v0, v1}, Le/a/a/a/a/b/z;->a([B[I)V

    .line 9
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Le/a/a/a/a/b/z;->g:[B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public final a(I[BII)V
    .locals 4

    .line 23
    invoke-virtual {p0, p1}, Le/a/a/a/a/b/z;->e(I)I

    move-result p1

    add-int v0, p1, p4

    .line 24
    iget v1, p0, Le/a/a/a/a/b/z;->c:I

    if-gt v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    .line 27
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 28
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 29
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Le/a/a/a/a/b/z$c;)V
    .locals 4

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    iget v0, v0, Le/a/a/a/a/b/z$a;->b:I

    const/4 v1, 0x0

    .line 49
    :goto_0
    iget v2, p0, Le/a/a/a/a/b/z;->d:I

    if-ge v1, v2, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Le/a/a/a/a/b/z;->c(I)Le/a/a/a/a/b/z$a;

    move-result-object v0

    .line 51
    new-instance v2, Le/a/a/a/a/b/z$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Le/a/a/a/a/b/z$b;-><init>(Le/a/a/a/a/b/z;Le/a/a/a/a/b/z$a;Le/a/a/a/a/b/y;)V

    iget v3, v0, Le/a/a/a/a/b/z$a;->c:I

    invoke-interface {p1, v2, v3}, Le/a/a/a/a/b/z$c;->read(Ljava/io/InputStream;I)V

    .line 52
    iget v2, v0, Le/a/a/a/a/b/z$a;->b:I

    add-int/lit8 v2, v2, 0x4

    iget v0, v0, Le/a/a/a/a/b/z$a;->c:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Le/a/a/a/a/b/z;->e(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a([B)V
    .locals 2

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/a/a/a/a/b/z;->a([BII)V

    return-void
.end method

.method public declared-synchronized a([BII)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "buffer"

    .line 32
    invoke-static {p1, v0}, Le/a/a/a/a/b/z;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 33
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    .line 34
    invoke-virtual {p0, p3}, Le/a/a/a/a/b/z;->b(I)V

    .line 35
    invoke-virtual {p0}, Le/a/a/a/a/b/z;->t()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    iget v2, v2, Le/a/a/a/a/b/z$a;->b:I

    add-int/2addr v2, v1

    iget-object v3, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    iget v3, v3, Le/a/a/a/a/b/z$a;->c:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Le/a/a/a/a/b/z;->e(I)I

    move-result v2

    .line 37
    :goto_0
    new-instance v3, Le/a/a/a/a/b/z$a;

    invoke-direct {v3, v2, p3}, Le/a/a/a/a/b/z$a;-><init>(II)V

    .line 38
    iget-object v2, p0, Le/a/a/a/a/b/z;->g:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, p3}, Le/a/a/a/a/b/z;->b([BII)V

    .line 39
    iget v2, v3, Le/a/a/a/a/b/z$a;->b:I

    iget-object v5, p0, Le/a/a/a/a/b/z;->g:[B

    invoke-virtual {p0, v2, v5, v4, v1}, Le/a/a/a/a/b/z;->b(I[BII)V

    .line 40
    iget v2, v3, Le/a/a/a/a/b/z$a;->b:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, p1, p2, p3}, Le/a/a/a/a/b/z;->b(I[BII)V

    if-eqz v0, :cond_1

    .line 41
    iget p1, v3, Le/a/a/a/a/b/z$a;->b:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    iget p1, p1, Le/a/a/a/a/b/z$a;->b:I

    .line 42
    :goto_1
    iget p2, p0, Le/a/a/a/a/b/z;->c:I

    iget p3, p0, Le/a/a/a/a/b/z;->d:I

    add-int/lit8 p3, p3, 0x1

    iget v1, v3, Le/a/a/a/a/b/z$a;->b:I

    invoke-virtual {p0, p2, p3, p1, v1}, Le/a/a/a/a/b/z;->a(IIII)V

    .line 43
    iput-object v3, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    .line 44
    iget p1, p0, Le/a/a/a/a/b/z;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/a/a/a/a/b/z;->d:I

    if-eqz v0, :cond_2

    .line 45
    iget-object p1, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    iput-object p1, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_2
    monitor-exit p0

    return-void

    .line 47
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(II)Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Le/a/a/a/a/b/z;->x()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    if-gt v0, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(I)V
    .locals 10

    add-int/lit8 p1, p1, 0x4

    .line 14
    invoke-virtual {p0}, Le/a/a/a/a/b/z;->v()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget v1, p0, Le/a/a/a/a/b/z;->c:I

    :cond_1
    add-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x1

    if-lt v0, p1, :cond_1

    .line 16
    invoke-virtual {p0, v1}, Le/a/a/a/a/b/z;->d(I)V

    .line 17
    iget-object p1, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    iget v0, p1, Le/a/a/a/a/b/z$a;->b:I

    add-int/lit8 v0, v0, 0x4

    iget p1, p1, Le/a/a/a/a/b/z$a;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Le/a/a/a/a/b/z;->e(I)I

    move-result p1

    .line 18
    iget-object v0, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    iget v0, v0, Le/a/a/a/a/b/z$a;->b:I

    if-ge p1, v0, :cond_3

    .line 19
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 20
    iget v0, p0, Le/a/a/a/a/b/z;->c:I

    int-to-long v2, v0

    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 p1, p1, -0x4

    const-wide/16 v3, 0x10

    int-to-long v8, p1

    move-object v2, v7

    move-wide v5, v8

    .line 21
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-nez p1, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Copied insufficient number of bytes!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 23
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    iget p1, p1, Le/a/a/a/a/b/z$a;->b:I

    iget-object v0, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    iget v0, v0, Le/a/a/a/a/b/z$a;->b:I

    if-ge p1, v0, :cond_4

    .line 24
    iget v2, p0, Le/a/a/a/a/b/z;->c:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x10

    .line 25
    iget p1, p0, Le/a/a/a/a/b/z;->d:I

    invoke-virtual {p0, v1, p1, v0, v2}, Le/a/a/a/a/b/z;->a(IIII)V

    .line 26
    new-instance p1, Le/a/a/a/a/b/z$a;

    iget-object v0, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    iget v0, v0, Le/a/a/a/a/b/z$a;->c:I

    invoke-direct {p1, v2, v0}, Le/a/a/a/a/b/z$a;-><init>(II)V

    iput-object p1, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    goto :goto_1

    .line 27
    :cond_4
    iget v2, p0, Le/a/a/a/a/b/z;->d:I

    invoke-virtual {p0, v1, v2, v0, p1}, Le/a/a/a/a/b/z;->a(IIII)V

    .line 28
    :goto_1
    iput v1, p0, Le/a/a/a/a/b/z;->c:I

    return-void
.end method

.method public final b(I[BII)V
    .locals 4

    .line 6
    invoke-virtual {p0, p1}, Le/a/a/a/a/b/z;->e(I)I

    move-result p1

    add-int v0, p1, p4

    .line 7
    iget v1, p0, Le/a/a/a/a/b/z;->c:I

    if-gt v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    .line 10
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 11
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 12
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 13
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_0
    return-void
.end method

.method public final c(I)Le/a/a/a/a/b/z$a;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/a/a/a/a/b/z$a;->a:Le/a/a/a/a/b/z$a;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    new-instance v0, Le/a/a/a/a/b/z$a;

    iget-object v1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-direct {v0, p1, v1}, Le/a/a/a/a/b/z$a;-><init>(II)V

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 2
    iget-object p1, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/a/a/b/z;->c:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public declared-synchronized s()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x1000

    .line 1
    :try_start_0
    invoke-virtual {p0, v1, v0, v0, v0}, Le/a/a/a/a/b/z;->a(IIII)V

    .line 2
    iput v0, p0, Le/a/a/a/a/b/z;->d:I

    .line 3
    sget-object v0, Le/a/a/a/a/b/z$a;->a:Le/a/a/a/a/b/z$a;

    iput-object v0, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    .line 4
    sget-object v0, Le/a/a/a/a/b/z$a;->a:Le/a/a/a/a/b/z$a;

    iput-object v0, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    .line 5
    iget v0, p0, Le/a/a/a/a/b/z;->c:I

    if-le v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Le/a/a/a/a/b/z;->d(I)V

    .line 7
    :cond_0
    iput v1, p0, Le/a/a/a/a/b/z;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Le/a/a/a/a/b/z;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-class v1, Le/a/a/a/a/b/z;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "fileLength="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/a/a/a/b/z;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/a/a/a/b/z;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", element lengths=["

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :try_start_0
    new-instance v1, Le/a/a/a/a/b/y;

    invoke-direct {v1, p0, v0}, Le/a/a/a/a/b/y;-><init>(Le/a/a/a/a/b/z;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Le/a/a/a/a/b/z;->a(Le/a/a/a/a/b/z$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    sget-object v2, Le/a/a/a/a/b/z;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "]]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    iget-object v0, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Le/a/a/a/a/b/z;->g:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 3
    iget-object v0, p0, Le/a/a/a/a/b/z;->g:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/a/a/a/a/b/z;->a([BI)I

    move-result v0

    iput v0, p0, Le/a/a/a/a/b/z;->c:I

    .line 4
    iget v0, p0, Le/a/a/a/a/b/z;->c:I

    int-to-long v0, v0

    iget-object v2, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 5
    iget-object v0, p0, Le/a/a/a/a/b/z;->g:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Le/a/a/a/a/b/z;->a([BI)I

    move-result v0

    iput v0, p0, Le/a/a/a/a/b/z;->d:I

    .line 6
    iget-object v0, p0, Le/a/a/a/a/b/z;->g:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Le/a/a/a/a/b/z;->a([BI)I

    move-result v0

    .line 7
    iget-object v1, p0, Le/a/a/a/a/b/z;->g:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Le/a/a/a/a/b/z;->a([BI)I

    move-result v1

    .line 8
    invoke-virtual {p0, v0}, Le/a/a/a/a/b/z;->c(I)Le/a/a/a/a/b/z$a;

    move-result-object v0

    iput-object v0, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    .line 9
    invoke-virtual {p0, v1}, Le/a/a/a/a/b/z;->c(I)Le/a/a/a/a/b/z$a;

    move-result-object v0

    iput-object v0, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is truncated. Expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/a/a/a/b/z;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/a/a/a/b/z;->b:Ljava/io/RandomAccessFile;

    .line 11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/a/a/b/z;->c:I

    invoke-virtual {p0}, Le/a/a/a/a/b/z;->x()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized w()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/a/a/a/b/z;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Le/a/a/a/a/b/z;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/a/a/a/b/z;->s()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    iget v0, v0, Le/a/a/a/a/b/z$a;->b:I

    const/4 v2, 0x4

    add-int/2addr v0, v2

    iget-object v3, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    iget v3, v3, Le/a/a/a/a/b/z$a;->c:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Le/a/a/a/a/b/z;->e(I)I

    move-result v0

    .line 5
    iget-object v3, p0, Le/a/a/a/a/b/z;->g:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4, v2}, Le/a/a/a/a/b/z;->a(I[BII)V

    .line 6
    iget-object v2, p0, Le/a/a/a/a/b/z;->g:[B

    invoke-static {v2, v4}, Le/a/a/a/a/b/z;->a([BI)I

    move-result v2

    .line 7
    iget v3, p0, Le/a/a/a/a/b/z;->c:I

    iget v4, p0, Le/a/a/a/a/b/z;->d:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    iget v5, v5, Le/a/a/a/a/b/z$a;->b:I

    invoke-virtual {p0, v3, v4, v0, v5}, Le/a/a/a/a/b/z;->a(IIII)V

    .line 8
    iget v3, p0, Le/a/a/a/a/b/z;->d:I

    sub-int/2addr v3, v1

    iput v3, p0, Le/a/a/a/a/b/z;->d:I

    .line 9
    new-instance v1, Le/a/a/a/a/b/z$a;

    invoke-direct {v1, v0, v2}, Le/a/a/a/a/b/z$a;-><init>(II)V

    iput-object v1, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()I
    .locals 4

    .line 1
    iget v0, p0, Le/a/a/a/a/b/z;->d:I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/a/a/b/z;->f:Le/a/a/a/a/b/z$a;

    iget v2, v0, Le/a/a/a/a/b/z$a;->b:I

    iget-object v3, p0, Le/a/a/a/a/b/z;->e:Le/a/a/a/a/b/z$a;

    iget v3, v3, Le/a/a/a/a/b/z$a;->b:I

    if-lt v2, v3, :cond_1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    .line 3
    iget v0, v0, Le/a/a/a/a/b/z$a;->c:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x4

    .line 4
    iget v0, v0, Le/a/a/a/a/b/z$a;->c:I

    add-int/2addr v2, v0

    iget v0, p0, Le/a/a/a/a/b/z;->c:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    return v2
.end method
