.class final Lcom/apptentive/android/sdk/Apptentive$23;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->sendAttachmentText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$23;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 3

    .line 1045
    new-instance v0, Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;-><init>()V

    .line 1046
    iget-object v1, p0, Lcom/apptentive/android/sdk/Apptentive$23;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setBody(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1047
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setRead(Z)V

    .line 1048
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setHidden(Z)V

    .line 1049
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/Person;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setSenderId(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1050
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setAssociatedFiles(Ljava/util/List;)Z

    .line 1051
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->sendMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    return v1
.end method
