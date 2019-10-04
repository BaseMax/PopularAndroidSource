.class public final Lcom/farsitel/bazaar/data/feature/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.kt"

# interfaces
.implements Li/a/H;
.implements Lc/c/a/e/d/i/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/e/d/i/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Li/a/u;

.field public final c:I

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lc/c/a/e/d/i/q;

.field public final g:Lc/c/a/e/d/i/r;

.field public final h:Lc/c/a/e/d/i/y;

.field public final i:Lc/c/a/e/d/i/u;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/i/q;Lc/c/a/e/d/i/r;Lc/c/a/e/d/i/y;Lc/c/a/e/d/i/u;)V
    .locals 1

    const-string v0, "fileDownloadHelper"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStateHelper"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageHelper"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadMerger"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->f:Lc/c/a/e/d/i/q;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->g:Lc/c/a/e/d/i/r;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->h:Lc/c/a/e/d/i/y;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->i:Lc/c/a/e/d/i/u;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a:Ljava/util/HashMap;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-static {p1, p2, p1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->b:Li/a/u;

    const/16 p1, 0x2000

    .line 4
    iput p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->c:I

    const/4 p1, 0x5

    .line 5
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->d:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->e:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;)I
    .locals 0

    .line 4
    iget p0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->c:I

    return p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;JLjava/lang/Long;)I
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(JLjava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;Ljava/io/File;JLjava/lang/Long;ILjava/lang/Object;)Ljava/net/HttpURLConnection;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/lang/String;Ljava/io/File;JLjava/lang/Long;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/net/HttpURLConnection;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 5
    invoke-virtual/range {p0 .. p5}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/net/HttpURLConnection;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/w;Lc/c/a/e/d/i/x;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Lc/c/a/e/d/i/w;Lc/c/a/e/d/i/x;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Li/a/b/x;ZLjava/io/File;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Li/a/b/x;ZLjava/io/File;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/Downloader;JJJ)Z
    .locals 0

    .line 7
    invoke-virtual/range {p0 .. p6}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(JJJ)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lc/c/a/e/d/i/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->i:Lc/c/a/e/d/i/u;

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lc/c/a/e/d/i/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->f:Lc/c/a/e/d/i/q;

    return-object p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->e:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic f(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lc/c/a/e/d/i/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->h:Lc/c/a/e/d/i/y;

    return-object p0
.end method


# virtual methods
.method public final a(JLjava/lang/Long;)I
    .locals 0

    long-to-float p1, p1

    const/16 p2, 0x64

    int-to-float p2, p2

    mul-float p1, p1, p2

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x1

    :goto_0
    long-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public a()Lh/c/e;
    .locals 2

    .line 9
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->b:Li/a/u;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/File;I)Ljava/io/File;
    .locals 2

    .line 24
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".part"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;JLjava/lang/Long;)Ljava/net/HttpURLConnection;
    .locals 6

    .line 26
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "https"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 29
    invoke-static {p1, v0, v3, v4, v5}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/net/HttpURLConnection;

    :goto_0
    const/16 v0, 0x7530

    .line 31
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 32
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "Host"

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr p3, v0

    .line 36
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p3, 0x2d

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    const-string p5, ""

    :goto_1
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Range"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 37
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/net/HttpURLConnection;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "I",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc/c/a/e/d/i/w;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-static/range {p1 .. p1}, Lc/c/a/e/c/d;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    int-to-long v4, v0

    .line 19
    div-long v4, v2, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    int-to-long v7, v6

    mul-long v15, v7, v4

    add-int/lit8 v7, v0, -0x1

    if-ne v6, v7, :cond_0

    move-object/from16 v8, p0

    move-object/from16 v7, p3

    move-wide/from16 v17, v2

    goto :goto_1

    :cond_0
    add-long v7, v15, v4

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    move-wide/from16 v17, v7

    move-object/from16 v8, p0

    move-object/from16 v7, p3

    .line 20
    :goto_1
    invoke-virtual {v8, v7, v6}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/io/File;I)Ljava/io/File;

    move-result-object v19

    .line 21
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, v19

    move-wide v12, v15

    invoke-virtual/range {v9 .. v14}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/lang/String;Ljava/io/File;JLjava/lang/Long;)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 22
    new-instance v14, Lc/c/a/e/d/i/w;

    move-object v7, v14

    move-object/from16 v8, p5

    move v10, v6

    move-object v0, v14

    move-wide/from16 v14, v17

    invoke-direct/range {v7 .. v15}, Lc/c/a/e/d/i/w;-><init>(Ljava/lang/String;Ljava/net/HttpURLConnection;ILjava/io/File;JJ)V

    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final a(Lc/c/a/e/d/i/w;Lc/c/a/e/d/i/x;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc/c/a/e/d/i/m;

    invoke-direct {v1, p0, p1, p2}, Lc/c/a/e/d/i/m;-><init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/w;Lc/c/a/e/d/i/x;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/x<",
            "-",
            "Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;",
            ">;",
            "Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;",
            ")V"
        }
    .end annotation

    .line 43
    new-instance v3, Lcom/farsitel/bazaar/data/feature/download/Downloader$sendDownloadStatus$1;

    const/4 v0, 0x0

    invoke-direct {v3, p1, p2, v0}, Lcom/farsitel/bazaar/data/feature/download/Downloader$sendDownloadStatus$1;-><init>(Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Li/a/b/x;ZLjava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/x<",
            "-",
            "Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;",
            ">;Z",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->g:Lc/c/a/e/d/i/r;

    invoke-interface {v0}, Lc/c/a/e/d/i/r;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p2, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->NETWORK_LOST:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 39
    sget-object p2, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->LINK_IS_NOT_VALID:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->h:Lc/c/a/e/d/i/y;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/i/y;->a(Lc/c/a/e/d/i/y;Ljava/io/File;JILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    goto :goto_0

    .line 41
    :cond_2
    sget-object p2, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->FAILED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    .line 42
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/i/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/e/d/i/t;->b()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "entityId"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/i/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/e/d/i/t;->f()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IJ)V
    .locals 0

    const-string p2, "entityId"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->h:Lc/c/a/e/d/i/y;

    invoke-virtual {p2, p1, p3, p4}, Lc/c/a/e/d/i/y;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;ILcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 10

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloaderProgressInfo"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/i/t;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p2, p3}, Lc/c/a/e/d/i/t;->a(ILcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    .line 49
    invoke-virtual {v0}, Lc/c/a/e/d/i/t;->d()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 50
    new-instance v9, Lcom/farsitel/bazaar/data/feature/download/Downloader$onPartProgressChanged$$inlined$let$lambda$1;

    const/4 v3, 0x0

    move-object v1, v9

    move-object v4, p0

    move v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/data/feature/download/Downloader$onPartProgressChanged$$inlined$let$lambda$1;-><init>(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Lh/c/b;Lcom/farsitel/bazaar/data/feature/download/Downloader;ILcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/String;)V

    const/4 v7, 0x3

    const/4 p1, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/math/BigInteger;Ljava/math/BigInteger;Li/a/b/x;Li/a/b/x;Lh/f/a/b;ILjavax/crypto/Cipher;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Li/a/b/x<",
            "-",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;",
            "Li/a/b/x<",
            "-",
            "Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Ljava/math/BigInteger;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Ljavax/crypto/Cipher;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    const-string v0, "entityId"

    invoke-static {v7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destFile"

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressChannel"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadStatus"

    invoke-static {v9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadDiffHandler"

    invoke-static {v10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v4, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;

    move-object/from16 v13, p4

    move-object/from16 v15, p5

    invoke-direct {v4, v8, v13, v10, v15}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;-><init>(Ljava/io/File;Ljava/math/BigInteger;Lh/f/a/b;Ljava/math/BigInteger;)V

    .line 11
    new-instance v6, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;-><init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;Li/a/b/x;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;Ljava/io/File;)V

    .line 12
    new-instance v5, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;

    invoke-direct {v5, v14, v7, v9}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;-><init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;Li/a/b/x;)V

    .line 13
    new-instance v4, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$4;

    invoke-direct {v4, v14, v7, v9}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$4;-><init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;Li/a/b/x;)V

    .line 14
    new-instance v16, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;

    move-object/from16 v0, v16

    move-object/from16 v2, p3

    move-object/from16 v3, p10

    move-object/from16 v17, v4

    move-object v4, v6

    move-object/from16 v18, v5

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;-><init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/io/File;Ljavax/crypto/Cipher;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$4;)V

    .line 15
    iget-object v6, v14, Lcom/farsitel/bazaar/data/feature/download/Downloader;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lc/c/a/e/d/i/n;

    move-object v0, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p7

    move-object v11, v6

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object v15, v11

    move-object/from16 v11, p10

    move-object/from16 v12, v18

    move-object v14, v13

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lc/c/a/e/d/i/n;-><init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/lang/String;Ljava/io/File;Ljava/math/BigInteger;Li/a/b/x;Ljava/lang/String;Ljava/math/BigInteger;Li/a/b/x;Lh/f/a/b;ILjavax/crypto/Cipher;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;)V

    invoke-interface {v15, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(JJJ)Z
    .locals 1

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p3, p1

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    cmp-long p3, p1, p5

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "entityId"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/i/t;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lc/c/a/e/d/i/t;->c()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lc/c/a/e/d/i/t;->a(Z)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->h:Lc/c/a/e/d/i/y;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/i/y;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
