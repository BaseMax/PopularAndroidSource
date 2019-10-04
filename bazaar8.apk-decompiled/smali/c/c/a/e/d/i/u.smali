.class public final Lc/c/a/e/d/i/u;
.super Ljava/lang/Object;
.source "PartDownloadMerger.kt"


# instance fields
.field public final a:Lc/c/a/e/d/i/y;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/i/y;)V
    .locals 1

    const-string v0, "storageHelper"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/u;->a:Lc/c/a/e/d/i/y;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/io/File;Ljavax/crypto/Cipher;)Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/i/w;",
            ">;",
            "Ljava/io/File;",
            "Ljavax/crypto/Cipher;",
            ")",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;"
        }
    .end annotation

    const-string v0, "partDownloadModels"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainFile"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/d/i/w;

    invoke-virtual {v1}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->SUCCESS:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    return-object p1

    :cond_0
    const-wide/16 v1, 0x0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/c/a/e/d/i/w;

    .line 4
    invoke-virtual {v5}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    move-wide v1, v5

    goto :goto_0

    .line 5
    :cond_2
    iget-object v4, p0, Lc/c/a/e/d/i/u;->a:Lc/c/a/e/d/i/y;

    const/high16 v5, 0x3200000

    int-to-long v5, v5

    add-long/2addr v1, v5

    invoke-virtual {v4, p2, v1, v2}, Lc/c/a/e/d/i/y;->a(Ljava/io/File;J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    sget-object p1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->FAILED_STORAGE:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    return-object p1

    .line 7
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p3, :cond_4

    .line 8
    :try_start_1
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, v1, p3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p3, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    move-object p2, v0

    goto :goto_4

    :cond_4
    move-object p2, v0

    move-object p3, v1

    :goto_1
    const/16 v2, 0x2000

    .line 9
    :try_start_2
    new-array v2, v2, [B

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/a/e/d/i/w;

    .line 11
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 12
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    :goto_3
    if-ltz v6, :cond_5

    .line 13
    invoke-virtual {p3, v2, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 14
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 15
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    invoke-virtual {v4}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v5

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v0, v5

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    .line 18
    :try_start_5
    invoke-virtual {p2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 19
    :catch_2
    :cond_7
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 20
    :catch_3
    sget-object p1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->SUCCESS:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    return-object p1

    :catch_4
    move-exception p1

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    goto :goto_5

    :catch_5
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    .line 21
    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    sget-object p1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->FAILED:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_8

    .line 23
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_8
    if-eqz p2, :cond_9

    .line 24
    :try_start_9
    invoke-virtual {p2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_9
    if-eqz v1, :cond_a

    .line 25
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    :cond_a
    return-object p1

    :catchall_3
    move-exception p1

    :goto_5
    if-eqz v0, :cond_b

    .line 26
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_b
    if-eqz p2, :cond_c

    .line 27
    :try_start_c
    invoke-virtual {p2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_c
    if-eqz v1, :cond_d

    .line 28
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 29
    :catch_b
    :cond_d
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
