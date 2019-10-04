.class Lcom/apptentive/android/sdk/conversation/Conversation$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/conversation/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/Conversation$1;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 4

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/Conversation$1;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->access$000(Lcom/apptentive/android/sdk/conversation/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while saving conversation data"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/Conversation$1;->this$0:Lcom/apptentive/android/sdk/conversation/Conversation;

    invoke-static {v1, v0}, Lcom/apptentive/android/sdk/conversation/Conversation;->access$100(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
