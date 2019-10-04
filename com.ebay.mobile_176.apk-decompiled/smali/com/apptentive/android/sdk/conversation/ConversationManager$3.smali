.class Lcom/apptentive/android/sdk/conversation/ConversationManager$3;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/network/HttpRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchLegacyConversation(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;
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
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

.field final synthetic val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCancel(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 344
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method

.method public onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V
    .locals 3

    .line 386
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Failed to fetch legacy conversation id: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onFail(Lcom/apptentive/android/sdk/network/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 344
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 6

    .line 347
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    const/4 v0, 0x0

    .line 350
    :try_start_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "conversation_id"

    .line 351
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Conversation id: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-static {v2, v3, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Can\'t fetch legacy conversation: missing \'id\'"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "anonymous_jwt_token"

    .line 359
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Can\'t fetch legacy conversation: missing \'anonymous_jwt_token\'"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 365
    :cond_1
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Conversation JWT: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    sget-object v3, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->setState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 369
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v2, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setConversationToken(Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setConversationId(Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {p1, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$400(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 375
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while handling legacy conversation id"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 344
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$3;->onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method
