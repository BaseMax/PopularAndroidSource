.class Lcom/koushikdutta/ion/IonRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/ion/builder/Builders$Any$B;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$F;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$M;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$U;
.implements Lcom/koushikdutta/ion/builder/LoadBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;,
        Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$F;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$M;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$U;",
        "Lcom/koushikdutta/ion/builder/LoadBuilder<",
        "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field body:Lcom/koushikdutta/async/http/a/a;

.field bodyParameters:Lcom/koushikdutta/async/http/s;

.field contextReference:Lcom/koushikdutta/ion/ContextReference;

.field followRedirect:Z

.field groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field headers:Lcom/koushikdutta/async/http/n;

.field headersCallback:Lcom/koushikdutta/ion/HeadersCallback;

.field ion:Lcom/koushikdutta/ion/Ion;

.field loadRequestCallback:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

.field logLevel:I

.field logTag:Ljava/lang/String;

.field method:Ljava/lang/String;

.field methodWasSet:Z

.field multipartBody:Lcom/koushikdutta/async/http/a/f;

.field noCache:Z

.field progress:Lcom/koushikdutta/ion/ProgressCallback;

.field progressBar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field progressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field progressHandler:Lcom/koushikdutta/ion/ProgressCallback;

.field proxyHost:Ljava/lang/String;

.field proxyPort:I

.field query:Lcom/koushikdutta/async/http/s;

.field timeoutMilliseconds:I

.field uploadProgress:Lcom/koushikdutta/ion/ProgressCallback;

.field uploadProgressBar:Landroid/widget/ProgressBar;

.field uploadProgressDialog:Landroid/app/ProgressDialog;

.field uploadProgressHandler:Lcom/koushikdutta/ion/ProgressCallback;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/ContextReference;Lcom/koushikdutta/ion/Ion;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->handler:Landroid/os/Handler;

    const-string v0, "GET"

    .line 86
    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->method:Ljava/lang/String;

    const/16 v0, 0x7530

    .line 186
    iput v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->timeoutMilliseconds:I

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->followRedirect:Z

    .line 90
    invoke-virtual {p1}, Lcom/koushikdutta/ion/ContextReference;->isAlive()Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    .line 94
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/ContextReference;

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder;->postExecute(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private getHeaders()Lcom/koushikdutta/async/http/n;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/n;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/n;

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/n;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/d;->setDefaultHeaders(Lcom/koushikdutta/async/http/n;Landroid/net/Uri;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/n;

    return-object v0
.end method

.method private getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;)V"
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->prepareURI()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid URI"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 307
    :cond_0
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->prepareRequest(Landroid/net/Uri;)Lcom/koushikdutta/async/http/d;

    move-result-object v0

    .line 308
    iput-object v0, p1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->initialRequest:Lcom/koushikdutta/async/http/d;

    .line 310
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/d;)V

    return-void
.end method

