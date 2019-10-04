.class final Lcom/a/a/c/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/a/a/c/af;

.field private final c:Lcom/a/a/c/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/a/a/c/af;Lcom/a/a/c/ag;)V
    .locals 0

    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1482
    iput-object p1, p0, Lcom/a/a/c/i$h;->a:Landroid/content/Context;

    .line 1483
    iput-object p2, p0, Lcom/a/a/c/i$h;->b:Lcom/a/a/c/af;

    .line 1484
    iput-object p3, p0, Lcom/a/a/c/i$h;->c:Lcom/a/a/c/ag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1489
    iget-object v0, p0, Lcom/a/a/c/i$h;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->canTryConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1493
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/a/a/c/i$h;->c:Lcom/a/a/c/ag;

    iget-object v1, p0, Lcom/a/a/c/i$h;->b:Lcom/a/a/c/af;

    invoke-virtual {v0, v1}, Lcom/a/a/c/ag;->a(Lcom/a/a/c/af;)Z

    return-void
.end method
