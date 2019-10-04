.class final Lcab/snapp/snappnetwork/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# instance fields
.field private final a:Lcab/snapp/snappnetwork/h;


# direct methods
.method public constructor <init>(Lcab/snapp/snappnetwork/h;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcab/snapp/snappnetwork/b;->a:Lcab/snapp/snappnetwork/h;

    return-void
.end method

.method private static a(Lokhttp3/Response;)Z
    .locals 3

    const-string v0, "Authorization"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method


# virtual methods
.method public final authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isRequestNeedAuth: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p2}, Lcab/snapp/snappnetwork/b;->a(Lokhttp3/Response;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 43
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappnetwork/b;->a:Lcab/snapp/snappnetwork/h;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcab/snapp/snappnetwork/h;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcab/snapp/snappnetwork/b;->a:Lcab/snapp/snappnetwork/h;

    invoke-interface {p1}, Lcab/snapp/snappnetwork/h;->getRefreshTokenRequest()Lcab/snapp/snappnetwork/e;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/e;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 62
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGson()Lcom/google/gson/e;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcab/snapp/snappnetwork/model/c;

    .line 62
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/snappnetwork/model/c;

    .line 68
    iget-object v0, p0, Lcab/snapp/snappnetwork/b;->a:Lcab/snapp/snappnetwork/h;

    invoke-interface {v0, p1}, Lcab/snapp/snappnetwork/h;->onTokenRefreshed(Lcab/snapp/snappnetwork/model/c;)V

    .line 71
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    .line 72
    invoke-virtual {p2, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 78
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappnetwork/b;->a:Lcab/snapp/snappnetwork/h;

    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-interface {p1, p2}, Lcab/snapp/snappnetwork/h;->onRefreshTokenError(I)V

    :cond_2
    return-object v0
.end method
