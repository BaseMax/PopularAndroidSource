.class final Lcom/mapbox/android/telemetry/ai$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcom/mapbox/android/telemetry/o;

.field b:Lokhttp3/OkHttpClient;

.field c:Lokhttp3/HttpUrl;

.field d:Ljavax/net/ssl/SSLSocketFactory;

.field e:Ljavax/net/ssl/X509TrustManager;

.field f:Ljavax/net/ssl/HostnameVerifier;

.field g:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai$a;->a:Lcom/mapbox/android/telemetry/o;

    .line 85
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai$a;->b:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai$a;->c:Lokhttp3/HttpUrl;

    .line 87
    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai$a;->d:Ljavax/net/ssl/SSLSocketFactory;

    .line 88
    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai$a;->e:Ljavax/net/ssl/X509TrustManager;

    .line 89
    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai$a;->f:Ljavax/net/ssl/HostnameVerifier;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/mapbox/android/telemetry/ai$a;->g:Z

    return-void
.end method


# virtual methods
.method final a(Lokhttp3/HttpUrl;)Lcom/mapbox/android/telemetry/ai$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lcom/mapbox/android/telemetry/ai$a;->c:Lokhttp3/HttpUrl;

    :cond_0
    return-object p0
.end method

.method final a()Lcom/mapbox/android/telemetry/ai;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/mapbox/android/telemetry/ai$a;->c:Lokhttp3/HttpUrl;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/mapbox/android/telemetry/ai;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/android/telemetry/ai$a;->a:Lcom/mapbox/android/telemetry/o;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-static {v0}, Lcom/mapbox/android/telemetry/ai;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ai$a;->c:Lokhttp3/HttpUrl;

    .line 139
    :cond_0
    new-instance v0, Lcom/mapbox/android/telemetry/ai;

    invoke-direct {v0, p0}, Lcom/mapbox/android/telemetry/ai;-><init>(Lcom/mapbox/android/telemetry/ai$a;)V

    return-object v0
.end method
