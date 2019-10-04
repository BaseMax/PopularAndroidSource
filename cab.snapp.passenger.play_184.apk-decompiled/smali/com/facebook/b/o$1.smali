.class final Lcom/facebook/b/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/b/o;->a(Lcom/facebook/b/g;I[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:[B

.field final synthetic c:Lcom/facebook/b/o$b;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcom/facebook/b/g;

.field final synthetic f:Lcom/facebook/b/o;


# direct methods
.method constructor <init>(Lcom/facebook/b/o;Ljava/io/File;[BLcom/facebook/b/o$b;Ljava/io/File;Lcom/facebook/b/g;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/facebook/b/o$1;->f:Lcom/facebook/b/o;

    iput-object p2, p0, Lcom/facebook/b/o$1;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/facebook/b/o$1;->b:[B

    iput-object p4, p0, Lcom/facebook/b/o$1;->c:Lcom/facebook/b/o$b;

    iput-object p5, p0, Lcom/facebook/b/o$1;->d:Ljava/io/File;

    iput-object p6, p0, Lcom/facebook/b/o$1;->e:Lcom/facebook/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, " (from syncer thread)"

    const-string v1, "releasing dso store lock for "

    const-string v2, "rw"

    .line 352
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/facebook/b/o$1;->a:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 353
    :try_start_1
    iget-object v4, p0, Lcom/facebook/b/o$1;->b:[B

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 354
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 355
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 357
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/b/o$1;->f:Lcom/facebook/b/o;

    iget-object v4, v4, Lcom/facebook/b/o;->b:Ljava/io/File;

    const-string v5, "dso_manifest"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 359
    :try_start_3
    iget-object v2, p0, Lcom/facebook/b/o$1;->c:Lcom/facebook/b/o$b;

    invoke-virtual {v2, v4}, Lcom/facebook/b/o$b;->write(Ljava/io/DataOutput;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 362
    iget-object v2, p0, Lcom/facebook/b/o$1;->f:Lcom/facebook/b/o;

    iget-object v2, v2, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/b/m;->a(Ljava/io/File;)V

    .line 363
    iget-object v2, p0, Lcom/facebook/b/o$1;->d:Ljava/io/File;

    const/4 v3, 0x1

    .line 1039
    invoke-static {v2, v3}, Lcom/facebook/b/o;->a(Ljava/io/File;B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 365
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/b/o$1;->f:Lcom/facebook/b/o;

    iget-object v1, v1, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v0, p0, Lcom/facebook/b/o$1;->e:Lcom/facebook/b/g;

    invoke-virtual {v0}, Lcom/facebook/b/g;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catchall_0
    move-exception v2

    .line 358
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    .line 360
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_3
    move-exception v2

    .line 352
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v2

    .line 355
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v2

    .line 365
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/b/o$1;->f:Lcom/facebook/b/o;

    iget-object v1, v1, Lcom/facebook/b/o;->b:Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v0, p0, Lcom/facebook/b/o$1;->e:Lcom/facebook/b/g;

    invoke-virtual {v0}, Lcom/facebook/b/g;->close()V

    .line 367
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
