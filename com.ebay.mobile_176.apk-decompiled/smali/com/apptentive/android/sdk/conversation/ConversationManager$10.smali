.class Lcom/apptentive/android/sdk/conversation/ConversationManager$10;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/network/HttpRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationManager;->sendFirstLoginRequest(Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
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

.field final synthetic val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

.field final synthetic val$device:Lcom/apptentive/android/sdk/storage/Device;

.field final synthetic val$sdk:Lcom/apptentive/android/sdk/storage/Sdk;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/storage/AppRelease;Lcom/apptentive/android/sdk/storage/Sdk;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    iput-object p5, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$sdk:Lcom/apptentive/android/sdk/storage/Sdk;

    iput-object p6, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$device:Lcom/apptentive/android/sdk/storage/Device;

    iput-object p7, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleLoginFailed(Ljava/lang/String;)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    return-void
.end method

.method private handleLoginFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1030
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 1031
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    const-string v1, "Finished logging into new conversation, but one was already active."

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/debug/Assert;->assertNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Login finished with missing encryption key."

    .line 1032
    invoke-static {p4, v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    invoke-static {p3}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Login finished with missing token."

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/debug/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v0, p4}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$700(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;)Lcom/apptentive/android/sdk/Encryption;

    move-result-object v0

    const/4 v1, 0x0

    .line 1039
    :try_start_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$800(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/ConversationMetadata;

    move-result-object v2

    new-instance v3, Lcom/apptentive/android/sdk/conversation/ConversationManager$10$1;

    invoke-direct {v3, p0, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10$1;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationManager$10;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/ConversationMetadata$Filter;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1047
    sget-object v3, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 1048
    invoke-virtual {v2, p3}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationToken(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v2, p4}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->setConversationEncryptionKey(Ljava/lang/String;)V

    .line 1050
    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v4, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v4, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$900(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$1000(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V

    goto :goto_0

    .line 1052
    :cond_0
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Creating new logged in conversation..."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$1100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Ljava/io/File;

    move-result-object v2

    .line 1054
    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v3}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$1200(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Ljava/io/File;

    move-result-object v3

    .line 1055
    new-instance v4, Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-direct {v4, v2, v3, v0, p4}, Lcom/apptentive/android/sdk/conversation/Conversation;-><init>(Ljava/io/File;Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;Ljava/lang/String;)V

    .line 1056
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v2, v4}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$1000(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 1058
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->setAppRelease(Lcom/apptentive/android/sdk/storage/AppRelease;)V

    .line 1059
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$sdk:Lcom/apptentive/android/sdk/storage/Sdk;

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->setSdk(Lcom/apptentive/android/sdk/storage/Sdk;)V

    .line 1060
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->setDevice(Lcom/apptentive/android/sdk/storage/Device;)V

    .line 1063
    :goto_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->setEncryption(Lcom/apptentive/android/sdk/Encryption;)V

    .line 1064
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/apptentive/android/sdk/conversation/Conversation;->setPayloadEncryptionKey(Ljava/lang/String;)V

    .line 1065
    iget-object p4, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p4}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/apptentive/android/sdk/conversation/Conversation;->setConversationToken(Ljava/lang/String;)V

    .line 1066
    iget-object p3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p3}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setConversationId(Ljava/lang/String;)V

    .line 1067
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setUserId(Ljava/lang/String;)V

    .line 1068
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    sget-object p2, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/conversation/Conversation;->setState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    .line 1070
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->startListeningForChanges()V

    .line 1071
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->scheduleSaveConversationData()V

    .line 1073
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$400(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 1076
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    invoke-interface {p1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1078
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "Exception while creating logged-in conversation"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const-string p1, "Internal error"

    .line 1081
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->handleLoginFailed(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 0

    const-string p1, "Login request was cancelled"

    .line 1021
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->handleLoginFailed(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCancel(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 1003
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->onCancel(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method

.method public onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V
    .locals 0

    .line 1026
    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->handleLoginFailed(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFail(Lcom/apptentive/android/sdk/network/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 1003
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->onFail(Lcom/apptentive/android/sdk/network/HttpJsonRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V
    .locals 3

    .line 1007
    :try_start_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/network/HttpJsonRequest;->getResponseObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "encryption_key"

    .line 1008
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    .line 1009
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1010
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->val$token:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->handleLoginFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1012
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Exception while parsing login response"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const-string p1, "Internal error"

    .line 1015
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->handleLoginFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 0

    .line 1003
    check-cast p1, Lcom/apptentive/android/sdk/network/HttpJsonRequest;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager$10;->onFinish(Lcom/apptentive/android/sdk/network/HttpJsonRequest;)V

    return-void
.end method