.method private getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/d;",
            ")V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->body:Lcom/koushikdutta/async/http/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgress:Lcom/koushikdutta/ion/ProgressCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    new-instance v0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->body:Lcom/koushikdutta/async/http/a/a;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$2;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$2;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/RequestBodyUploadObserver;-><init>(Lcom/koushikdutta/async/http/a/a;Lcom/koushikdutta/ion/ProgressCallback;)V

    .line 344
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/d;->setBody(Lcom/koushikdutta/async/http/a/a;)V

    .line 347
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->resolveAndLoadRequest(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    return-void
.end method

.method private loadInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->method:Ljava/lang/String;

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    .line 106
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    return-object p0
.end method

.method private postExecute(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object p1, p1, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/a;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a;->getServer()Lcom/koushikdutta/async/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void

    .line 253
    :cond_0
    invoke-static {p1, v0}, Lcom/koushikdutta/async/h;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private prepareRequest(Landroid/net/Uri;)Lcom/koushikdutta/async/http/d;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion$Config;->getAsyncHttpRequestFactory()Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/n;

    invoke-interface {v0, p1, v1, v2}, Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;->createAsyncHttpRequest(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/d;

    move-result-object p1

    .line 283
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->followRedirect:Z

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->setFollowRedirect(Z)Lcom/koushikdutta/async/http/d;

    .line 284
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->body:Lcom/koushikdutta/async/http/a/a;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->setBody(Lcom/koushikdutta/async/http/a/a;)V

    .line 285
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->logtag:Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget v1, v1, Lcom/koushikdutta/ion/Ion;->logLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/http/d;->setLogging(Ljava/lang/String;I)V

    .line 286
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->logTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    iget v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->logLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/http/d;->setLogging(Ljava/lang/String;I)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->proxyHost:Ljava/lang/String;

    iget v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->proxyPort:I

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/http/d;->enableProxy(Ljava/lang/String;I)V

    .line 289
    iget v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->timeoutMilliseconds:I

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->setTimeout(I)Lcom/koushikdutta/async/http/d;

    const-string v0, "preparing request"

    .line 290
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    return-object p1
.end method

.method private prepareURI()Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/s;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 262
    iget-object v4, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 275
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/a/a<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 201
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->methodWasSet:Z

    if-nez v0, :cond_0

    const-string v0, "POST"

    .line 202
    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->method:Ljava/lang/String;

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->body:Lcom/koushikdutta/async/http/a/a;

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    if-eqz p2, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/n;->addAll(Ljava/lang/String;Ljava/util/List;)Lcom/koushikdutta/async/http/n;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->addHeaders(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addMultipartParts(Ljava/lang/Iterable;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/koushikdutta/async/http/a/g;",
            ">;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    if-nez v0, :cond_0

    .line 841
    new-instance v0, Lcom/koushikdutta/async/http/a/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/a/f;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    .line 842
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 845
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/a/g;

    .line 846
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/a/f;->addPart(Lcom/koushikdutta/async/http/a/g;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs addMultipartParts([Lcom/koushikdutta/async/http/a/g;)Lcom/koushikdutta/ion/builder/Builders$Any$M;
    .locals 4

    .line 853
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Lcom/koushikdutta/async/http/a/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/a/f;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    .line 855
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 858
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 859
    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/http/a/f;->addPart(Lcom/koushikdutta/async/http/a/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic addMultipartParts(Ljava/lang/Iterable;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->addMultipartParts(Ljava/lang/Iterable;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addMultipartParts([Lcom/koushikdutta/async/http/a/g;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->addMultipartParts([Lcom/koushikdutta/async/http/a/g;)Lcom/koushikdutta/ion/builder/Builders$Any$M;

    move-result-object p1

    return-object p1
.end method

.method public addQueries(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/koushikdutta/async/http/s;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/s;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/s;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic addQueries(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->addQueries(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/koushikdutta/async/http/s;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/s;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/s;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public as(Lcom/google/gson/b/a;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/b/a<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 926
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/e;Lcom/google/gson/b/a;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/c/a<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 747
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 921
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/e;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public asBitmap()Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/e<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 907
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->asBitmap()Lcom/koushikdutta/async/b/e;

    move-result-object v0

    return-object v0
.end method

.method public asByteArray()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "[B>;"
        }
    .end annotation

    .line 711
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$7;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asCachedBitmap()Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 1

    .line 892
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->asCachedBitmap()Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public asDataEmitter()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/koushikdutta/async/n;",
            ">;"
        }
    .end annotation

    .line 742
    new-instance v0, Lcom/koushikdutta/ion/DataEmitterParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/DataEmitterParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asDocument()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .line 1007
    new-instance v0, Lcom/koushikdutta/async/c/c;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asInputStream()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 737
    new-instance v0, Lcom/koushikdutta/ion/InputStreamParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/InputStreamParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asJsonArray()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation

    .line 686
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonArrayParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asJsonArray(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation

    .line 696
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonArrayParser;

    invoke-direct {v0, p1}, Lcom/koushikdutta/ion/gson/GsonArrayParser;-><init>(Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public asJsonObject()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 681
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonObjectParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asJsonObject(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonObjectParser;

    invoke-direct {v0, p1}, Lcom/koushikdutta/ion/gson/GsonObjectParser;-><init>(Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public asString()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asString(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 706
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/c/f;-><init>(Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public basicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 4

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Basic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "%s:%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    invoke-virtual {p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic basicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->basicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method execute(Lcom/koushikdutta/async/q;ZLjava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/q;",
            "ZTT;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/q;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method

.method execute(Lcom/koushikdutta/async/q;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/q;",
            "ZTT;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;"
        }
    .end annotation

    .line 611
    new-instance v6, Lcom/koushikdutta/ion/IonRequestBuilder$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/IonRequestBuilder$5;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;ZLcom/koushikdutta/async/q;Ljava/lang/Object;)V

    .line 631
    invoke-direct {p0, v6}, Lcom/koushikdutta/ion/IonRequestBuilder;->getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    return-object v6
.end method

.method execute(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/c/a<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/c/a;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method execute(Lcom/koushikdutta/async/c/a;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/c/a<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 642
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->prepareURI()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 646
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->prepareRequest(Landroid/net/Uri;)Lcom/koushikdutta/async/http/d;

    move-result-object v1

    .line 647
    invoke-interface {p1}, Lcom/koushikdutta/async/c/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 648
    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v3, v3, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/koushikdutta/ion/Loader;

    .line 649
    iget-object v5, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v4, v5, v1, v2}, Lcom/koushikdutta/ion/Loader;->load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/d;Ljava/lang/reflect/Type;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    .line 655
    :cond_1
    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$6;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;Lcom/koushikdutta/async/c/a;)V

    if-nez v0, :cond_2

    .line 670
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Invalid URI"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Exception;)Z

    return-object v2

    .line 674
    :cond_2
    iput-object v1, v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->initialRequest:Lcom/koushikdutta/async/http/d;

    .line 675
    invoke-direct {p0, v2}, Lcom/koushikdutta/ion/IonRequestBuilder;->getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    return-object v2
.end method

.method public followRedirect(Z)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->followRedirect:Z

    return-object p0
.end method

.method public bridge synthetic followRedirect(Z)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->followRedirect(Z)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public group(Ljava/lang/Object;)Lcom/koushikdutta/ion/builder/FutureBuilder;
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public intoImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/future/ImageViewFuture;
    .locals 1

    .line 881
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->withImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->intoImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/future/ImageViewFuture;

    move-result-object p1

    return-object p1
.end method

.method invokeLoadRequest(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->loadRequestCallback:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;->loadRequest(Lcom/koushikdutta/async/http/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->loadRequest(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    :cond_1
    return-void
.end method

.method public isLocallyCached()Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;
    .locals 1

    .line 902
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->isLocallyCached()Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 886
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->loadInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    const-string v0, "GET"

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->loadInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->methodWasSet:Z

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->loadInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method loadRequest(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;)V"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/ion/Loader;

    .line 414
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v1, v2, p1, p2}, Lcom/koushikdutta/ion/Loader;->load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Using loader: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logi(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2, v2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    return-void

    .line 421
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown uri scheme"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Exception;)Z

    return-void
.end method

.method public noCache()Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 2

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->noCache:Z

    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic noCache()Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->noCache()Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object v0

    return-object v0
.end method

.method public onHeaders(Lcom/koushikdutta/ion/HeadersCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 995
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headersCallback:Lcom/koushikdutta/ion/HeadersCallback;

    return-object p0
.end method

.method public bridge synthetic onHeaders(Lcom/koushikdutta/ion/HeadersCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->onHeaders(Lcom/koushikdutta/ion/HeadersCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public progress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->progress:Lcom/koushikdutta/ion/ProgressCallback;

    return-object p0
.end method

.method public bridge synthetic progress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->progress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public progressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 578
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->progressBar:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public bridge synthetic progressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->progressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public progressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 584
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->progressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public bridge synthetic progressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->progressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public progressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->progressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    return-object p0
.end method

.method public bridge synthetic progressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->progressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public proxy(Ljava/lang/String;I)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->proxyHost:Ljava/lang/String;

    .line 943
    iput p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->proxyPort:I

    return-object p0
.end method

.method public bridge synthetic proxy(Ljava/lang/String;I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->proxy(Ljava/lang/String;I)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method recursiveResolveRequest(Lcom/koushikdutta/async/http/d;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/d;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/http/d;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Lcom/koushikdutta/async/b/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 353
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$3;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/b/i;)V

    .line 377
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-object v0
.end method

.method public removeCachedBitmap()V
    .locals 1

    .line 897
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->removeCachedBitmap()V

    return-void
.end method

.method resolveAndLoadRequest(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/d;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;)V"
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->recursiveResolveRequest(Lcom/koushikdutta/async/http/d;)Lcom/koushikdutta/async/b/e;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$4;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/d;)V

    .line 383
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/b/e;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;

    return-void
.end method

.method resolveRequest(Lcom/koushikdutta/async/http/d;)Lcom/koushikdutta/async/b/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/d;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/http/d;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/ion/Loader;

    .line 427
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/ContextReference;

    invoke-virtual {v2}, Lcom/koushikdutta/ion/ContextReference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v1, v2, v3, p1}, Lcom/koushikdutta/ion/Loader;->resolve(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/d;)Lcom/koushikdutta/async/b/e;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/s;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Lcom/koushikdutta/async/http/s;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/s;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/s;

    .line 775
    new-instance v0, Lcom/koushikdutta/async/http/a/l;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/s;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/a/l;-><init>(Lcom/koushikdutta/async/http/s;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 778
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/s;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBodyParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/s;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/koushikdutta/async/http/s;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/s;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/s;

    .line 785
    new-instance v0, Lcom/koushikdutta/async/http/a/l;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/s;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/a/l;-><init>(Lcom/koushikdutta/async/http/s;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/s;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic setBodyParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBodyParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setByteArrayBody([B)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 2

    if-eqz p1, :cond_0

    .line 1019
    new-instance v0, Lcom/koushikdutta/async/http/a/h;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/http/a/h;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setByteArrayBody([B)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setByteArrayBody([B)Lcom/koushikdutta/ion/builder/Builders$Any$F;

    move-result-object p1

    return-object p1
.end method

.method public setDocumentBody(Lorg/w3c/dom/Document;)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 1

    .line 1001
    new-instance v0, Lcom/koushikdutta/async/http/a/b;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/a/b;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setDocumentBody(Lorg/w3c/dom/Document;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setDocumentBody(Lorg/w3c/dom/Document;)Lcom/koushikdutta/ion/builder/Builders$Any$F;

    move-result-object p1

    return-object p1
.end method

.method public setFileBody(Ljava/io/File;)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 1

    .line 1012
    new-instance v0, Lcom/koushikdutta/async/http/a/c;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/a/c;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setFileBody(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setFileBody(Ljava/io/File;)Lcom/koushikdutta/ion/builder/Builders$Any$F;

    move-result-object p1

    return-object p1
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public bridge synthetic setHandler(Landroid/os/Handler;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHandler(Landroid/os/Handler;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    if-nez p2, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/n;->removeAll(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :goto_0
    return-object p0
.end method

.method public varargs setHeader([Lcom/koushikdutta/async/http/t;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 5

    .line 1037
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    .line 1038
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1039
    invoke-interface {v3}, Lcom/koushikdutta/async/http/t;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/koushikdutta/async/http/t;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader([Lcom/koushikdutta/async/http/t;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader([Lcom/koushikdutta/async/http/t;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public setJsonArrayBody(Lcom/google/gson/JsonArray;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 214
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonBody;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonBody;-><init>(Lcom/google/gson/e;Lcom/google/gson/JsonElement;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setJsonArrayBody(Lcom/google/gson/JsonArray;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setJsonArrayBody(Lcom/google/gson/JsonArray;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setJsonObjectBody(Lcom/google/gson/JsonObject;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 209
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonBody;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonBody;-><init>(Lcom/google/gson/e;Lcom/google/gson/JsonElement;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setJsonObjectBody(Lcom/google/gson/JsonObject;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setJsonObjectBody(Lcom/google/gson/JsonObject;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setJsonPojoBody(Ljava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 3

    .line 955
    new-instance v0, Lcom/koushikdutta/ion/gson/PojoBody;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/koushikdutta/ion/gson/PojoBody;-><init>(Lcom/google/gson/e;Ljava/lang/Object;Lcom/google/gson/b/a;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public setJsonPojoBody(Ljava/lang/Object;Lcom/google/gson/b/a;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 949
    new-instance v0, Lcom/koushikdutta/ion/gson/PojoBody;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/koushikdutta/ion/gson/PojoBody;-><init>(Lcom/google/gson/e;Ljava/lang/Object;Lcom/google/gson/b/a;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setJsonPojoBody(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setJsonPojoBody(Ljava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setJsonPojoBody(Ljava/lang/Object;Lcom/google/gson/b/a;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setJsonPojoBody(Ljava/lang/Object;Lcom/google/gson/b/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->logTag:Ljava/lang/String;

    .line 915
    iput p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->logLevel:I

    return-object p0
.end method

.method public bridge synthetic setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartContentType(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Lcom/koushikdutta/async/http/a/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/a/f;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    .line 868
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/a/f;->setContentType(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setMultipartContentType(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartContentType(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 794
    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Lcom/koushikdutta/async/http/a/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/a/f;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    .line 801
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 804
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/a/d;

    invoke-direct {v0, p1, p3}, Lcom/koushikdutta/async/http/a/d;-><init>(Ljava/lang/String;Ljava/io/File;)V

    if-nez p2, :cond_1

    .line 807
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/e/a;->tryGetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 810
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/a/d;->setContentType(Ljava/lang/String;)V

    .line 812
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/a/f;->addPart(Lcom/koushikdutta/async/http/a/g;)V

    return-object p0
.end method

.method public bridge synthetic setMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Lcom/koushikdutta/async/http/a/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/a/f;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    .line 820
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 823
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/a/f;->addStringPart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 829
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 832
    invoke-virtual {p0, v1, v3}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public bridge synthetic setMultipartParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setStreamBody(Ljava/io/InputStream;)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 2

    .line 1025
    new-instance v0, Lcom/koushikdutta/async/http/a/h;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/koushikdutta/async/http/a/h;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public setStreamBody(Ljava/io/InputStream;I)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 1

    .line 1031
    new-instance v0, Lcom/koushikdutta/async/http/a/h;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/a/h;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public setStringBody(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 219
    new-instance v0, Lcom/koushikdutta/async/http/a/j;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/a/j;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setStringBody(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setStringBody(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTimeout(I)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 189
    iput p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->timeoutMilliseconds:I

    return-object p0
.end method

.method public bridge synthetic setTimeout(I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setTimeout(I)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public uploadProgress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgress:Lcom/koushikdutta/ion/ProgressCallback;

    return-object p0
.end method

.method public bridge synthetic uploadProgress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public uploadProgressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public bridge synthetic uploadProgressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public uploadProgressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public bridge synthetic uploadProgressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public uploadProgressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    return-object p0
.end method

.method public bridge synthetic uploadProgressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "User-Agent"

    .line 130
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withBitmap()Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 1

    .line 876
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    return-object v0
.end method

.method public bridge synthetic withBitmap()Lcom/koushikdutta/ion/builder/Builders$Any$BF;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->withBitmap()Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 762
    new-instance v0, Lcom/koushikdutta/async/d/b;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/d/b;-><init>(Lcom/koushikdutta/async/h;Ljava/io/File;)V

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$8;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$8;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/q;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Ljava/io/File;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->write(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/io/OutputStream;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/io/OutputStream;",
            ">(TF;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TF;>;"
        }
    .end annotation

    .line 757
    new-instance v0, Lcom/koushikdutta/async/d/e;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/d/e;-><init>(Lcom/koushikdutta/async/h;Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/q;ZLjava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/io/OutputStream;Z)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/io/OutputStream;",
            ">(TF;Z)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TF;>;"
        }
    .end annotation

    .line 752
    new-instance v0, Lcom/koushikdutta/async/d/e;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/d/e;-><init>(Lcom/koushikdutta/async/h;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/q;ZLjava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method
