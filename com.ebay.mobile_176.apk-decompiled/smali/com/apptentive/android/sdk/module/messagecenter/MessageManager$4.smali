.class Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/network/HttpRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->fetchMessages(Ljava/lang/String;Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;)Lcom/apptentive/android/sdk/network/HttpJsonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
        "Lcom/apptentive/android/sdk/network/HttpJsonRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

.field final synthetic val$listener:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->val$listener:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyFinished(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/ApptentiveMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    invoke-interface {p1, v0, p2}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;->onFetchFinish(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCancel(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 248
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method

.method public onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V
    .locals 3

    .line 267
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Error while fetching messages: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->val$listener:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->notifyFinished(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onFail(Lcom/apptentive/android/sdk/network/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 248
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 3

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->val$listener:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->parseMessages(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->notifyFinished(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Exception while parsing messages"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 257
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->val$listener:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->notifyFinished(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 248
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$4;->onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method
