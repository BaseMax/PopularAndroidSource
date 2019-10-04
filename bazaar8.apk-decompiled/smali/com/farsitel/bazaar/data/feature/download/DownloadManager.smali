.class public Lcom/farsitel/bazaar/data/feature/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.kt"

# interfaces
.implements Li/a/H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;
    }
.end annotation


# instance fields
.field public final a:Li/a/ra;

.field public b:Lcom/farsitel/bazaar/data/model/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/farsitel/bazaar/data/model/ObservableList<",
            "Lc/c/a/e/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/e/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/e/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Li/a/b/j<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;

.field public final g:Lc/c/a/e/g/b;

.field public final h:Lc/c/a/e/d/i/q;

.field public final i:Lcom/farsitel/bazaar/data/feature/download/Downloader;


# direct methods
.method public constructor <init>(Lc/c/a/e/g/b;Lc/c/a/e/d/i/q;Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/r;)V
    .locals 6

    const-string v0, "downloadConfig"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloadHelper"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStateHelper"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->g:Lc/c/a/e/g/b;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h:Lc/c/a/e/d/i/q;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->i:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 2
    invoke-static {p2, p1, p2}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p3

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a:Li/a/ra;

    .line 3
    new-instance p3, Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-direct {p3}, Lcom/farsitel/bazaar/data/model/ObservableList;-><init>()V

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    .line 4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c:Ljava/util/HashMap;

    .line 5
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    .line 6
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e:Ljava/util/HashMap;

    .line 7
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    new-instance p3, Lc/c/a/e/d/i/f;

    invoke-direct {p3, p0}, Lc/c/a/e/d/i/f;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V

    invoke-virtual {p1, p3}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lc/c/a/e/g/e;)V

    .line 9
    new-instance v3, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;

    invoke-direct {v3, p0, p4, p2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/e/d/i/r;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljavax/crypto/Cipher;IZZILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p11

    if-nez p12, :cond_4

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move/from16 v10, p8

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move/from16 v11, p9

    :goto_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    move/from16 v12, p10

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 5
    invoke-virtual/range {v2 .. v12}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljavax/crypto/Cipher;IZZ)V

    return-void

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: addToDownloadQueue"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/io/File;Lc/c/a/e/g/c;Ljava/math/BigInteger;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/io/File;Lc/c/a/e/g/c;Ljava/math/BigInteger;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Lcom/farsitel/bazaar/data/model/ObservableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Lcom/farsitel/bazaar/data/feature/download/Downloader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->i:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    return-object p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 4
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lc/c/a/e/g/c;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 14
    iget-object v0, v6, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, v6, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h:Lc/c/a/e/d/i/q;

    .line 16
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->q()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->r()Z

    move-result v3

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lc/c/a/e/d/i/q;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;

    move-result-object v10

    .line 18
    iget-object v0, v6, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h:Lc/c/a/e/d/i/q;

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->q()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/i/q;->b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result v0

    .line 19
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 20
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CONTINUING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    goto :goto_0

    .line 21
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 22
    :goto_0
    invoke-virtual {v7, v1}, Lc/c/a/e/g/c;->b(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, v6, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h:Lc/c/a/e/d/i/q;

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->q()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/i/q;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    invoke-static {v0}, Lc/c/a/c/b/d;->b(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->q()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 27
    invoke-static {v0, v9, v8}, Li/a/b/l;->a(IILjava/lang/Object;)Li/a/b/j;

    move-result-object v14

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 28
    new-instance v3, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;

    invoke-direct {v3, v6, v14, v7, v8}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Li/a/b/j;Lc/c/a/e/g/c;Lh/c/b;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    .line 29
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 30
    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;

    invoke-direct {v1, v6, v7, v10}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/e/g/c;Ljava/io/File;)V

    .line 31
    iget-object v2, v6, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/a/b/j;

    if-eqz v2, :cond_6

    invoke-static {v2, v8, v9, v8}, Li/a/b/x$a;->a(Li/a/b/x;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 32
    :cond_6
    iget-object v2, v6, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v2, v6, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->i:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->b()Ljava/math/BigInteger;

    move-result-object v11

    .line 36
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->d()Ljava/math/BigInteger;

    move-result-object v12

    .line 37
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->n()Li/a/b/p;

    move-result-object v13

    .line 38
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->f()Ljavax/crypto/Cipher;

    move-result-object v17

    .line 39
    new-instance v15, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$3;

    invoke-direct {v15, v1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$3;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;)V

    .line 40
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->m()I

    move-result v16

    move-object v7, v2

    move-object v9, v0

    .line 41
    invoke-virtual/range {v7 .. v17}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/math/BigInteger;Ljava/math/BigInteger;Li/a/b/x;Li/a/b/x;Lh/f/a/b;ILjavax/crypto/Cipher;)V

    goto :goto_2

    .line 42
    :cond_7
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all url are not valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->g:Lc/c/a/e/g/b;

    invoke-virtual {v0, p1}, Lc/c/a/e/g/b;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;)V

    .line 13
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/c;

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {v1}, Lc/c/a/e/g/c;->i()Lc/c/a/e/g/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/c/a/e/g/d;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/a/b/j;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3}, Li/a/b/x$a;->a(Li/a/b/x;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 56
    :cond_0
    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lc/c/a/e/g/c;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v2, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1, v2}, Lc/c/a/e/g/c;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h(Ljava/lang/String;)V

    .line 61
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)V
    .locals 5

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lc/c/a/e/d/i/g;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    const/4 v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h:Lc/c/a/e/d/i/q;

    invoke-virtual {v1, p1, p2}, Lc/c/a/e/d/i/q;->c(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h:Lc/c/a/e/d/i/q;

    invoke-virtual {v1, p1, p2}, Lc/c/a/e/d/i/q;->b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/lang/String;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_3

    .line 68
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/c;

    invoke-virtual {p2}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 69
    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 71
    sget-object v4, Lcom/farsitel/bazaar/common/model/DownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1, v4}, Lc/c/a/e/g/c;->b(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    .line 72
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/farsitel/bazaar/data/model/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/g/c;

    goto :goto_2

    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 73
    :cond_4
    :goto_2
    :try_start_1
    iget-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/a/b/j;

    if-eqz p1, :cond_5

    invoke-static {p1, v3, v2, v3}, Li/a/b/x$a;->a(Li/a/b/x;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljavax/crypto/Cipher;IZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/data/entity/EntityType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljavax/crypto/Cipher;",
            "IZZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "entityId"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadUrls"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v15, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v15

    .line 8
    :try_start_0
    new-instance v0, Lc/c/a/e/g/c;

    const/4 v12, 0x0

    const/16 v13, 0x200

    const/4 v14, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p9

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v14}, Lc/c/a/e/g/c;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjavax/crypto/Cipher;ILcom/farsitel/bazaar/common/model/DownloadStatus;ILh/f/b/f;)V

    if-eqz p10, :cond_0

    .line 9
    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    iget-object v3, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/model/ObservableList;->size()I

    move-result v3

    iget-object v4, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->add(ILjava/lang/Object;)V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v2, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit v15

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v15

    throw v0
