.class Lcom/apptentive/android/sdk/conversation/ConversationManager$8;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/network/HttpRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationManager;->requestLoggedInConversation(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apptentive/android/sdk/network/HttpRequest$Listener<",
        "Lcom/apptentive/android/sdk/network/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

.field final synthetic val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 2

    .line 872
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Unable to login: conversation fetching cancelled."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    const-string v0, "Conversation fetching was cancelled"

    invoke-interface {p1, v0}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Lcom/apptentive/android/sdk/network/HttpRequest;Ljava/lang/String;)V
    .locals 2

    .line 878
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Unable to login: conversation fetching failed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 879
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversation fetching failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/apptentive/android/sdk/network/HttpRequest;)V
    .locals 4

    .line 859
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 860
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    sget-object v2, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v2}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "Active conversation is missing or in a wrong state: %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v3}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v2, v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 862
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasState(Lcom/apptentive/android/sdk/conversation/ConversationState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 863
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Conversation fetching complete. Performing login..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$600(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V

    goto :goto_1

    .line 866
    :cond_1
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$8;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    const-string v0, "Conversation fetching completed abnormally"

    invoke-interface {p1, v0}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
