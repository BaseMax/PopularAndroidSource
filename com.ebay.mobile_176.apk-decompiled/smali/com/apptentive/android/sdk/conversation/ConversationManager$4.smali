.class Lcom/apptentive/android/sdk/conversation/ConversationManager$4;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/network/HttpRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationManager;->fetchConversationToken(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/network/HttpRequest;
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

.field final synthetic val$appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

.field final synthetic val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

.field final synthetic val$device:Lcom/apptentive/android/sdk/storage/Device;

.field final synthetic val$sdk:Lcom/apptentive/android/sdk/storage/Sdk;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/storage/AppRelease;Lcom/apptentive/android/sdk/storage/Sdk;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    iput-object p3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$device:Lcom/apptentive/android/sdk/storage/Device;

    iput-object p4, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    iput-object p5, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$sdk:Lcom/apptentive/android/sdk/storage/Sdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 2

    .line 526
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$500(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Z)V

    return-void
.end method

.method public bridge synthetic onCancel(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 475
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method

.method public onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V
    .locals 3

    .line 531
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Failed to fetch conversation token: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {p1, p2, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$500(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Z)V

    return-void
.end method

.method public bridge synthetic onFail(Lcom/apptentive/android/sdk/network/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 475
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 7

    .line 478
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    const/4 v0, 0x0

    .line 481
    :try_start_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v1, "token"

    .line 482
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConversationToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "id"

    .line 484
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "New Conversation id: %s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-static {v3, v4, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Can\'t fetch conversation: missing \'token\'"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$500(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Z)V

    return-void

    .line 493
    :cond_0
    invoke-static {v2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Can\'t fetch conversation: missing \'id\'"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$500(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Z)V

    return-void

    .line 500
    :cond_1
    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    sget-object v4, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/conversation/Conversation;->setState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 501
    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v3, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setConversationToken(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setConversationId(Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setDevice(Lcom/apptentive/android/sdk/storage/Device;)V

    .line 504
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/Device;->clone()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setLastSentDevice(Lcom/apptentive/android/sdk/storage/Device;)V

    .line 505
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setAppRelease(Lcom/apptentive/android/sdk/storage/AppRelease;)V

    .line 506
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$sdk:Lcom/apptentive/android/sdk/storage/Sdk;

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setSdk(Lcom/apptentive/android/sdk/storage/Sdk;)V

    .line 507
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$sdk:Lcom/apptentive/android/sdk/storage/Sdk;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/Sdk;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setLastSeenSdkVersion(Ljava/lang/String;)V

    const-string v1, "person_id"

    .line 509
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 510
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PersonId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/apptentive/android/sdk/storage/Person;->setId(Ljava/lang/String;)V

    .line 513
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {p1, v1, v5}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$500(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Z)V

    .line 515
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {p1, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$400(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 517
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while handling conversation token"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 520
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->val$conversation:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {p1, v1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$500(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 475
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$4;->onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method
