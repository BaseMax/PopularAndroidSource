.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$6;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "MessageCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->cleanup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$6;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 1

    .line 618
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object p1

    .line 620
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->clearInternalOnMessagesUpdatedListeners()V

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->setAfterSendMessageListener(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$AfterSendMessageListener;)V

    .line 623
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getAndClearCustomData()Ljava/util/Map;

    .line 624
    invoke-static {}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->getInstance()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->clearMemoryCache()V

    const/4 p1, 0x1

    return p1
.end method
