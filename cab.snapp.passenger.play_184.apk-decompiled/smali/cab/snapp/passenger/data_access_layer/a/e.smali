.class public final Lcab/snapp/passenger/data_access_layer/a/e;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/e;->c:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/e;->a:Ljava/lang/Object;

    .line 42
    iput p2, p0, Lcab/snapp/passenger/data_access_layer/a/e;->b:I

    .line 44
    instance-of p2, p1, Lcab/snapp/snappnetwork/model/b;

    if-eqz p2, :cond_0

    .line 46
    check-cast p1, Lcab/snapp/snappnetwork/model/b;

    .line 47
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/b;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/e;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;I)V

    .line 61
    iput-object p3, p0, Lcab/snapp/passenger/data_access_layer/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static fromNetworkThrowable(Ljava/lang/Throwable;)Lcab/snapp/passenger/data_access_layer/a/e;
    .locals 7

    const-string v0, "message"

    const-string v1, "status"

    const-string v2, "data"

    const/4 v3, -0x1

    .line 77
    :try_start_0
    move-object v4, p0

    check-cast v4, Lretrofit2/HttpException;

    invoke-virtual {v4}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v4

    .line 78
    new-instance v5, Lorg/a/c;

    invoke-virtual {v4}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    new-instance v6, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v5, v1}, Lorg/a/c;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v6, p0, v1}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v6, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v4}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-direct {v6, p0, v1}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;I)V

    .line 90
    :goto_0
    invoke-virtual {v5, v2}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v5, v2}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v5, v2}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcab/snapp/passenger/data_access_layer/a/e;->c:Ljava/lang/String;

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v4}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v4}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcab/snapp/passenger/data_access_layer/a/e;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v6

    :catch_0
    move-exception v0

    .line 113
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 114
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-direct {v0, p0, v3}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :catch_1
    move-exception v0

    .line 108
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 109
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-direct {v0, p0, v3}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :catch_2
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 105
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-direct {v0, p0, v3}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .line 125
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/a/e;->b:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/e;->c:Ljava/lang/String;

    return-object v0
.end method
