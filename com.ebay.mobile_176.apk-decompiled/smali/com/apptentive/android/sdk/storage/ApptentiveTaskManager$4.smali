.class Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$4;
.super Ljava/lang/Object;
.source "ApptentiveTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->deleteAllPayloads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$4;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager$4;->this$0:Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;

    invoke-static {v0}, Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;->access$000(Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;)Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->deleteAllPayloads()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while deleting all payloads"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
