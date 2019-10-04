.class public final Lcab/snapp/snappnetwork/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideGson()Lcom/google/gson/e;
    .locals 1

    .line 145
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGsonBuilder()Lcom/google/gson/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/f;->setLenient()Lcom/google/gson/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    return-object v0
.end method

.method public static provideGsonBuilder()Lcom/google/gson/f;
    .locals 1

    .line 138
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    .line 139
    invoke-virtual {v0}, Lcom/google/gson/f;->setLenient()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)Lokhttp3/OkHttpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Authenticator;",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lokhttp3/CertificatePinner;",
            "Z)",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    .line 1132
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 63
    new-instance v1, Lcab/snapp/snappnetwork/g$1;

    invoke-direct {v1, p0}, Lcab/snapp/snappnetwork/g$1;-><init>(Lcab/snapp/snappnetwork/g;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p4, :cond_0

    .line 2124
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 2125
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 83
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 86
    new-instance v1, Lcom/ihsanbal/logging/d$a;

    invoke-direct {v1}, Lcom/ihsanbal/logging/d$a;-><init>()V

    sget-object v2, Lcom/ihsanbal/logging/Level;->BASIC:Lcom/ihsanbal/logging/Level;

    .line 87
    invoke-virtual {v1, v2}, Lcom/ihsanbal/logging/d$a;->setLevel(Lcom/ihsanbal/logging/Level;)Lcom/ihsanbal/logging/d$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 88
    invoke-virtual {v1, v2}, Lcom/ihsanbal/logging/d$a;->loggable(Z)Lcom/ihsanbal/logging/d$a;

    move-result-object v1

    const/4 v2, 0x4

    .line 89
    invoke-virtual {v1, v2}, Lcom/ihsanbal/logging/d$a;->log(I)Lcom/ihsanbal/logging/d$a;

    move-result-object v1

    const-string v2, "SnappNetworkRequest"

    .line 90
    invoke-virtual {v1, v2}, Lcom/ihsanbal/logging/d$a;->request(Ljava/lang/String;)Lcom/ihsanbal/logging/d$a;

    move-result-object v1

    const-string v2, "SnappNetworkResponse"

    .line 91
    invoke-virtual {v1, v2}, Lcom/ihsanbal/logging/d$a;->response(Ljava/lang/String;)Lcom/ihsanbal/logging/d$a;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/ihsanbal/logging/d$a;->build()Lcom/ihsanbal/logging/d;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 98
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    if-eqz p2, :cond_2

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lokhttp3/Interceptor;

    .line 105
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 115
    :cond_3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0xf

    invoke-virtual {v0, p2, p3, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 116
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 117
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public final createRetrofitClient(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;
    .locals 2

    .line 41
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "http://snapp.ir"

    .line 42
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 44
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 45
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGson()Lcom/google/gson/e;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/e;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method
