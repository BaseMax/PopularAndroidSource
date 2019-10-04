.class public Lcom/koushikdutta/ion/Ion$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/Ion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field asyncHttpRequestFactory:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

.field final synthetic this$0:Lcom/koushikdutta/ion/Ion;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance p1, Lcom/koushikdutta/ion/Ion$Config$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/ion/Ion$Config$1;-><init>(Lcom/koushikdutta/ion/Ion$Config;)V

    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config;->asyncHttpRequestFactory:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    return-void
.end method


# virtual methods
.method public addLoader(ILcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->conscryptMiddleware:Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->initialize()V

    .line 485
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    return-object p1
.end method

.method public disableProxy()V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getSocketMiddleware()Lcom/koushikdutta/async/http/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/i;->disableProxy()V

    return-void
.end method

.method public disableSecureProxy()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/o;->disableProxy()V

    return-void
.end method

.method public getAsyncHttpRequestFactory()Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->asyncHttpRequestFactory:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    return-object v0
.end method

.method public getContentLoader()Lcom/koushikdutta/ion/loader/ContentLoader;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->contentLoader:Lcom/koushikdutta/ion/loader/ContentLoader;

    return-object v0
.end method

.method public getFileLoader()Lcom/koushikdutta/ion/loader/FileLoader;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->fileLoader:Lcom/koushikdutta/ion/loader/FileLoader;

    return-object v0
.end method

.method public declared-synchronized getGson()Lcom/google/gson/e;
    .locals 2

    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->gson:Lcom/google/gson/e;

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    iput-object v1, v0, Lcom/koushikdutta/ion/Ion;->gson:Lcom/google/gson/e;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->gson:Lcom/google/gson/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHttpLoader()Lcom/koushikdutta/ion/loader/HttpLoader;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpLoader:Lcom/koushikdutta/ion/loader/HttpLoader;

    return-object v0
.end method

.method public getLoaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/koushikdutta/ion/Loader;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageIconLoader()Lcom/koushikdutta/ion/loader/PackageIconLoader;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->packageIconLoader:Lcom/koushikdutta/ion/loader/PackageIconLoader;

    return-object v0
.end method

.method public getResponseCache()Lcom/koushikdutta/async/http/b/e;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/b/e;

    return-object v0
.end method

.method public getVideoLoader()Lcom/koushikdutta/ion/loader/VideoLoader;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->videoLoader:Lcom/koushikdutta/ion/loader/VideoLoader;

    return-object v0
.end method

.method public insertLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public proxy(Ljava/lang/String;I)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getSocketMiddleware()Lcom/koushikdutta/async/http/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/i;->enableProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public proxySecure(Ljava/lang/String;I)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/spdy/o;->enableProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public setAsyncHttpRequestFactory(Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config;->asyncHttpRequestFactory:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    return-object p0
.end method

.method public setGson(Lcom/google/gson/e;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iput-object p1, v0, Lcom/koushikdutta/ion/Ion;->gson:Lcom/google/gson/e;

    return-void
.end method

.method public setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iput-object p1, v0, Lcom/koushikdutta/ion/Ion;->logtag:Ljava/lang/String;

    .line 508
    iput p2, v0, Lcom/koushikdutta/ion/Ion;->logLevel:I

    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iput-object p1, v0, Lcom/koushikdutta/ion/Ion;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public userAgent()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->userAgent:Ljava/lang/String;

    return-object v0
.end method
