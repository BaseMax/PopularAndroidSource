.class Lcom/apptentive/android/sdk/module/engagement/NotificationInteractionLauncher;
.super Ljava/lang/Object;
.source "NotificationInteractionLauncher.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public launch(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;)Z
    .locals 3

    const-string v0, "com.apptentive.notification.channel.DEFAULT"

    .line 26
    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/NotificationUtils;->isNotificationChannelEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Unable to engage notification interaction: notification channel is disabled"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 31
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/apptentive/android/sdk/module/engagement/notification/ApptentiveNotificationInteractionBroadcastReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.apptentive.notification.action.DISPLAY"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.apptentive.notification.extra.INTERACTION_TYPE"

    .line 33
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.apptentive.notification.extra.INTERACTION_DEFINITION"

    .line 34
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
