.class Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$10;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ApptentiveTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->sendNextPayloadSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

.field final synthetic val$payload:Lcom/apptentive/android/sdk/model/PayloadData;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Lcom/apptentive/android/sdk/model/PayloadData;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$10;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$10;->val$payload:Lcom/apptentive/android/sdk/model/PayloadData;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    .line 301
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "PAYLOAD_WILL_START_SEND"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "payload"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$10;->val$payload:Lcom/apptentive/android/sdk/model/PayloadData;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 302
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
