.class Lcom/apptentive/android/sdk/conversation/ConversationProxy$4;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ConversationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterPendingMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

.field final synthetic val$messageCenterPendingMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$4;->val$messageCenterPendingMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$4;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->access$000(Lcom/apptentive/android/sdk/conversation/ConversationProxy;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$4;->val$messageCenterPendingMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setMessageCenterPendingMessage(Ljava/lang/String;)V

    return-void
.end method
