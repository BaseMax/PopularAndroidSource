.class Lcom/apptentive/android/sdk/conversation/ConversationProxy$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ConversationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationProxy;->addPayload(Lcom/apptentive/android/sdk/model/SurveyResponsePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

.field final synthetic val$payload:Lcom/apptentive/android/sdk/model/SurveyResponsePayload;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationProxy;Lcom/apptentive/android/sdk/model/SurveyResponsePayload;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$1;->val$payload:Lcom/apptentive/android/sdk/model/SurveyResponsePayload;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->access$000(Lcom/apptentive/android/sdk/conversation/ConversationProxy;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationProxy$1;->val$payload:Lcom/apptentive/android/sdk/model/SurveyResponsePayload;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->addPayload(Lcom/apptentive/android/sdk/model/Payload;)V

    return-void
.end method
