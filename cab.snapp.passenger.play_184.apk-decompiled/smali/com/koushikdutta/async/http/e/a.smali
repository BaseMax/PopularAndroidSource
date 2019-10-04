.class public Lcom/koushikdutta/async/http/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/e/a$b;,
        Lcom/koushikdutta/async/http/e/a$a;
    }
.end annotation


# static fields
.field static e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic f:Z

.field private static g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/i;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/koushikdutta/async/a/e;

.field c:Lcom/koushikdutta/async/a/a;

.field final d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/http/e/a$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lcom/koushikdutta/async/http/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/e/a;->f:Z

    .line 375
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    .line 511
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 513
    sput-object v0, Lcom/koushikdutta/async/http/e/a;->g:Ljava/util/Hashtable;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->g:Ljava/util/Hashtable;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Accepted"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->g:Ljava/util/Hashtable;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Content"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->g:Ljava/util/Hashtable;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Switching Protocols"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->g:Ljava/util/Hashtable;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Moved Permanently"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->g:Ljava/util/Hashtable;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->g:Ljava/util/Hashtable;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/a;->a:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/koushikdutta/async/http/e/a$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/e/a$1;-><init>(Lcom/koushikdutta/async/http/e/a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/a;->b:Lcom/koushikdutta/async/a/e;

    .line 285
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/a;->d:Ljava/util/Hashtable;

    .line 377
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "js"

    const-string v2, "application/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "json"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static a(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/a/a;
    .locals 2

    .line 66
    new-instance v0, Lcom/koushikdutta/async/http/e/k;

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/e/k;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/e/a;Ljava/lang/Exception;)V
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/koushikdutta/async/http/e/a;->c:Lcom/koushikdutta/async/a/a;

    if-eqz p0, :cond_0

    .line 1234
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected static a(Lcom/koushikdutta/async/http/e/g;Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0, p1, p2}, Lcom/koushikdutta/async/http/e/g;->onRequest(Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V

    :cond_0
    return-void
.end method

.method public static getAssetStream(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 367
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 368
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 389
    invoke-static {p0}, Lcom/koushikdutta/async/http/e/a;->tryGetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "text/plain"

    return-object p0
.end method

.method public static getResponseCodeDescription(I)Ljava/lang/String;
    .locals 1

    .line 523
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->g:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "Unknown"

    :cond_0
    return-object p0
.end method

.method public static tryGetContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 399
    sget-object v0, Lcom/koushikdutta/async/http/e/a;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V
    .locals 2

    .line 303
    new-instance v0, Lcom/koushikdutta/async/http/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/e/a$a;-><init>(B)V

    .line 304
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "^"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, v0, Lcom/koushikdutta/async/http/e/a$a;->a:Ljava/util/regex/Pattern;

    .line 305
    iput-object p3, v0, Lcom/koushikdutta/async/http/e/a$a;->b:Lcom/koushikdutta/async/http/e/g;

    .line 307
    iget-object p2, p0, Lcom/koushikdutta/async/http/e/a;->d:Ljava/util/Hashtable;

    monitor-enter p2

    .line 308
    :try_start_0
    iget-object p3, p0, Lcom/koushikdutta/async/http/e/a;->d:Ljava/util/Hashtable;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-nez p3, :cond_0

    .line 310
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public directory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 408
    new-instance v0, Lcom/koushikdutta/async/http/e/a$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/koushikdutta/async/http/e/a$4;-><init>(Lcom/koushikdutta/async/http/e/a;Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "GET"

    invoke-virtual {p0, v1, p2, v0}, Lcom/koushikdutta/async/http/e/a;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V

    .line 431
    new-instance v0, Lcom/koushikdutta/async/http/e/a$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/koushikdutta/async/http/e/a$5;-><init>(Lcom/koushikdutta/async/http/e/a;Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "HEAD"

    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/e/a;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V

    return-void
.end method

.method public directory(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/e/a;->directory(Ljava/lang/String;Ljava/io/File;Z)V

    return-void
.end method

.method public directory(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 1

    .line 457
    sget-boolean v0, Lcom/koushikdutta/async/http/e/a;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 458
    :cond_1
    :goto_0
    new-instance v0, Lcom/koushikdutta/async/http/e/a$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/e/a$6;-><init>(Lcom/koushikdutta/async/http/e/a;Ljava/io/File;Z)V

    const-string p2, "GET"

    invoke-virtual {p0, p2, p1, v0}, Lcom/koushikdutta/async/http/e/a;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V
    .locals 1

    const-string v0, "GET"

    .line 357
    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/e/a;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V

    return-void
.end method

.method public getErrorCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a;->c:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public getListenCallback()Lcom/koushikdutta/async/a/e;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a;->b:Lcom/koushikdutta/async/a/e;

    return-object v0
.end method

.method public listen(I)Lcom/koushikdutta/async/i;
    .locals 1

    .line 238
    invoke-static {}, Lcom/koushikdutta/async/h;->getDefault()Lcom/koushikdutta/async/h;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/e/a;->listen(Lcom/koushikdutta/async/h;I)Lcom/koushikdutta/async/i;

    move-result-object p1

    return-object p1
.end method

.method public listen(Lcom/koushikdutta/async/h;I)Lcom/koushikdutta/async/i;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a;->b:Lcom/koushikdutta/async/a/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/koushikdutta/async/h;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/a/e;)Lcom/koushikdutta/async/i;

    move-result-object p1

    return-object p1
.end method

.method public listenSecure(ILjavax/net/ssl/SSLContext;)V
    .locals 2

    .line 242
    invoke-static {}, Lcom/koushikdutta/async/h;->getDefault()Lcom/koushikdutta/async/h;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/e/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/http/e/a$2;-><init>(Lcom/koushikdutta/async/http/e/a;ILjavax/net/ssl/SSLContext;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/koushikdutta/async/h;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/a/e;)Lcom/koushikdutta/async/i;

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V
    .locals 1

    const-string v0, "POST"

    .line 361
    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/e/a;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V

    return-void
.end method

.method public removeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 291
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 292
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 293
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/e/a$a;

    .line 294
    iget-object v2, v2, Lcom/koushikdutta/async/http/e/a$a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 296
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setErrorCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a;->c:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/i;

    .line 51
    invoke-interface {v1}, Lcom/koushikdutta/async/i;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public websocket(Ljava/lang/String;Lcom/koushikdutta/async/http/e/a$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/e/a;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/a$b;)V

    return-void
.end method

.method public websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/a$b;)V
    .locals 1

    .line 326
    new-instance v0, Lcom/koushikdutta/async/http/e/a$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/e/a$3;-><init>(Lcom/koushikdutta/async/http/e/a;Ljava/lang/String;Lcom/koushikdutta/async/http/e/a$b;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/e/a;->get(Ljava/lang/String;Lcom/koushikdutta/async/http/e/g;)V

    return-void
.end method
