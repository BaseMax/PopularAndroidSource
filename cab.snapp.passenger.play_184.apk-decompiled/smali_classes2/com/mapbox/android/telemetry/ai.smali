.class final Lcom/mapbox/android/telemetry/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/telemetry/ai$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mapbox/android/telemetry/o;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/mapbox/android/telemetry/o;

.field final b:Lokhttp3/OkHttpClient;

.field final c:Lokhttp3/HttpUrl;

.field final d:Ljavax/net/ssl/SSLSocketFactory;

.field final e:Ljavax/net/ssl/X509TrustManager;

.field final f:Ljavax/net/ssl/HostnameVerifier;

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/mapbox/android/telemetry/ai$1;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/ai$1;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/ai;->h:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/mapbox/android/telemetry/ai$a;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v0, p1, Lcom/mapbox/android/telemetry/ai$a;->a:Lcom/mapbox/android/telemetry/o;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai;->a:Lcom/mapbox/android/telemetry/o;

    .line 38
    iget-object v0, p1, Lcom/mapbox/android/telemetry/ai$a;->b:Lokhttp3/OkHttpClient;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai;->b:Lokhttp3/OkHttpClient;

    .line 39
    iget-object v0, p1, Lcom/mapbox/android/telemetry/ai$a;->c:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai;->c:Lokhttp3/HttpUrl;

    .line 40
    iget-object v0, p1, Lcom/mapbox/android/telemetry/ai$a;->d:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai;->d:Ljavax/net/ssl/SSLSocketFactory;

    .line 41
    iget-object v0, p1, Lcom/mapbox/android/telemetry/ai$a;->e:Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai;->e:Ljavax/net/ssl/X509TrustManager;

    .line 42
    iget-object v0, p1, Lcom/mapbox/android/telemetry/ai$a;->f:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 43
    iget-boolean p1, p1, Lcom/mapbox/android/telemetry/ai$a;->g:Z

    iput-boolean p1, p0, Lcom/mapbox/android/telemetry/ai;->g:Z

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 16
    sget-object v0, Lcom/mapbox/android/telemetry/ai;->h:Ljava/util/Map;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2

    .line 78
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 80
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a(Lcom/mapbox/android/telemetry/e;Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;
    .locals 4

    .line 145
    new-instance v0, Lcom/mapbox/android/telemetry/f;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/f;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/mapbox/android/telemetry/ai;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/mapbox/android/telemetry/ai;->a:Lcom/mapbox/android/telemetry/o;

    .line 148
    invoke-static {v2, p1}, Lcom/mapbox/android/telemetry/f;->a(Lcom/mapbox/android/telemetry/o;Lcom/mapbox/android/telemetry/e;)Lokhttp3/CertificatePinner;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lokhttp3/ConnectionSpec;

    sget-object v2, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    aput-object v2, v0, v1

    .line 149
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 155
    :cond_0
    iget-object p2, p0, Lcom/mapbox/android/telemetry/ai;->d:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p0, Lcom/mapbox/android/telemetry/ai;->e:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p2, v0}, Lcom/mapbox/android/telemetry/ai;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 156
    iget-object p2, p0, Lcom/mapbox/android/telemetry/ai;->d:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p0, Lcom/mapbox/android/telemetry/ai;->e:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1, p2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 157
    iget-object p2, p0, Lcom/mapbox/android/telemetry/ai;->f:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 160
    :cond_1
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method
