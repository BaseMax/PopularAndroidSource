.class final Lcom/apptentive/android/sdk/debug/LogMonitor$3;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "LogMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/debug/LogMonitor;->stopSession(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/apptentive/android/sdk/debug/LogMonitor$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .line 157
    invoke-static {}, Lcom/apptentive/android/sdk/debug/LogMonitor;->access$300()Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/apptentive/android/sdk/debug/LogMonitor;->access$300()Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->stop()V

    const/4 v0, 0x0

    .line 159
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/LogMonitor;->access$302(Lcom/apptentive/android/sdk/debug/LogMonitorSession;)Lcom/apptentive/android/sdk/debug/LogMonitorSession;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/debug/LogMonitor$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/LogMonitorSessionIO;->deleteCurrentSession(Landroid/content/Context;)V

    return-void
.end method
