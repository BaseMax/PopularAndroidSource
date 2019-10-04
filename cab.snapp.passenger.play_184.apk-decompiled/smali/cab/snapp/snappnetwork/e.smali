.class public final Lcab/snapp/snappnetwork/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcab/snapp/snappnetwork/model/f;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcab/snapp/snappnetwork/a;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/e;

.field private d:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;Ljava/lang/Class;Lcab/snapp/snappnetwork/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcab/snapp/snappnetwork/a;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcab/snapp/snappnetwork/e;->d:Lretrofit2/Call;

    .line 44
    iput-object p2, p0, Lcab/snapp/snappnetwork/e;->b:Ljava/lang/Class;

    .line 45
    iput-object p3, p0, Lcab/snapp/snappnetwork/e;->a:Lcab/snapp/snappnetwork/a;

    .line 46
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGsonBuilder()Lcom/google/gson/f;

    move-result-object p1

    const-class p3, Lcab/snapp/snappnetwork/model/e;

    new-instance v0, Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;

    invoke-direct {v0, p2}, Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;-><init>(Ljava/lang/Class;)V

    .line 47
    invoke-virtual {p1, p3, v0}, Lcom/google/gson/f;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/f;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/e;->c:Lcom/google/gson/e;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcab/snapp/snappnetwork/e;->d:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public final execute()Lretrofit2/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcab/snapp/snappnetwork/e;->d:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcab/snapp/snappnetwork/e;->d:Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isExecuted()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcab/snapp/snappnetwork/e;->d:Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->isExecuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final performRequest(Lcab/snapp/snappnetwork/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/snappnetwork/a/a<",
            "TE;>;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcab/snapp/snappnetwork/e;->d:Lretrofit2/Call;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcab/snapp/snappnetwork/model/b;

    const-string v1, "Request class is null"

    invoke-direct {v0, v1}, Lcab/snapp/snappnetwork/model/b;-><init>(Ljava/lang/String;)V

    sget v1, Lcab/snapp/snappnetwork/b/a;->UNKNOWN_ERROR:I

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappnetwork/a/a;->onFailure(Lcab/snapp/snappnetwork/model/b;I)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappnetwork/e;->c:Lcom/google/gson/e;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcab/snapp/snappnetwork/model/b;

    const-string v1, "Response Model has to be setup"

    invoke-direct {v0, v1}, Lcab/snapp/snappnetwork/model/b;-><init>(Ljava/lang/String;)V

    sget v1, Lcab/snapp/snappnetwork/b/a;->PARSING_EXCEPTION:I

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappnetwork/a/a;->onFailure(Lcab/snapp/snappnetwork/model/b;I)V

    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/a/a;->onBeforeRequest()V

    .line 81
    iget-object v0, p0, Lcab/snapp/snappnetwork/e;->d:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappnetwork/e$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/snappnetwork/e$1;-><init>(Lcab/snapp/snappnetwork/e;Lcab/snapp/snappnetwork/a/a;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
