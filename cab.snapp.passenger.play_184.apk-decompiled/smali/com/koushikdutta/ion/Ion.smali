.class public Lcom/koushikdutta/ion/Ion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/ion/Ion$Config;,
        Lcom/koushikdutta/ion/Ion$FutureSet;
    }
.end annotation


# static fields
.field private static DEFERRED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/koushikdutta/ion/DeferredLoadBitmap;",
            ">;"
        }
    .end annotation
.end field

.field static availableProcessors:I

.field static bitmapExecutorService:Ljava/util/concurrent/ExecutorService;

.field static instances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/ion/Ion;",
            ">;"
        }
    .end annotation
.end field

.field static ioExecutorService:Ljava/util/concurrent/ExecutorService;

.field static final mainHandler:Landroid/os/Handler;


# instance fields
.field assetLoader:Lcom/koushikdutta/ion/loader/AssetLoader;

.field bitmapBuilder:Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

.field bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

.field bitmapsPending:Lcom/koushikdutta/async/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/e/e<",
            "Lcom/koushikdutta/async/b/f<",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field config:Lcom/koushikdutta/ion/Ion$Config;

.field conscryptMiddleware:Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

.field contentLoader:Lcom/koushikdutta/ion/loader/ContentLoader;

.field context:Landroid/content/Context;

.field cookieMiddleware:Lcom/koushikdutta/ion/cookie/CookieMiddleware;

.field fileLoader:Lcom/koushikdutta/ion/loader/FileLoader;

.field gson:Lcom/google/gson/e;

.field httpClient:Lcom/koushikdutta/async/http/a;

.field httpLoader:Lcom/koushikdutta/ion/loader/HttpLoader;

.field inFlight:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/koushikdutta/ion/Ion$FutureSet;",
            ">;"
        }
    .end annotation
.end field

.field loaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/ion/Loader;",
            ">;"
        }
    .end annotation
.end field

.field logLevel:I

.field logtag:Ljava/lang/String;

.field name:Ljava/lang/String;

.field packageIconLoader:Lcom/koushikdutta/ion/loader/PackageIconLoader;

.field private processDeferred:Ljava/lang/Runnable;

.field resourceLoader:Lcom/koushikdutta/ion/loader/ResourceLoader;

.field responseCache:Lcom/koushikdutta/async/http/b/e;

.field storeCache:Lcom/koushikdutta/async/e/c;

.field userAgent:Ljava/lang/String;

