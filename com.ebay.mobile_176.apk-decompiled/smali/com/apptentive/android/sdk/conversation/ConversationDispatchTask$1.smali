.class Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ConversationDispatchTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->invokeCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Z)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;

    iput-boolean p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask$1;->val$result:Z

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;->access$000(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;)Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask$1;->val$result:Z

    invoke-interface {v0, v1}, Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;->onFinish(Z)V

    return-void
.end method
