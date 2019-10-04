.class final Lcab/snapp/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/client/b;


# instance fields
.field private a:Lcab/snapp/c;


# direct methods
.method constructor <init>(Lcab/snapp/c;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcab/snapp/d/c/a;->a:Lcab/snapp/c;

    return-void
.end method


# virtual methods
.method public final authorize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/client/a;
        }
    .end annotation

    const-string v0, "PUSHER"

    const-string v1, "Authorize Started"

    .line 23
    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    iget-object v1, p0, Lcab/snapp/d/c/a;->a:Lcab/snapp/c;

    invoke-interface {v1, p1, p2}, Lcab/snapp/c;->getPusherAutorizeRequest(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/e;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/e;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Authorize Succeed!"

    .line 35
    invoke-static {v0, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const-string p1, "Authorize Failed! -> "

    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance p1, Lcom/pusher/client/a;

    invoke-direct {p1, p2}, Lcom/pusher/client/a;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    new-instance p2, Lcom/pusher/client/a;

    invoke-direct {p2, p1}, Lcom/pusher/client/a;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
