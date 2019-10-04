.class final Lcom/a/a/a/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/f;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/f;


# direct methods
.method constructor <init>(Lcom/a/a/a/f;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    .line 1016
    iget-object v0, v0, Lcom/a/a/a/f;->d:Lcom/a/a/a/aj;

    .line 119
    invoke-virtual {v0}, Lcom/a/a/a/aj;->getMetadata()Lcom/a/a/a/ah;

    move-result-object v7

    .line 120
    iget-object v0, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    .line 2016
    iget-object v0, v0, Lcom/a/a/a/f;->c:Lcom/a/a/a/g;

    .line 121
    invoke-virtual {v0}, Lcom/a/a/a/g;->getAnalyticsFilesManager()Lcom/a/a/a/ac;

    move-result-object v5

    .line 122
    iget-object v0, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    invoke-virtual {v5, v0}, Lcom/a/a/a/ac;->registerRollOverListener(Lio/fabric/sdk/android/services/b/d;)V

    .line 123
    iget-object v0, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    new-instance v8, Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    .line 3016
    iget-object v2, v1, Lcom/a/a/a/f;->a:Lio/fabric/sdk/android/i;

    .line 123
    iget-object v1, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    .line 4016
    iget-object v3, v1, Lcom/a/a/a/f;->b:Landroid/content/Context;

    .line 123
    iget-object v1, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    iget-object v4, v1, Lcom/a/a/a/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/a/a/a/f$4;->a:Lcom/a/a/a/f;

    .line 5016
    iget-object v6, v1, Lcom/a/a/a/f;->e:Lio/fabric/sdk/android/services/network/d;

    move-object v1, v8

    .line 124
    invoke-direct/range {v1 .. v7}, Lcom/a/a/a/o;-><init>(Lio/fabric/sdk/android/i;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/a/a/a/ac;Lio/fabric/sdk/android/services/network/d;Lcom/a/a/a/ah;)V

    iput-object v8, v0, Lcom/a/a/a/f;->g:Lcom/a/a/a/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 126
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to enable events"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