.end method

.method public final a(Ljava/io/File;Lc/c/a/e/g/c;Ljava/math/BigInteger;)Z
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h:Lc/c/a/e/d/i/q;

    invoke-virtual {p2}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lc/c/a/e/d/i/q;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h:Lc/c/a/e/d/i/q;

    invoke-virtual {p2}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lc/c/a/e/d/i/q;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v4, v2, :cond_1

    .line 46
    new-instance v5, Lcom/usf/research/AppPatcherActivity;

    invoke-direct {v5}, Lcom/usf/research/AppPatcherActivity;-><init>()V

    invoke-virtual {v5, p2, v0, p1}, Lcom/usf/research/AppPatcherActivity;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    if-eqz v5, :cond_3

    .line 48
    invoke-static {v0, p3}, Lc/c/a/c/b/d;->a(Ljava/io/File;Ljava/math/BigInteger;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v1, 0x1

    goto :goto_3

    .line 50
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_3
    return v1

    .line 51
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v1
.end method

.method public final b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->g:Lc/c/a/e/g/b;

    invoke-virtual {v2}, Lc/c/a/e/g/b;->a()Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->f()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c()Lc/c/a/e/g/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lc/c/a/e/g/c;)V

    .line 5
    :cond_0
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/c;

    if-eqz v1, :cond_0

    .line 9
    sget-object v2, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1, v2}, Lc/c/a/e/g/c;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h(Ljava/lang/String;)V

    .line 13
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c()Lc/c/a/e/g/c;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/model/ObservableList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/e/g/c;

    invoke-virtual {v3}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/e/g/c;

    invoke-virtual {v3}, Lc/c/a/e/g/c;->o()Lcom/farsitel/bazaar/common/model/DownloadStatus;

    move-result-object v3

    sget-object v4, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    if-eq v3, v4, :cond_0

    .line 8
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Lc/c/a/e/g/c;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    const/4 v2, 0x0

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move-object v2, v3

    move-object v4, v2

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_1

    check-cast v6, Lc/c/a/e/g/c;

    .line 14
    invoke-virtual {v6}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    move-object v2, v6

    :cond_0
    move v5, v7

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lh/a/l;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 17
    :cond_2
    :try_start_1
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public d(Ljava/lang/String;)Li/a/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/c;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lc/c/a/e/g/c;->n()Li/a/b/p;

    move-result-object p1

    invoke-virtual {p1}, Li/a/b/p;->b()Li/a/b/t;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    .line 5
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final d()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/model/ObservableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/e/g/c;

    invoke-virtual {v2}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->g(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Li/a/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/t<",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ">;"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/c;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lc/c/a/e/g/c;->p()Li/a/b/p;

    move-result-object p1

    invoke-virtual {p1}, Li/a/b/p;->b()Li/a/b/t;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/c;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lc/c/a/e/g/c;->p()Li/a/b/p;

    move-result-object p1

    invoke-virtual {p1}, Li/a/b/p;->b()Li/a/b/t;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p1

    .line 7
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/c;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/c;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lc/c/a/e/g/c;->c()V

    :cond_0
    const-string p1, "it"

    .line 5
    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lc/c/a/e/g/c;)V

    .line 6
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 4

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lc/c/a/e/g/c;->n()Li/a/b/p;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v3, v2, v3}, Li/a/b/x$a;->a(Li/a/b/x;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->i:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->b(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/a/b/j;

    if-eqz v1, :cond_1

    invoke-static {v1, v3, v2, v3}, Li/a/b/x$a;->a(Li/a/b/x;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->h(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->f:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/data/model/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
