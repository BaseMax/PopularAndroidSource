.class public final Lcab/snapp/snappnetwork/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcab/snapp/snappnetwork/h;

.field private b:Z

.field private c:Lokhttp3/OkHttpClient;

.field private d:Lokhttp3/OkHttpClient;

.field private e:Lcab/snapp/snappnetwork/ApiServiceInterface;

.field private f:Lcab/snapp/snappnetwork/ApiServiceInterface;


# direct methods
.method public constructor <init>(Lcab/snapp/snappnetwork/h;Ljava/util/List;Lokhttp3/CertificatePinner;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/snappnetwork/h;",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lokhttp3/CertificatePinner;",
            "Z)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcab/snapp/snappnetwork/c;->a:Lcab/snapp/snappnetwork/h;

    .line 93
    new-instance v0, Lcab/snapp/snappnetwork/b;

    invoke-direct {v0, p1}, Lcab/snapp/snappnetwork/b;-><init>(Lcab/snapp/snappnetwork/h;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcab/snapp/snappnetwork/c;->a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/snappnetwork/h;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/snappnetwork/h;",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcab/snapp/snappnetwork/c;->a:Lcab/snapp/snappnetwork/h;

    .line 69
    new-instance v0, Lcab/snapp/snappnetwork/b;

    invoke-direct {v0, p1}, Lcab/snapp/snappnetwork/b;-><init>(Lcab/snapp/snappnetwork/h;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p1, p3}, Lcab/snapp/snappnetwork/c;->a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/snappnetwork/h;Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/snappnetwork/h;",
            "Lokhttp3/Authenticator;",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lokhttp3/CertificatePinner;",
            "Z)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcab/snapp/snappnetwork/c;->a:Lcab/snapp/snappnetwork/h;

    .line 106
    invoke-direct {p0, p2, p3, p4, p5}, Lcab/snapp/snappnetwork/c;->a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/snappnetwork/h;Lokhttp3/CertificatePinner;Z)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcab/snapp/snappnetwork/c;->a:Lcab/snapp/snappnetwork/h;

    .line 80
    new-instance v0, Lcab/snapp/snappnetwork/b;

    invoke-direct {v0, p1}, Lcab/snapp/snappnetwork/b;-><init>(Lcab/snapp/snappnetwork/h;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcab/snapp/snappnetwork/c;->a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/snappnetwork/h;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcab/snapp/snappnetwork/c;->a:Lcab/snapp/snappnetwork/h;

    .line 56
    new-instance v0, Lcab/snapp/snappnetwork/b;

    invoke-direct {v0, p1}, Lcab/snapp/snappnetwork/b;-><init>(Lcab/snapp/snappnetwork/h;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcab/snapp/snappnetwork/c;->a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)V

    return-void
.end method

.method private a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Authenticator;",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lokhttp3/CertificatePinner;",
            "Z)V"
        }
    .end annotation

    .line 117
    iput-boolean p4, p0, Lcab/snapp/snappnetwork/c;->b:Z

    if-nez p2, :cond_0

    .line 121
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    :cond_0
    new-instance v0, Lcab/snapp/snappnetwork/g;

    invoke-direct {v0}, Lcab/snapp/snappnetwork/g;-><init>()V

    .line 125
    invoke-virtual {v0, p1, p2, p3, p4}, Lcab/snapp/snappnetwork/g;->a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)Lokhttp3/OkHttpClient;

    move-result-object p3

    iput-object p3, p0, Lcab/snapp/snappnetwork/c;->c:Lokhttp3/OkHttpClient;

    const/4 p3, 0x0

    .line 126
    invoke-virtual {v0, p1, p2, p3, p4}, Lcab/snapp/snappnetwork/g;->a(Lokhttp3/Authenticator;Ljava/util/List;Lokhttp3/CertificatePinner;Z)Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/c;->d:Lokhttp3/OkHttpClient;

    .line 128
    iget-object p1, p0, Lcab/snapp/snappnetwork/c;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/g;->createRetrofitClient(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;

    move-result-object p1

    const-class p2, Lcab/snapp/snappnetwork/ApiServiceInterface;

    .line 129
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/snappnetwork/ApiServiceInterface;

    iput-object p1, p0, Lcab/snapp/snappnetwork/c;->e:Lcab/snapp/snappnetwork/ApiServiceInterface;

    .line 131
    iget-object p1, p0, Lcab/snapp/snappnetwork/c;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/g;->createRetrofitClient(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;

    move-result-object p1

    const-class p2, Lcab/snapp/snappnetwork/ApiServiceInterface;

    .line 132
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/snappnetwork/ApiServiceInterface;

    iput-object p1, p0, Lcab/snapp/snappnetwork/c;->f:Lcab/snapp/snappnetwork/ApiServiceInterface;

    return-void
.end method


# virtual methods
.method public final buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappnetwork/d;"
        }
    .end annotation

    .line 164
    new-instance v0, Lcab/snapp/snappnetwork/d;

    invoke-direct {v0, p0, p1, p2}, Lcab/snapp/snappnetwork/d;-><init>(Lcab/snapp/snappnetwork/c;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final cancelAllRequests()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcab/snapp/snappnetwork/c;->c:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappnetwork/c;->d:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    :cond_1
    return-void
.end method

.method public final getRefreshTokenAuthenticator()Lcab/snapp/snappnetwork/h;
    .locals 1

    .line 142
    iget-object v0, p0, Lcab/snapp/snappnetwork/c;->a:Lcab/snapp/snappnetwork/h;

    return-object v0
.end method

.method public final getRestClient(Z)Lcab/snapp/snappnetwork/ApiServiceInterface;
    .locals 0

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcab/snapp/snappnetwork/c;->e:Lcab/snapp/snappnetwork/ApiServiceInterface;

    return-object p1

    .line 158
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappnetwork/c;->f:Lcab/snapp/snappnetwork/ApiServiceInterface;

    return-object p1
.end method
