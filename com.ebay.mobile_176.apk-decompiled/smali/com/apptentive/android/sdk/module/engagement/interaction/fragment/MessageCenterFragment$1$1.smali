.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1$1;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "MessageCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;->onFetchFinish(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1$1;->this$1:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 1

    .line 227
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1$1;->this$1:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;

    iget-object v0, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->addInternalOnMessagesUpdatedListener(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$OnNewIncomingMessagesListener;)V

    .line 231
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1$1;->this$1:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;

    iget-object v0, v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->setAfterSendMessageListener(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$AfterSendMessageListener;)V

    const/4 p1, 0x1

    return p1
.end method
