.class public final Lc/c/a/e/d/i/m;
.super Ljava/lang/Object;
.source "Downloader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lc/c/a/e/d/i/w;Lc/c/a/e/d/i/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

.field public final synthetic b:Lc/c/a/e/d/i/w;

.field public final synthetic c:Lc/c/a/e/d/i/x;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/w;Lc/c/a/e/d/i/x;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/e/d/i/m;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iput-object p2, p0, Lc/c/a/e/d/i/m;->b:Lc/c/a/e/d/i/w;

    iput-object p3, p0, Lc/c/a/e/d/i/m;->c:Lc/c/a/e/d/i/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lc/c/a/e/d/i/m;->b:Lc/c/a/e/d/i/w;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->f()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 3
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->f()Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-static {v4}, Lc/c/a/e/c/d;->b(Ljava/net/HttpURLConnection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    iget-object v4, v1, Lc/c/a/e/d/i/m;->c:Lc/c/a/e/d/i/x;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lc/c/a/e/d/i/x;->a(Ljava/lang/String;)V

    :cond_0
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 5
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    const/16 v4, 0x1a0

    if-ne v3, v4, :cond_3

    .line 7
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, v1, Lc/c/a/e/d/i/m;->b:Lc/c/a/e/d/i/w;

    invoke-virtual {v5}, Lc/c/a/e/d/i/w;->a()J

    move-result-wide v5

    iget-object v7, v1, Lc/c/a/e/d/i/m;->b:Lc/c/a/e/d/i/w;

    invoke-virtual {v7}, Lc/c/a/e/d/i/w;->e()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 8
    iget-object v3, v1, Lc/c/a/e/d/i/m;->c:Lc/c/a/e/d/i/x;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lc/c/a/e/d/i/m;->b:Lc/c/a/e/d/i/w;

    invoke-virtual {v4}, Lc/c/a/e/d/i/w;->d()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lc/c/a/e/d/i/x;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 10
    iget-object v3, v1, Lc/c/a/e/d/i/m;->c:Lc/c/a/e/d/i/x;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lc/c/a/e/d/i/x;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->f()Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->f()Ljava/net/HttpURLConnection;

    move-result-object v5

    invoke-static {v5}, Lc/c/a/e/c/d;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v5

    const/16 v7, 0xce

    const/4 v8, 0x0

    if-ne v3, v7, :cond_4

    .line 13
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v7

    const/4 v9, 0x1

    invoke-direct {v3, v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_2

    .line 14
    :cond_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_2
    move-object v2, v3

    .line 15
    new-instance v3, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-direct {v3}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;-><init>()V

    .line 16
    invoke-virtual {v3, v5, v6}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->setDownloadSize(J)V

    .line 17
    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->c()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    goto :goto_3

    :cond_5
    const-wide/16 v9, 0x0

    .line 18
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 19
    iget-object v7, v1, Lc/c/a/e/d/i/m;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v7}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;)I

    move-result v7

    new-array v7, v7, [B

    .line 20
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 21
    iget-object v14, v1, Lc/c/a/e/d/i/m;->c:Lc/c/a/e/d/i/x;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->d()I

    move-result v8

    invoke-interface {v14, v15, v8}, Lc/c/a/e/d/i/x;->b(Ljava/lang/String;I)V

    move-wide/from16 v23, v11

    const/4 v14, 0x0

    move-wide v11, v9

    :goto_4
    const/4 v15, -0x1

    if-eq v13, v15, :cond_7

    .line 22
    iget-object v15, v1, Lc/c/a/e/d/i/m;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v15}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->e(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    move-object v15, v7

    int-to-long v7, v13

    add-long/2addr v11, v7

    move-object/from16 v27, v15

    int-to-float v15, v13

    add-float/2addr v14, v15

    add-long v16, v5, v9

    .line 24
    iget-object v15, v1, Lc/c/a/e/d/i/m;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    move-wide/from16 v28, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v15, v11, v12, v5}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;JLjava/lang/Long;)I

    move-result v5

    .line 25
    invoke-virtual {v3, v5}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->setProgress(I)V

    .line 26
    iget-object v5, v1, Lc/c/a/e/d/i/m;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    const-wide/16 v21, 0x3e8

    move-object/from16 v16, v5

    move-wide/from16 v17, v23

    move-wide/from16 v19, v25

    invoke-static/range {v16 .. v22}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;JJJ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 27
    invoke-virtual {v3, v11, v12}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->setDownloadedSize(J)V

    .line 28
    invoke-virtual {v3, v14}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->setDownloadSpeed(F)V

    move-wide/from16 v23, v25

    const/4 v14, 0x0

    .line 29
    :cond_6
    iget-object v5, v1, Lc/c/a/e/d/i/m;->c:Lc/c/a/e/d/i/x;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->d()I

    move-result v15

    invoke-interface {v5, v6, v15, v3}, Lc/c/a/e/d/i/x;->a(Ljava/lang/String;ILcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    .line 30
    iget-object v5, v1, Lc/c/a/e/d/i/m;->c:Lc/c/a/e/d/i/x;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->d()I

    move-result v15

    invoke-interface {v5, v6, v15, v7, v8}, Lc/c/a/e/d/i/x;->a(Ljava/lang/String;IJ)V

    move-object/from16 v5, v27

    const/4 v6, 0x0

    .line 31
    invoke-virtual {v2, v5, v6, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 32
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move-object v7, v5

    move-wide/from16 v5, v28

    goto :goto_4

    .line 33
    :cond_7
    iget-object v3, v1, Lc/c/a/e/d/i/m;->c:Lc/c/a/e/d/i/x;

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lc/c/a/e/d/i/w;->d()I

    move-result v0

    invoke-interface {v3, v5, v0}, Lc/c/a/e/d/i/x;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    if-eqz v4, :cond_b

    .line 35
    :goto_5
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v4, v2

    :goto_6
    if-eqz v2, :cond_8

    .line 36
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_8
    if-eqz v4, :cond_9

    .line 37
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 38
    :catch_2
    :cond_9
    throw v0

    :catch_3
    move-object v4, v2

    :catch_4
    if-eqz v2, :cond_a

    .line 39
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_a
    if-eqz v4, :cond_b

    goto :goto_5

    :catch_6
    :cond_b
    :goto_7
    return-void
.end method
