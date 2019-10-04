.class public final Lc/c/a/e/d/i/n;
.super Ljava/lang/Object;
.source "Downloader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/math/BigInteger;Ljava/math/BigInteger;Li/a/b/x;Li/a/b/x;Lh/f/a/b;ILjavax/crypto/Cipher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/math/BigInteger;

.field public final synthetic e:Li/a/b/x;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/math/BigInteger;

.field public final synthetic h:Li/a/b/x;

.field public final synthetic i:Lh/f/a/b;

.field public final synthetic j:I

.field public final synthetic k:Ljavax/crypto/Cipher;

.field public final synthetic l:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;

.field public final synthetic m:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;Ljava/io/File;Ljava/math/BigInteger;Li/a/b/x;Ljava/lang/String;Ljava/math/BigInteger;Li/a/b/x;Lh/f/a/b;ILjavax/crypto/Cipher;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iput-object p2, p0, Lc/c/a/e/d/i/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    iput-object p4, p0, Lc/c/a/e/d/i/n;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Lc/c/a/e/d/i/n;->e:Li/a/b/x;

    iput-object p6, p0, Lc/c/a/e/d/i/n;->f:Ljava/lang/String;

    iput-object p7, p0, Lc/c/a/e/d/i/n;->g:Ljava/math/BigInteger;

    iput-object p8, p0, Lc/c/a/e/d/i/n;->h:Li/a/b/x;

    iput-object p9, p0, Lc/c/a/e/d/i/n;->i:Lh/f/a/b;

    iput p10, p0, Lc/c/a/e/d/i/n;->j:I

    iput-object p11, p0, Lc/c/a/e/d/i/n;->k:Ljavax/crypto/Cipher;

    iput-object p12, p0, Lc/c/a/e/d/i/n;->l:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;

    iput-object p13, p0, Lc/c/a/e/d/i/n;->m:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v5, v1, Lc/c/a/e/d/i/n;->b:Ljava/lang/String;

    iget-object v6, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;Ljava/io/File;JLjava/lang/Long;ILjava/lang/Object;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_0

    .line 3
    iget-object v5, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v5, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_0
    const/16 v5, 0x1a0

    if-ne v0, v5, :cond_4

    .line 5
    iget-object v0, v1, Lc/c/a/e/d/i/n;->d:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->c(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lc/c/a/e/d/i/q;

    move-result-object v0

    iget-object v4, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    invoke-virtual {v0, v4}, Lc/c/a/e/d/i/q;->a(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, v1, Lc/c/a/e/d/i/n;->d:Ljava/math/BigInteger;

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v4, v1, Lc/c/a/e/d/i/n;->e:Li/a/b/x;

    sget-object v5, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-static {v0, v4, v5}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    iget-object v4, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    .line 9
    iget-object v5, v1, Lc/c/a/e/d/i/n;->f:Ljava/lang/String;

    .line 10
    iget-object v6, v1, Lc/c/a/e/d/i/n;->b:Ljava/lang/String;

    .line 11
    iget-object v7, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    .line 12
    iget-object v8, v1, Lc/c/a/e/d/i/n;->d:Ljava/math/BigInteger;

    .line 13
    iget-object v9, v1, Lc/c/a/e/d/i/n;->g:Ljava/math/BigInteger;

    .line 14
    iget-object v10, v1, Lc/c/a/e/d/i/n;->h:Li/a/b/x;

    .line 15
    iget-object v11, v1, Lc/c/a/e/d/i/n;->e:Li/a/b/x;

    .line 16
    iget-object v12, v1, Lc/c/a/e/d/i/n;->i:Lh/f/a/b;

    .line 17
    iget v13, v1, Lc/c/a/e/d/i/n;->j:I

    .line 18
    iget-object v14, v1, Lc/c/a/e/d/i/n;->k:Ljavax/crypto/Cipher;

    .line 19
    invoke-virtual/range {v4 .. v14}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/math/BigInteger;Ljava/math/BigInteger;Li/a/b/x;Li/a/b/x;Lh/f/a/b;ILjavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    iget v0, v1, Lc/c/a/e/d/i/n;->j:I

    if-le v0, v2, :cond_3

    if-eqz v3, :cond_2

    .line 21
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    if-eqz v3, :cond_3

    .line 22
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-void

    :cond_4
    :goto_1
    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    const/16 v4, 0xce

    if-eq v0, v4, :cond_5

    .line 23
    :try_start_3
    iget-object v0, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v4, v1, Lc/c/a/e/d/i/n;->e:Li/a/b/x;

    sget-object v6, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->LINK_IS_NOT_VALID:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-static {v0, v4, v6}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V

    goto/16 :goto_4

    .line 24
    :cond_5
    invoke-static {v3}, Lc/c/a/e/c/d;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v6

    .line 25
    iget-object v0, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->f(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lc/c/a/e/d/i/y;

    move-result-object v0

    iget-object v4, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    invoke-virtual {v0, v4, v6, v7}, Lc/c/a/e/d/i/y;->a(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    iget-object v0, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v4, v1, Lc/c/a/e/d/i/n;->e:Li/a/b/x;

    sget-object v6, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-static {v0, v4, v6}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    iget v0, v1, Lc/c/a/e/d/i/n;->j:I

    if-le v0, v2, :cond_7

    if-eqz v3, :cond_6

    .line 28
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    if-eqz v3, :cond_7

    .line 29
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_7
    return-void

    .line 30
    :cond_8
    :try_start_6
    iget-object v0, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->f(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lc/c/a/e/d/i/y;

    move-result-object v0

    iget-object v4, v1, Lc/c/a/e/d/i/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v7}, Lc/c/a/e/d/i/y;->b(Ljava/lang/String;J)V

    .line 31
    iget v0, v1, Lc/c/a/e/d/i/n;->j:I

    if-le v0, v2, :cond_9

    .line 32
    iget-object v12, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget v14, v1, Lc/c/a/e/d/i/n;->j:I

    iget-object v15, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    iget-object v0, v1, Lc/c/a/e/d/i/n;->b:Ljava/lang/String;

    iget-object v4, v1, Lc/c/a/e/d/i/n;->f:Ljava/lang/String;

    move-object v13, v3

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    invoke-static/range {v12 .. v17}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/net/HttpURLConnection;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 33
    :cond_9
    new-instance v0, Lc/c/a/e/d/i/w;

    .line 34
    iget-object v13, v1, Lc/c/a/e/d/i/n;->f:Ljava/lang/String;

    const/4 v15, 0x0

    .line 35
    iget-object v4, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    const-wide/16 v17, 0x0

    move-object v12, v0

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v19, v6

    .line 36
    invoke-direct/range {v12 .. v20}, Lc/c/a/e/d/i/w;-><init>(Ljava/lang/String;Ljava/net/HttpURLConnection;ILjava/io/File;JJ)V

    .line 37
    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    :goto_2
    iget-object v4, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v4}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->e(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Ljava/util/HashSet;

    move-result-object v4

    iget-object v6, v1, Lc/c/a/e/d/i/n;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v4, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v4}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->d(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v12, v1, Lc/c/a/e/d/i/n;->f:Ljava/lang/String;

    new-instance v13, Lc/c/a/e/d/i/t;

    .line 40
    iget-object v8, v1, Lc/c/a/e/d/i/n;->h:Li/a/b/x;

    .line 41
    iget-object v9, v1, Lc/c/a/e/d/i/n;->e:Li/a/b/x;

    .line 42
    new-instance v10, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$1;

    invoke-direct {v10, v1}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$1;-><init>(Lc/c/a/e/d/i/n;)V

    .line 43
    new-instance v11, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$2;

    invoke-direct {v11, v1}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$2;-><init>(Lc/c/a/e/d/i/n;)V

    move-object v6, v13

    move-object v7, v0

    .line 44
    invoke-direct/range {v6 .. v11}, Lc/c/a/e/d/i/t;-><init>(Ljava/util/List;Li/a/b/x;Li/a/b/x;Lh/f/a/a;Lh/f/a/b;)V

    .line 45
    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/a/e/d/i/w;

    .line 47
    iget-object v6, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v7, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v6, v4, v7}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/w;Lc/c/a/e/d/i/x;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 48
    :cond_a
    :goto_4
    iget v0, v1, Lc/c/a/e/d/i/n;->j:I

    if-le v0, v2, :cond_e

    if-eqz v3, :cond_b

    .line 49
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_b
    if-eqz v3, :cond_e

    .line 50
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_e

    :goto_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_5
    const/4 v5, 0x1

    .line 51
    :catch_6
    :try_start_9
    iget-object v0, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v4, v1, Lc/c/a/e/d/i/n;->e:Li/a/b/x;

    iget-object v6, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    invoke-static {v0, v4, v5, v6}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;ZLjava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 52
    iget v0, v1, Lc/c/a/e/d/i/n;->j:I

    if-le v0, v2, :cond_e

    if-eqz v3, :cond_c

    .line 53
    :try_start_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_c
    if-eqz v3, :cond_e

    .line 54
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    if-eqz v0, :cond_e

    goto :goto_5

    :catch_8
    const/4 v5, 0x1

    .line 55
    :catch_9
    :try_start_c
    iget-object v0, v1, Lc/c/a/e/d/i/n;->a:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iget-object v4, v1, Lc/c/a/e/d/i/n;->e:Li/a/b/x;

    iget-object v6, v1, Lc/c/a/e/d/i/n;->c:Ljava/io/File;

    invoke-static {v0, v4, v5, v6}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;ZLjava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 56
    iget v0, v1, Lc/c/a/e/d/i/n;->j:I

    if-le v0, v2, :cond_e

    if-eqz v3, :cond_d

    .line 57
    :try_start_d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :catch_a
    :cond_d
    if-eqz v3, :cond_e

    .line 58
    :try_start_e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    if-eqz v0, :cond_e

    goto :goto_5

    :catch_b
    :cond_e
    :goto_6
    return-void

    .line 59
    :goto_7
    iget v4, v1, Lc/c/a/e/d/i/n;->j:I

    if-le v4, v2, :cond_10

    if-eqz v3, :cond_f

    .line 60
    :try_start_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    :catch_c
    :cond_f
    if-eqz v3, :cond_10

    .line 61
    :try_start_10
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 62
    :catch_d
    :cond_10
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
