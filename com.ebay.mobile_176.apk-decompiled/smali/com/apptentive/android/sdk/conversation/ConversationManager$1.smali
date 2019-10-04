.class Lcom/apptentive/android/sdk/conversation/ConversationManager$1;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationManager;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveNotification(Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;)V
    .locals 3

    .line 127
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 128
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$002(Lcom/apptentive/android/sdk/conversation/ConversationManager;Z)Z

    .line 129
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->hasActiveState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "App entered foreground notification received. Trying to fetch app configuration and interactions..."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$200(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$300(Lcom/apptentive/android/sdk/conversation/ConversationManager;Lcom/apptentive/android/sdk/conversation/Conversation;)V

    .line 134
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$1;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationManager;->access$100(Lcom/apptentive/android/sdk/conversation/ConversationManager;)Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->fetchInteractions(Landroid/content/Context;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Can\'t fetch app configuration and conversation interactions: context is lost"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
