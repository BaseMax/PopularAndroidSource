.class Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;
.super Ljava/lang/Object;
.source "ApptentiveTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->deletePayload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

.field final synthetic val$payloadIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;->val$payloadIdentifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->access$000(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;->val$payloadIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->deletePayload(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->access$100(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while deleting a payload: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$3;->val$payloadIdentifier:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
