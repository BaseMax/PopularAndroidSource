.class public abstract Lcom/apptentive/android/sdk/ApptentiveBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ApptentiveBaseActivity.java"

# interfaces
.implements Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected dispatchOnMainQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method

.method protected engageInternal(Ljava/lang/String;)V
    .locals 1

    .line 71
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveBaseActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveBaseActivity$1;-><init>(Lcom/apptentive/android/sdk/ApptentiveBaseActivity;Ljava/lang/String;)V

    const-string p1, "engage"

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method protected logException(Ljava/lang/Exception;)V
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveBaseActivity;->registerNotifications()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 35
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 36
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveBaseActivity;->unregisterNotification()V

    return-void
.end method

.method public onReceiveNotification(Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;)V
    .locals 0

    return-void
.end method

.method protected registerNotifications()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "INTERACTIONS_SHOULD_DISMISS"

    .line 45
    invoke-virtual {v0, v1, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "CONVERSATION_STATE_DID_CHANGE"

    .line 46
    invoke-virtual {v0, v1, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->addObserver(Ljava/lang/String;Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    return-void
.end method

.method protected unregisterNotification()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->removeObserver(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)V

    return-void
.end method
