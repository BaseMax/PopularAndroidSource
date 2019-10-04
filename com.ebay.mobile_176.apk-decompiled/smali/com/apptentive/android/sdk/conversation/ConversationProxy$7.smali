.class Lcom/apptentive/android/sdk/conversation/ConversationProxy$7;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ConversationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterInForeground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Z)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$7;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    iput-boolean p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$7;->val$flag:Z

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$7;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->access$000(Lcom/apptentive/android/sdk/conversation/ConversationProxy;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$7;->val$flag:Z

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->setMessageCenterInForeground(Z)V

    return-void
.end method
