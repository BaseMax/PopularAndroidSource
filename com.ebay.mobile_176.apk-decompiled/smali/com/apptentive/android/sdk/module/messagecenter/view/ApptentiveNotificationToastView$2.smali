.class Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;
.super Landroid/os/Handler;
.source "ApptentiveNotificationToastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->setNotification(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 264
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 266
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->access$400(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->isActivateStatusBar()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->getInstance(Landroid/content/Context;Z)Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    move-result-object p1

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-static {v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->access$400(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->notifyDefaultSilently(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->getInstance(Landroid/content/Context;Z)Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->access$400(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->startDismissalAnimationAt(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V

    return-void
.end method
