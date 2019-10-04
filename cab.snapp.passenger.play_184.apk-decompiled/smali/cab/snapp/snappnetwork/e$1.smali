.class final Lcab/snapp/snappnetwork/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappnetwork/e;->performRequest(Lcab/snapp/snappnetwork/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappnetwork/a/a;

.field final synthetic b:Lcab/snapp/snappnetwork/e;


# direct methods
.method constructor <init>(Lcab/snapp/snappnetwork/e;Lcab/snapp/snappnetwork/a/a;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcab/snapp/snappnetwork/e$1;->b:Lcab/snapp/snappnetwork/e;

    iput-object p2, p0, Lcab/snapp/snappnetwork/e$1;->a:Lcab/snapp/snappnetwork/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 159
    new-instance p1, Lcab/snapp/snappnetwork/model/b;

    invoke-direct {p1}, Lcab/snapp/snappnetwork/model/b;-><init>()V

    .line 160
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/model/b;->setMessage(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcab/snapp/snappnetwork/e$1;->a:Lcab/snapp/snappnetwork/a/a;

    sget v0, Lcab/snapp/snappnetwork/b/a;->NETWORK_FAILURE:I

    invoke-virtual {p2, p1, v0}, Lcab/snapp/snappnetwork/a/a;->onFailure(Lcab/snapp/snappnetwork/model/b;I)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    .line 90
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    const/16 v1, 0xc8

    if-gt v1, p1, :cond_4

    const/16 v1, 0x12c

    if-gt p1, v1, :cond_4

    .line 92
    iget-object v1, p0, Lcab/snapp/snappnetwork/e$1;->b:Lcab/snapp/snappnetwork/e;

    .line 1025
    iget-object v1, v1, Lcab/snapp/snappnetwork/e;->b:Ljava/lang/Class;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 98
    iget-object p2, p0, Lcab/snapp/snappnetwork/e$1;->b:Lcab/snapp/snappnetwork/e;

    .line 2025
    iget-object p2, p2, Lcab/snapp/snappnetwork/e;->a:Lcab/snapp/snappnetwork/a;

    if-eqz p2, :cond_2

    .line 100
    iget-object p2, p0, Lcab/snapp/snappnetwork/e$1;->b:Lcab/snapp/snappnetwork/e;

    .line 3025
    iget-object p2, p2, Lcab/snapp/snappnetwork/e;->a:Lcab/snapp/snappnetwork/a;

    .line 100
    iget-object v0, p0, Lcab/snapp/snappnetwork/e$1;->b:Lcab/snapp/snappnetwork/e;

    .line 4025
    iget-object v0, v0, Lcab/snapp/snappnetwork/e;->b:Ljava/lang/Class;

    .line 100
    invoke-interface {p2, v0, p1}, Lcab/snapp/snappnetwork/a;->parseData(Ljava/lang/Class;Ljava/lang/String;)Lcab/snapp/snappnetwork/model/f;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p2}, Lcab/snapp/snappnetwork/model/f;->getRawResponse()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p2, p1}, Lcab/snapp/snappnetwork/model/f;->setRawResponse(Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappnetwork/e$1;->a:Lcab/snapp/snappnetwork/a/a;

    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/a/a;->onSuccess(Lcab/snapp/snappnetwork/model/f;)V

    :cond_1
    return-void

    .line 115
    :cond_2
    iget-object p2, p0, Lcab/snapp/snappnetwork/e$1;->b:Lcab/snapp/snappnetwork/e;

    .line 5025
    iget-object p2, p2, Lcab/snapp/snappnetwork/e;->c:Lcom/google/gson/e;

    .line 115
    const-class v0, Lcab/snapp/snappnetwork/model/e;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/snappnetwork/model/e;

    .line 121
    iget-object p2, p0, Lcab/snapp/snappnetwork/e$1;->a:Lcab/snapp/snappnetwork/a/a;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/e;->getSnappResponseModel()Lcab/snapp/snappnetwork/model/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcab/snapp/snappnetwork/a/a;->onSuccess(Lcab/snapp/snappnetwork/model/f;)V

    return-void

    .line 127
    :cond_3
    new-instance p1, Lcab/snapp/snappnetwork/model/b;

    invoke-direct {p1}, Lcab/snapp/snappnetwork/model/b;-><init>()V

    const-string p2, "No response body!"

    .line 128
    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/model/b;->setMessage(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcab/snapp/snappnetwork/e$1;->a:Lcab/snapp/snappnetwork/a/a;

    sget v0, Lcab/snapp/snappnetwork/b/a;->RESPONSE_BODY_EXCEPTION:I

    invoke-virtual {p2, p1, v0}, Lcab/snapp/snappnetwork/a/a;->onFailure(Lcab/snapp/snappnetwork/model/b;I)V

    return-void

    .line 136
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappnetwork/e$1;->b:Lcab/snapp/snappnetwork/e;

    .line 6025
    iget-object v0, v0, Lcab/snapp/snappnetwork/e;->c:Lcom/google/gson/e;

    .line 137
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcab/snapp/snappnetwork/model/e;

    .line 136
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/snappnetwork/model/e;

    .line 142
    iget-object v0, p0, Lcab/snapp/snappnetwork/e$1;->a:Lcab/snapp/snappnetwork/a/a;

    invoke-virtual {p2}, Lcab/snapp/snappnetwork/model/e;->getSnappResponseModel()Lcab/snapp/snappnetwork/model/f;

    move-result-object p2

    check-cast p2, Lcab/snapp/snappnetwork/model/b;

    invoke-virtual {v0, p2, p1}, Lcab/snapp/snappnetwork/a/a;->onFailure(Lcab/snapp/snappnetwork/model/b;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    new-instance p1, Lcab/snapp/snappnetwork/model/b;

    invoke-direct {p1}, Lcab/snapp/snappnetwork/model/b;-><init>()V

    const-string p2, "Cast Error!"

    .line 150
    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/model/b;->setMessage(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcab/snapp/snappnetwork/e$1;->a:Lcab/snapp/snappnetwork/a/a;

    sget v0, Lcab/snapp/snappnetwork/b/a;->PARSING_EXCEPTION:I

    invoke-virtual {p2, p1, v0}, Lcab/snapp/snappnetwork/a/a;->onFailure(Lcab/snapp/snappnetwork/model/b;I)V

    return-void
.end method