.field videoLoader:Lcom/koushikdutta/ion/loader/VideoLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/koushikdutta/ion/Ion;->availableProcessors:I

    const/4 v0, 0x4

    .line 62
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/ion/Ion;->ioExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 63
    sget v0, Lcom/koushikdutta/ion/Ion;->availableProcessors:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/koushikdutta/ion/Ion;->bitmapExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/Ion;->instances:Ljava/util/HashMap;

    .line 256
    new-instance v0, Lcom/koushikdutta/ion/Ion$1;

    invoke-direct {v0}, Lcom/koushikdutta/ion/Ion$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/Ion;->DEFERRED_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Lcom/koushikdutta/async/e/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/e/e;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/e/e;

    .line 146
    new-instance v0, Lcom/koushikdutta/ion/Ion$Config;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/Ion$Config;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->config:Lcom/koushikdutta/ion/Ion$Config;

    .line 149
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->bitmapBuilder:Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    .line 268
    new-instance v0, Lcom/koushikdutta/ion/Ion$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/Ion$2;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->processDeferred:Ljava/lang/Runnable;

    .line 396
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/ion/Ion;->context:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->name:Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/koushikdutta/async/http/a;

    new-instance v1, Lcom/koushikdutta/async/h;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ion-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/a;-><init>(Lcom/koushikdutta/async/h;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    .line 156
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/o;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v1}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/o;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 157
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/o;->setSpdyEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    new-instance v2, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/o;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;-><init>(Landroid/content/Context;Lcom/koushikdutta/async/http/h;)V

    iput-object v2, p0, Lcom/koushikdutta/ion/Ion;->conscryptMiddleware:Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/a;->insertMiddleware(Lcom/koushikdutta/async/http/b;)V

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v2, 0xa00000

    .line 162
    :try_start_0
    iget-object v4, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-static {v4, v0, v2, v3}, Lcom/koushikdutta/async/http/b/e;->addCache(Lcom/koushikdutta/async/http/a;Ljava/io/File;J)Lcom/koushikdutta/async/http/b/e;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/b/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "unable to set up response cache, clearing"

    .line 165
    invoke-static {v5, v4}, Lcom/koushikdutta/ion/IonLog;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    invoke-static {v0}, Lcom/koushikdutta/async/e/d;->deleteDirectory(Ljava/io/File;)Z

    .line 168
    :try_start_1
    iget-object v5, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-static {v5, v0, v2, v3}, Lcom/koushikdutta/async/http/b/e;->addCache(Lcom/koushikdutta/async/http/a;Ljava/io/File;J)Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/b/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "unable to set up response cache, failing"

    .line 171
    invoke-static {v0, v4}, Lcom/koushikdutta/ion/IonLog;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 175
    :goto_0
    new-instance v0, Lcom/koushikdutta/async/e/c;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide p1, 0x7fffffffffffffffL

    invoke-direct {v0, v2, p1, p2, v1}, Lcom/koushikdutta/async/e/c;-><init>(Ljava/io/File;JZ)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->storeCache:Lcom/koushikdutta/async/e/c;

    .line 178
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x9

    if-lt p1, p2, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/koushikdutta/ion/Ion;->addCookieMiddleware()V

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a;->getSocketMiddleware()Lcom/koushikdutta/async/http/i;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/i;->setConnectAllAddresses(Z)V

    .line 182
    iget-object p1, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/o;->setConnectAllAddresses(Z)V

    .line 184
    new-instance p1, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-direct {p1, p0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object p1, p0, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    .line 186
    invoke-virtual {p0}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/ion/loader/VideoLoader;

    invoke-direct {p2}, Lcom/koushikdutta/ion/loader/VideoLoader;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->videoLoader:Lcom/koushikdutta/ion/loader/VideoLoader;

    .line 187
    invoke-virtual {p1, p2}, Lcom/koushikdutta/ion/Ion$Config;->addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/ion/loader/PackageIconLoader;

    invoke-direct {p2}, Lcom/koushikdutta/ion/loader/PackageIconLoader;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->packageIconLoader:Lcom/koushikdutta/ion/loader/PackageIconLoader;

    .line 188
    invoke-virtual {p1, p2}, Lcom/koushikdutta/ion/Ion$Config;->addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/ion/loader/HttpLoader;

    invoke-direct {p2}, Lcom/koushikdutta/ion/loader/HttpLoader;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->httpLoader:Lcom/koushikdutta/ion/loader/HttpLoader;

    .line 189
    invoke-virtual {p1, p2}, Lcom/koushikdutta/ion/Ion$Config;->addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/ion/loader/ContentLoader;

    invoke-direct {p2}, Lcom/koushikdutta/ion/loader/ContentLoader;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->contentLoader:Lcom/koushikdutta/ion/loader/ContentLoader;

    .line 190
    invoke-virtual {p1, p2}, Lcom/koushikdutta/ion/Ion$Config;->addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/ion/loader/ResourceLoader;

    invoke-direct {p2}, Lcom/koushikdutta/ion/loader/ResourceLoader;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->resourceLoader:Lcom/koushikdutta/ion/loader/ResourceLoader;

    .line 191
    invoke-virtual {p1, p2}, Lcom/koushikdutta/ion/Ion$Config;->addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/ion/loader/AssetLoader;

    invoke-direct {p2}, Lcom/koushikdutta/ion/loader/AssetLoader;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->assetLoader:Lcom/koushikdutta/ion/loader/AssetLoader;

    .line 192
    invoke-virtual {p1, p2}, Lcom/koushikdutta/ion/Ion$Config;->addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/ion/loader/FileLoader;

    invoke-direct {p2}, Lcom/koushikdutta/ion/loader/FileLoader;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->fileLoader:Lcom/koushikdutta/ion/loader/FileLoader;

    .line 193
    invoke-virtual {p1, p2}, Lcom/koushikdutta/ion/Ion$Config;->addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .line 59
    sget-object v0, Lcom/koushikdutta/ion/Ion;->DEFERRED_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private addCookieMiddleware()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    new-instance v1, Lcom/koushikdutta/ion/cookie/CookieMiddleware;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->cookieMiddleware:Lcom/koushikdutta/ion/cookie/CookieMiddleware;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/a;->insertMiddleware(Lcom/koushikdutta/async/http/b;)V

    return-void
.end method

.method public static getBitmapLoadExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 197
    sget-object v0, Lcom/koushikdutta/ion/Ion;->bitmapExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/koushikdutta/ion/Ion;
    .locals 1

    const-string v0, "ion"

    .line 100
    invoke-static {p0, v0}, Lcom/koushikdutta/ion/Ion;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/Ion;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/Ion;
    .locals 2

    if-eqz p0, :cond_1

    .line 112
    sget-object v0, Lcom/koushikdutta/ion/Ion;->instances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/Ion;

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/koushikdutta/ion/Ion;->instances:Ljava/util/HashMap;

    new-instance v1, Lcom/koushikdutta/ion/Ion;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/ion/Ion;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0

    .line 111
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Can not pass null context in to retrieve ion instance"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getIoExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 201
    sget-object v0, Lcom/koushikdutta/ion/Ion;->ioExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static with(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/builder/Builders$IV$F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/koushikdutta/ion/builder/Builders$IV$F<",
            "+",
            "Lcom/koushikdutta/ion/builder/Builders$IV$F<",
            "*>;>;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/ion/Ion;->getDefault(Landroid/content/Context;)Lcom/koushikdutta/ion/Ion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/koushikdutta/ion/Ion;->build(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/builder/Builders$IV$F;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/koushikdutta/ion/builder/LoadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            ")",
            "Lcom/koushikdutta/ion/builder/LoadBuilder<",
            "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/ion/Ion;->getDefault(Landroid/content/Context;)Lcom/koushikdutta/ion/Ion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/koushikdutta/ion/Ion;->build(Landroid/app/Fragment;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/koushikdutta/ion/builder/LoadBuilder<",
            "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/koushikdutta/ion/Ion;->getDefault(Landroid/content/Context;)Lcom/koushikdutta/ion/Ion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/koushikdutta/ion/Ion;->build(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/koushikdutta/ion/builder/LoadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lcom/koushikdutta/ion/builder/LoadBuilder<",
            "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/ion/Ion;->getDefault(Landroid/content/Context;)Lcom/koushikdutta/ion/Ion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/koushikdutta/ion/Ion;->build(Landroidx/fragment/app/Fragment;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addFutureInFlight(Lcom/koushikdutta/async/b/e;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 325
    invoke-interface {p1}, Lcom/koushikdutta/async/b/e;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/koushikdutta/async/b/e;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/Ion$FutureSet;

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lcom/koushikdutta/ion/Ion$FutureSet;

    invoke-direct {v0}, Lcom/koushikdutta/ion/Ion$FutureSet;-><init>()V

    .line 333
    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/ion/Ion$FutureSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 335
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public build(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/builder/Builders$IV$F;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/koushikdutta/ion/builder/Builders$IV$F<",
            "+",
            "Lcom/koushikdutta/ion/builder/Builders$IV$F<",
            "*>;>;"
        }
    .end annotation

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->bitmapBuilder:Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->reset()V

    .line 240
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->bitmapBuilder:Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    iput-object p0, v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    .line 241
    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->withImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "must be called from UI thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build(Landroid/app/Fragment;)Lcom/koushikdutta/ion/builder/LoadBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            ")",
            "Lcom/koushikdutta/ion/builder/LoadBuilder<",
            "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder;

    new-instance v1, Lcom/koushikdutta/ion/ContextReference$FragmentContextReference;

    invoke-direct {v1, p1}, Lcom/koushikdutta/ion/ContextReference$FragmentContextReference;-><init>(Landroid/app/Fragment;)V

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/ion/IonRequestBuilder;-><init>(Lcom/koushikdutta/ion/ContextReference;Lcom/koushikdutta/ion/Ion;)V

    return-object v0
