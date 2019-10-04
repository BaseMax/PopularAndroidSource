.class Lcom/webengage/sdk/android/at$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/at;


# direct methods
.method public constructor <init>(Lcom/webengage/sdk/android/at;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {v0}, Lcom/webengage/sdk/android/at;->a(Lcom/webengage/sdk/android/at;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "WebEngage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "YAIS: processing complete, service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {v3}, Lcom/webengage/sdk/android/at;->b(Lcom/webengage/sdk/android/at;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Thread id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/at$a;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {v1}, Lcom/webengage/sdk/android/at;->c(Lcom/webengage/sdk/android/at;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {v1}, Lcom/webengage/sdk/android/at;->c(Lcom/webengage/sdk/android/at;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/ar;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/ar;->b()V

    iget-object v1, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {v1}, Lcom/webengage/sdk/android/at;->c(Lcom/webengage/sdk/android/at;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {v1}, Lcom/webengage/sdk/android/at;->d(Lcom/webengage/sdk/android/at;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const-string p1, "WebEngage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "YAIS: disconnecting from service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {v2}, Lcom/webengage/sdk/android/at;->b(Lcom/webengage/sdk/android/at;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {p1}, Lcom/webengage/sdk/android/at;->e(Lcom/webengage/sdk/android/at;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/webengage/sdk/android/at;->a(Lcom/webengage/sdk/android/at;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "WebEngage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "YAIS: Some exception occurred while handling incoming messages from service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/webengage/sdk/android/at$a;->a:Lcom/webengage/sdk/android/at;

    invoke-static {v3}, Lcom/webengage/sdk/android/at;->b(Lcom/webengage/sdk/android/at;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
