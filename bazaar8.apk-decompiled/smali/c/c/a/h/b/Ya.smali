.class public final Lc/c/a/h/b/Ya;
.super Ljava/lang/Object;
.source "NetworkModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    const-wide/32 v0, 0xa00000

    return-wide v0
.end method

.method public final a(Lc/c/a/e/c;Lc/c/a/e/d/h/e/a/a/n;)Lc/c/a/e/d/i/q;
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lc/c/a/e/d/i/q;

    invoke-direct {v0, p1, p2}, Lc/c/a/e/d/i/q;-><init>(Lc/c/a/e/c;Lc/c/a/e/d/h/e/a/a/n;)V

    return-object v0
.end method

.method public final a(Lc/c/a/e/d/u/a;)Lc/c/a/e/g/b;
    .locals 1

    const-string v0, "settingsRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lc/c/a/e/g/b;

    invoke-direct {v0, p1}, Lc/c/a/e/g/b;-><init>(Lc/c/a/e/d/u/a;)V

    return-object v0
.end method

.method public final a(Ljava/io/File;J)Lc/c/a/e/h/a/c;
    .locals 1

    const-string v0, "cacheFile"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/e/h/a/c;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/e/h/a/c;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method public final a(Lc/c/a/e/h/a/c;)Lc/c/a/e/h/a/f;
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lc/c/a/e/h/a/f;

    iget-object p1, p1, Lc/c/a/e/h/a/c;->a:Lj/a/a/j;

    invoke-direct {v0, p1}, Lc/c/a/e/h/a/f;-><init>(Lj/a/a/j;)V

    return-object v0
.end method

.method public final a(Lc/c/a/e/g/b;Lc/c/a/e/d/i/q;Lc/c/a/e/d/i/r;Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lcom/farsitel/bazaar/data/feature/download/DownloadManager;
    .locals 1

    const-string v0, "downloadConfig"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloadHelper"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStateHelper"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;-><init>(Lc/c/a/e/g/b;Lc/c/a/e/d/i/q;Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/r;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lokhttp3/logging/HttpLoggingInterceptor;Lc/c/a/e/h/b/f;Lc/c/a/e/h/b/a;Lc/c/a/e/h/a/f;Lc/c/a/e/d/u/a;)Lj/I;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpLoggingInterceptor"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenInterceptor"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticatorInterceptor"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheInterceptor"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lj/I$a;

    invoke-direct {v0}, Lj/I$a;-><init>()V

    .line 5
    invoke-static {v0, p1, p6}, Lc/c/a/i/d;->a(Lj/I$a;Landroid/content/Context;Lc/c/a/e/d/u/a;)Lj/I$a;

    .line 6
    new-instance p1, Lc/c/a/e/h/b/c;

    invoke-direct {p1}, Lc/c/a/e/h/b/c;-><init>()V

    invoke-virtual {v0, p1}, Lj/I$a;->a(Lj/E;)Lj/I$a;

    .line 7
    new-instance p1, Lc/c/a/e/h/b/d;

    invoke-direct {p1}, Lc/c/a/e/h/b/d;-><init>()V

    invoke-virtual {v0, p1}, Lj/I$a;->a(Lj/E;)Lj/I$a;

    .line 8
    invoke-virtual {v0, p2}, Lj/I$a;->a(Lj/E;)Lj/I$a;

    .line 9
    invoke-virtual {v0, p3}, Lj/I$a;->a(Lj/E;)Lj/I$a;

    .line 10
    invoke-virtual {v0, p5}, Lj/I$a;->a(Lj/E;)Lj/I$a;

    .line 11
    invoke-virtual {v0, p4}, Lj/I$a;->a(Lj/c;)Lj/I$a;

    .line 12
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x78

    invoke-virtual {v0, p2, p3, p1}, Lj/I$a;->a(JLjava/util/concurrent/TimeUnit;)Lj/I$a;

    .line 13
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, p1}, Lj/I$a;->b(JLjava/util/concurrent/TimeUnit;)Lj/I$a;

    .line 14
    invoke-virtual {v0}, Lj/I$a;->a()Lj/I;

    move-result-object p1

    const-string p2, "OkHttpClient.Builder()\n \u2026NDS)\n            .build()"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Lc/c/a/e/d/i/r;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/d/d/e;

    invoke-direct {v0, p1}, Lc/c/a/d/d/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final b()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    return-object v0
.end method

.method public final c()Lc/c/a/e/d/i/y;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/e/d/i/y;

    invoke-direct {v0}, Lc/c/a/e/d/i/y;-><init>()V

    return-object v0
.end method
