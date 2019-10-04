.class Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask$1;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "MessageCenterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->doInBackground([Lcom/apptentive/android/sdk/model/ApptentiveMessage;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;

.field final synthetic val$message:Lcom/apptentive/android/sdk/model/ApptentiveMessage;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask$1;->this$1:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask$1;->val$message:Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 1

    .line 272
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask$1;->val$message:Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->updateMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    .line 275
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->getUnreadMessageCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->notifyHostUnreadMessagesListeners(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
