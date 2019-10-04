.class Lcom/apptentive/android/sdk/conversation/ConversationProxy$6;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ConversationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setMessageCenterWhoCardPreviouslyDisplayed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

.field final synthetic val$messageCenterWhoCardPreviouslyDisplayed:Z


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Z)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$6;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    iput-boolean p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$6;->val$messageCenterWhoCardPreviouslyDisplayed:Z

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$6;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->access$000(Lcom/apptentive/android/sdk/conversation/ConversationProxy;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$6;->val$messageCenterWhoCardPreviouslyDisplayed:Z

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setMessageCenterWhoCardPreviouslyDisplayed(Z)V

    return-void
.end method