.end method

.method public build(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/koushikdutta/ion/builder/LoadBuilder<",
            "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-static {p1}, Lcom/koushikdutta/ion/ContextReference;->fromContext(Landroid/content/Context;)Lcom/koushikdutta/ion/ContextReference;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/koushikdutta/ion/IonRequestBuilder;-><init>(Lcom/koushikdutta/ion/ContextReference;Lcom/koushikdutta/ion/Ion;)V

    return-object v0
.end method

.method public build(Landroidx/fragment/app/Fragment;)Lcom/koushikdutta/ion/builder/LoadBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lcom/koushikdutta/ion/builder/LoadBuilder<",
            "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder;

    new-instance v1, Lcom/koushikdutta/ion/ContextReference$SupportFragmentContextReference;

    invoke-direct {v1, p1}, Lcom/koushikdutta/ion/ContextReference$SupportFragmentContextReference;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/ion/IonRequestBuilder;-><init>(Lcom/koushikdutta/ion/ContextReference;Lcom/koushikdutta/ion/Ion;)V

    return-object v0
.end method

.method public cache(Ljava/lang/String;)Lcom/koushikdutta/ion/FileCacheStore;
    .locals 2

    .line 407
    new-instance v0, Lcom/koushikdutta/ion/FileCacheStore;

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/b/e;->getFileCache()Lcom/koushikdutta/async/e/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/koushikdutta/ion/FileCacheStore;-><init>(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/e/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public cancelAll()V
    .locals 2

    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 348
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 351
    invoke-virtual {p0, v1}, Lcom/koushikdutta/ion/Ion;->cancelAll(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 348
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public cancelAll(Landroid/content/Context;)V
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/Ion;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 1

    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/ion/Ion$FutureSet;

    .line 313
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion$FutureSet;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/b/e;

    if-eqz v0, :cond_1

    .line 320
    invoke-interface {v0}, Lcom/koushikdutta/async/b/e;->cancel()Z

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 313
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public configure()Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->config:Lcom/koushikdutta/ion/Ion$Config;

    return-object v0
.end method

.method public dump()V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->dump()V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending bitmaps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/e/e;

    invoke-virtual {v1}, Lcom/koushikdutta/async/e/e;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Groups: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/ion/Ion$FutureSet;

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Group size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$FutureSet;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBitmapCache()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    return-object v0
.end method

.method public getCache()Lcom/koushikdutta/async/e/c;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e;->getFileCache()Lcom/koushikdutta/async/e/c;

    move-result-object v0

    return-object v0
.end method

.method public getConscryptMiddleware()Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->conscryptMiddleware:Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCookieMiddleware()Lcom/koushikdutta/ion/cookie/CookieMiddleware;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->cookieMiddleware:Lcom/koushikdutta/ion/cookie/CookieMiddleware;

    return-object v0
.end method

.method public getHttpClient()Lcom/koushikdutta/async/http/a;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingRequestCount(Ljava/lang/Object;)I
    .locals 3

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/ion/Ion$FutureSet;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 366
    monitor-exit p0

    return v0

    .line 368
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion$FutureSet;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/b/e;

    .line 369
    invoke-interface {v1}, Lcom/koushikdutta/async/b/e;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/koushikdutta/async/b/e;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 373
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public getStore()Lcom/koushikdutta/async/e/c;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->storeCache:Lcom/koushikdutta/async/e/c;

    return-object v0
.end method

.method groupCount(Ljava/lang/Object;)I
    .locals 1

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->inFlight:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/ion/Ion$FutureSet;

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion$FutureSet;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 248
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method processDeferred()V
    .locals 2

    .line 301
    sget-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->processDeferred:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    sget-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->processDeferred:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public store(Ljava/lang/String;)Lcom/koushikdutta/ion/FileCacheStore;
    .locals 2

    .line 419
    new-instance v0, Lcom/koushikdutta/ion/FileCacheStore;

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->storeCache:Lcom/koushikdutta/async/e/c;

    invoke-direct {v0, p0, v1, p1}, Lcom/koushikdutta/ion/FileCacheStore;-><init>(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/e/c;Ljava/lang/String;)V

    return-object v0
.end method
