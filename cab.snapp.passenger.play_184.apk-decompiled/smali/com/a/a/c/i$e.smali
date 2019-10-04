.class final Lcom/a/a/c/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/ag$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/a/a/c/ac;

.field private final b:Lio/fabric/sdk/android/i;

.field private final c:Lio/fabric/sdk/android/services/settings/o;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Lcom/a/a/c/ac;Lio/fabric/sdk/android/services/settings/o;)V
    .locals 0

    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1438
    iput-object p1, p0, Lcom/a/a/c/i$e;->b:Lio/fabric/sdk/android/i;

    .line 1439
    iput-object p2, p0, Lcom/a/a/c/i$e;->a:Lcom/a/a/c/ac;

    .line 1440
    iput-object p3, p0, Lcom/a/a/c/i$e;->c:Lio/fabric/sdk/android/services/settings/o;

    return-void
.end method


# virtual methods
.method public final canSendReports()Z
    .locals 4

    .line 1445
    iget-object v0, p0, Lcom/a/a/c/i$e;->b:Lio/fabric/sdk/android/i;

    invoke-virtual {v0}, Lio/fabric/sdk/android/i;->getFabric()Lio/fabric/sdk/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/c;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1446
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1451
    :cond_0
    new-instance v1, Lcom/a/a/c/i$e$1;

    invoke-direct {v1, p0}, Lcom/a/a/c/i$e$1;-><init>(Lcom/a/a/c/i$e;)V

    .line 1459
    iget-object v2, p0, Lcom/a/a/c/i$e;->c:Lio/fabric/sdk/android/services/settings/o;

    .line 1460
    invoke-static {v0, v2, v1}, Lcom/a/a/c/f;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/o;Lcom/a/a/c/f$a;)Lcom/a/a/c/f;

    move-result-object v1

    .line 1462
    new-instance v2, Lcom/a/a/c/i$e$2;

    invoke-direct {v2, p0, v1}, Lcom/a/a/c/i$e$2;-><init>(Lcom/a/a/c/i$e;Lcom/a/a/c/f;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1469
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Waiting for user opt-in."

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v1}, Lcom/a/a/c/f;->await()V

    .line 1471
    invoke-virtual {v1}, Lcom/a/a/c/f;->getOptIn()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
