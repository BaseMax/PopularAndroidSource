.class final Lcom/apptentive/android/sdk/Apptentive$2;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->setPersonName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 1

    .line 199
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$2;->val$name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->setPersonName(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
