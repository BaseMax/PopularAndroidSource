.class Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->showUnreadMessageToastNotification(Lcom/apptentive/android/sdk/model/CompoundMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

.field final synthetic val$apptentiveMsg:Lcom/apptentive/android/sdk/model/CompoundMessage;

.field final synthetic val$foreground:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;Landroid/app/Activity;Lcom/apptentive/android/sdk/model/CompoundMessage;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;->val$foreground:Landroid/app/Activity;

    iput-object p3, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;->val$apptentiveMsg:Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 5

    .line 578
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;->val$foreground:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->prepareMessageCenterPendingIntent(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;)Landroid/app/PendingIntent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;->val$foreground:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->getInstance(Landroid/content/Context;Z)Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    move-result-object v1

    .line 581
    new-instance v2, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;->val$foreground:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;->val$foreground:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/apptentive/android/sdk/R$string;->apptentive_message_center_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;

    move-result-object v3

    const/4 v4, 0x5

    .line 583
    invoke-virtual {v3, v4}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/apptentive/android/sdk/R$drawable;->avatar:I

    .line 584
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;->val$apptentiveMsg:Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 585
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 586
    invoke-virtual {v3, p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 587
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object p1

    new-instance v3, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6$1;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$6;Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;)V

    invoke-virtual {p1, v3}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    :cond_0
    return v0
.end method
