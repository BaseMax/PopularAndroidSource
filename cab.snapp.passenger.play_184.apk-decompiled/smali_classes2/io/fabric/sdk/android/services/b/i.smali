.class public final Lio/fabric/sdk/android/services/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/fabric/sdk/android/services/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/e;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/i;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lio/fabric/sdk/android/services/b/i;->b:Lio/fabric/sdk/android/services/b/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 40
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/i;->a:Landroid/content/Context;

    const-string v1, "Performing time based file roll over."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/i;->b:Lio/fabric/sdk/android/services/b/e;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/b/e;->rollFileOver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/i;->b:Lio/fabric/sdk/android/services/b/e;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/b/e;->cancelTimeBasedFileRollOver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 49
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/i;->a:Landroid/content/Context;

    const-string v2, "Failed to roll over file"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
