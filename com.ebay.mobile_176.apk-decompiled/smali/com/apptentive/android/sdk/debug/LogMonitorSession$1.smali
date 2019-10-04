.class Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "LogMonitorSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/debug/LogMonitorSession;->showDebugNotification(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/debug/LogMonitorSession;

.field final synthetic val$attachments:[Ljava/io/File;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/debug/LogMonitorSession;Landroid/content/Context;Ljava/lang/String;[Ljava/io/File;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->this$0:Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    iput-object p2, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->val$attachments:[Ljava/io/File;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->val$context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 82
    iget-object v1, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->val$subject:Ljava/lang/String;

    iget-object v3, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->this$0:Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    iget-object v4, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->access$000(Lcom/apptentive/android/sdk/debug/LogMonitorSession;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->val$attachments:[Ljava/io/File;

    iget-object v5, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;->this$0:Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    iget-object v5, v5, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->emailRecipients:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/apptentive/android/sdk/debug/TroubleshootingNotificationBuilder;->buildNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    const-string v2, "Failed to create troubleshooting notification"

    .line 83
    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
