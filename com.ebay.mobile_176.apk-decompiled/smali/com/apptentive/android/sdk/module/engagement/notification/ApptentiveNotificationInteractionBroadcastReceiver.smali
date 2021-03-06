.class public Lcom/apptentive/android/sdk/module/engagement/notification/ApptentiveNotificationInteractionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApptentiveNotificationInteractionBroadcastReceiver.java"


# static fields
.field private static final DEFAULT_HANDLER:Lcom/apptentive/android/sdk/module/engagement/notification/InteractionNotificationBroadcastReceiverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/notification/ApptentiveNotificationInteractionBroadcastReceiver;->DEFAULT_HANDLER:Lcom/apptentive/android/sdk/module/engagement/notification/InteractionNotificationBroadcastReceiverHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 25
    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/notification/ApptentiveNotificationInteractionBroadcastReceiver;->DEFAULT_HANDLER:Lcom/apptentive/android/sdk/module/engagement/notification/InteractionNotificationBroadcastReceiverHandler;

    invoke-interface {v0, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/notification/InteractionNotificationBroadcastReceiverHandler;->handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Error handling Apptentive Interaction Notification broadcast."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
