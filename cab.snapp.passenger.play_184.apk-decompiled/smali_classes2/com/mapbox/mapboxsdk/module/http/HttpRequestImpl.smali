.class public Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/http/HttpRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl$OkHttpCallback;
    }
.end annotation


# static fields
.field static final DEFAULT_CLIENT:Lokhttp3/OkHttpClient;

.field static client:Lokhttp3/OkHttpClient;

.field private static final userAgentString:Ljava/lang/String;


# instance fields
.field private call:Lokhttp3/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/mapbox/mapboxsdk/http/HttpIdentifier;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Mapbox/8.3.0-beta.1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "6d78890"

    aput-object v2, v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "%s %s (%s) Android/%s (%s)"

    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/module/http/HttpRequestUtil;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->userAgentString:Ljava/lang/String;

    .line 47
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->getDispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->DEFAULT_CLIENT:Lokhttp3/OkHttpClient;

    sput-object v0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    .line 99
    sput-boolean p0, Lcom/mapbox/mapboxsdk/http/HttpLogger;->logEnabled:Z

    return-void
.end method

.method public static enablePrintRequestUrlOnFailure(Z)V
    .locals 0

    .line 95
    sput-boolean p0, Lcom/mapbox/mapboxsdk/http/HttpLogger;->logRequestUrl:Z

    return-void
.end method

.method private static getDispatcher()Lokhttp3/Dispatcher;
    .locals 3

    .line 184
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/16 v1, 0x14

    .line 188
    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 192
    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    :goto_0
    return-object v0
.end method

.method public static setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    sput-object p0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->client:Lokhttp3/OkHttpClient;

    return-void

    .line 106
    :cond_0
    sget-object p0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->DEFAULT_CLIENT:Lokhttp3/OkHttpClient;

    sput-object p0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->client:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public executeRequest(Lcom/mapbox/mapboxsdk/http/HttpResponder;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 57
    new-instance p2, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl$OkHttpCallback;

    invoke-direct {p2, p1}, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl$OkHttpCallback;-><init>(Lcom/mapbox/mapboxsdk/http/HttpResponder;)V

    .line 59
    :try_start_0
    invoke-static {p4}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x6

    const-string p3, "[HTTP] Unable to parse resourceUrl %s"

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p4, p5, p6

    .line 61
    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/mapbox/mapboxsdk/http/HttpLogger;->log(ILjava/lang/String;)V

    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/mapbox/mapboxsdk/constants/MapboxConstants;->MAPBOX_LOCALE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 66
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->querySize()I

    move-result p1

    invoke-static {p3, p4, p1, p7}, Lcom/mapbox/mapboxsdk/http/HttpRequestUrl;->buildResourceUrl(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 69
    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    sget-object p4, Lcom/mapbox/mapboxsdk/constants/MapboxConstants;->MAPBOX_LOCALE:Ljava/util/Locale;

    .line 70
    invoke-virtual {p1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p3, "User-Agent"

    sget-object p4, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->userAgentString:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, p3, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    const-string p3, "If-None-Match"

    .line 73
    invoke-virtual {p1, p3, p5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    const-string p3, "If-Modified-Since"

    .line 75
    invoke-virtual {p1, p3, p6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 78
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 79
    sget-object p3, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->call:Lokhttp3/Call;

    .line 80
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->call:Lokhttp3/Call;

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->call:Lokhttp3/Call;

    invoke-static {p2, p3, p1}, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl$OkHttpCallback;->access$000(Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl$OkHttpCallback;Lokhttp3/Call;Ljava/lang/Exception;)V

    return-void
.end method
