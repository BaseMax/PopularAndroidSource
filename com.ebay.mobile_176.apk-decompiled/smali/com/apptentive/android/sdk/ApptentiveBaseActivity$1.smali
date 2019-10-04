.class Lcom/apptentive/android/sdk/ApptentiveBaseActivity$1;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "ApptentiveBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/ApptentiveBaseActivity;->engageInternal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/ApptentiveBaseActivity;

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/ApptentiveBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveBaseActivity$1;->this$0:Lcom/apptentive/android/sdk/ApptentiveBaseActivity;

    iput-object p2, p0, Lcom/apptentive/android/sdk/ApptentiveBaseActivity$1;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveBaseActivity$1;->this$0:Lcom/apptentive/android/sdk/ApptentiveBaseActivity;

    iget-object v1, p0, Lcom/apptentive/android/sdk/ApptentiveBaseActivity$1;->val$eventName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
