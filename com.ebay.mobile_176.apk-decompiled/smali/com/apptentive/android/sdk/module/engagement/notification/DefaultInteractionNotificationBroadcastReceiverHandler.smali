.class public Lcom/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler;
.super Ljava/lang/Object;
.source "DefaultInteractionNotificationBroadcastReceiverHandler.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/notification/InteractionNotificationBroadcastReceiverHandler;


# static fields
.field private static final DEFAULT_ADAPTER_NOTE:Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler;->DEFAULT_ADAPTER_NOTE:Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logIntent(Landroid/content/Intent;)V
    .locals 7

    .line 62
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Action: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Extras:"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "  \"%s\" = \"%s\""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v2, v4, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Received broadcast"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler;->logIntent(Landroid/content/Intent;)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 38
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/ContextUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/apptentive/android/sdk/module/engagement/notification/NotificationChannelHolder;->getInstance()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    const-string v0, "com.apptentive.notification.extra.INTERACTION_TYPE"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v0

    const-string v1, "com.apptentive.notification.extra.INTERACTION_DEFINITION"

    .line 43
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string p1, "Interaction Notification Intent is missing extra %s"

    .line 45
    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "com.apptentive.notification.extra.INTERACTION_DEFINITION"

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_1
    sget-object v4, Lcom/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$Interaction$Type:[I

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_2

    const-string p1, "Attempted to launch Interaction as Notification, but that is not supported for the interaction type: %s"

    .line 55
    new-array p2, v3, [Ljava/lang/Object;

    aput-object v1, p2, v2

    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_2
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler;->DEFAULT_ADAPTER_NOTE:Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;

    const-string v1, "com.apptentive.notification.channel.DEFAULT"

    .line 58
    invoke-interface {v0, p1, v1, p2}, Lcom/apptentive/android/sdk/module/engagement/notification/InteractionNotificationAdapter;->handleInteractionNotificationAction(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
