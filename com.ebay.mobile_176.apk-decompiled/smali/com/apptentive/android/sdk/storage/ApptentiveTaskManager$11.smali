.class Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;
.super Ljava/lang/Object;
.source "ApptentiveTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->onReceiveNotification(Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$conversationLocalIdentifier:Ljava/lang/String;

.field final synthetic val$conversationToken:Ljava/lang/String;

.field final synthetic val$legacyPayloads:Z


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->val$conversationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->val$conversationToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->val$conversationLocalIdentifier:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->val$legacyPayloads:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->access$000(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->val$conversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->val$conversationToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->val$conversationLocalIdentifier:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->val$legacyPayloads:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->updateIncompletePayloads(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 334
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$11;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->access$100(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 336
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while trying to update incomplete payloads"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
