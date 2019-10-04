.class final Lcom/a/a/c/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/settings/p;

.field final synthetic b:Lcom/a/a/c/i;


# direct methods
.method constructor <init>(Lcom/a/a/c/i;Lio/fabric/sdk/android/services/settings/p;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/a/a/c/i$4;->b:Lcom/a/a/c/i;

    iput-object p2, p0, Lcom/a/a/c/i$4;->a:Lio/fabric/sdk/android/services/settings/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/a/a/c/i$4;->b:Lcom/a/a/c/i;

    invoke-virtual {v0}, Lcom/a/a/c/i;->c()Z

    move-result v0

    const-string v1, "CrashlyticsCore"

    if-eqz v0, :cond_0

    .line 486
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 491
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "Finalizing previously open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/a/a/c/i$4;->b:Lcom/a/a/c/i;

    iget-object v2, p0, Lcom/a/a/c/i$4;->a:Lio/fabric/sdk/android/services/settings/p;

    invoke-static {v0, v2}, Lcom/a/a/c/i;->a(Lcom/a/a/c/i;Lio/fabric/sdk/android/services/settings/p;)V

    .line 493
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "Closed all previously open sessions"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/a/a/c/i$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
