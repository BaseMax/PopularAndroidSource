.class public Lorg/eclipse/paho/android/service/MqttService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/android/service/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/MqttService$a;,
        Lorg/eclipse/paho/android/service/MqttService$b;
    }
.end annotation


# instance fields
.field a:Lorg/eclipse/paho/android/service/c;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lorg/eclipse/paho/android/service/MqttService$b;

.field private e:Lorg/eclipse/paho/android/service/MqttService$a;

.field private volatile f:Z

.field private g:Lorg/eclipse/paho/android/service/f;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/paho/android/service/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    .line 255
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/d;

    if-eqz p1, :cond_0

    return-object p1

    .line 588
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ClientHandle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 734
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    if-eqz v0, :cond_0

    .line 735
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    .line 736
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    .line 737
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.traceTag"

    .line 738
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.errorMessage"

    .line 740
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 3

    .line 2857
    iget-object p0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/android/service/d;

    .line 3007
    iget-boolean v1, v0, Lorg/eclipse/paho/android/service/d;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/eclipse/paho/android/service/d;->f:Z

    if-nez v1, :cond_0

    .line 3008
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Android offline"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/d;->connectionLost(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;Z)Z
    .locals 0

    .line 226
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    return p1
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/MqttService;)Z
    .locals 0

    .line 226
    iget-boolean p0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    return p0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reconnect to server, client size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/d;

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/d;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/d;->getServerURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reconnect Client:"

    .line 339
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V
    .locals 2

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MqttService.callbackToActivity.v0"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "MqttService.clientHandle"

    .line 279
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "MqttService.callbackStatus"

    .line 282
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 284
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    :cond_1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public acknowledgeMessageArrival(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/android/service/i;
    .locals 1

    .line 602
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/paho/android/service/c;->discardArrived(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 603
    sget-object p1, Lorg/eclipse/paho/android/service/i;->OK:Lorg/eclipse/paho/android/service/i;

    return-object p1

    .line 606
    :cond_0
    sget-object p1, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    return-object p1
.end method

.method public close(Ljava/lang/String;)V
    .locals 3

    .line 354
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 1387
    iget-object v0, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "close()"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :try_start_0
    iget-object v0, p1, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p1, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->close()V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1394
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/paho/android/service/d;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Lorg/eclipse/paho/a/a/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/u;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    const/4 p3, 0x0

    .line 329
    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/paho/android/service/d;->connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteBufferedMessage(Ljava/lang/String;I)V
    .locals 0

    .line 908
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 909
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/d;->deleteBufferedMessage(I)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 395
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object v0

    .line 1410
    iget-object v1, v0, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    const-string v2, "MqttConnection"

    const-string v3, "disconnect()"

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1411
    iput-boolean v1, v0, Lorg/eclipse/paho/android/service/d;->e:Z

    .line 1412
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MqttService.activityToken"

    .line 1413
    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "MqttService.invocationContext"

    .line 1415
    invoke-virtual {v1, p5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "disconnect"

    const-string v2, "MqttService.callbackAction"

    .line 1418
    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v2, v0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/i;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1421
    new-instance p5, Lorg/eclipse/paho/android/service/d$a;

    const/4 v2, 0x0

    invoke-direct {p5, v0, v1, v2}, Lorg/eclipse/paho/android/service/d$a;-><init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;B)V

    .line 1424
    :try_start_0
    iget-object v2, v0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v2, p2, p3, p4, p5}, Lorg/eclipse/paho/a/a/i;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1426
    invoke-virtual {v0, v1, p2}, Lorg/eclipse/paho/android/service/d;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string p2, "not connected"

    const-string p3, "MqttService.errorMessage"

    .line 1429
    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object p3, v0, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {p3, p5, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object p2, v0, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p3, v0, Lorg/eclipse/paho/android/service/d;->b:Ljava/lang/String;

    sget-object p4, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    invoke-virtual {p2, p3, p4, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    .line 1436
    :goto_0
    iget-object p2, v0, Lorg/eclipse/paho/android/service/d;->a:Lorg/eclipse/paho/a/a/n;

    if-eqz p2, :cond_1

    iget-object p2, v0, Lorg/eclipse/paho/android/service/d;->a:Lorg/eclipse/paho/a/a/n;

    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/n;->isCleanSession()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1438
    iget-object p2, v0, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p2, p2, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    iget-object p3, v0, Lorg/eclipse/paho/android/service/d;->b:Ljava/lang/String;

    invoke-interface {p2, p3}, Lorg/eclipse/paho/android/service/c;->clearArrivedMessages(Ljava/lang/String;)V

    .line 1441
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/d;->a()V

    .line 397
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->stopSelf()V

    return-void
.end method

.method public disconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 370
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p2, p3}, Lorg/eclipse/paho/android/service/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->stopSelf()V

    return-void
.end method

.method public getBufferedMessage(Ljava/lang/String;I)Lorg/eclipse/paho/a/a/q;
    .locals 0

    .line 903
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 904
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/d;->getBufferedMessage(I)Lorg/eclipse/paho/a/a/q;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedMessageCount(Ljava/lang/String;)I
    .locals 0

    .line 898
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 899
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/d;->getBufferedMessageCount()I

    move-result p1

    return p1
.end method

.method public getClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;)Ljava/lang/String;
    .locals 8

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 303
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lorg/eclipse/paho/android/service/d;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/android/service/d;-><init>(Lorg/eclipse/paho/android/service/MqttService;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method public getPendingDeliveryTokens(Ljava/lang/String;)[Lorg/eclipse/paho/a/a/f;
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 576
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/d;->getPendingDeliveryTokens()[Lorg/eclipse/paho/a/a/f;

    move-result-object p1

    return-object p1
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/d;->isConnected()Z

    move-result p1

    return p1
.end method

.method public isOnline()Z
    .locals 2

    const-string v0, "connectivity"

    .line 840
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 841
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "MqttService.activityToken"

    .line 662
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 663
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    .line 2042
    iput-object p1, v0, Lorg/eclipse/paho/android/service/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 617
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 621
    new-instance v0, Lorg/eclipse/paho/android/service/f;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/android/service/f;-><init>(Lorg/eclipse/paho/android/service/MqttService;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    .line 625
    new-instance v0, Lorg/eclipse/paho/android/service/b;

    invoke-direct {v0, p0, p0}, Lorg/eclipse/paho/android/service/b;-><init>(Lorg/eclipse/paho/android/service/MqttService;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 636
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/d;

    .line 637
    invoke-virtual {v1, v2, v2}, Lorg/eclipse/paho/android/service/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    if-eqz v0, :cond_1

    .line 642
    iput-object v2, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Lorg/eclipse/paho/android/service/f;

    .line 1792
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    if-eqz v0, :cond_2

    .line 1793
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1794
    iput-object v2, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    .line 1797
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_3

    .line 1798
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    if-eqz v0, :cond_3

    .line 1799
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 647
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    if-eqz v0, :cond_4

    .line 648
    invoke-interface {v0}, Lorg/eclipse/paho/android/service/c;->close()V

    .line 650
    :cond_4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 2771
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 2772
    new-instance p1, Lorg/eclipse/paho/android/service/MqttService$b;

    invoke-direct {p1, p0, p2}, Lorg/eclipse/paho/android/service/MqttService$b;-><init>(Lorg/eclipse/paho/android/service/MqttService;B)V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    .line 2773
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Lorg/eclipse/paho/android/service/MqttService$b;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2777
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p1, p3, :cond_1

    const-string p1, "connectivity"

    .line 2779
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2780
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    .line 2781
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    if-nez p1, :cond_1

    .line 2782
    new-instance p1, Lorg/eclipse/paho/android/service/MqttService$a;

    invoke-direct {p1, p0, p2}, Lorg/eclipse/paho/android/service/MqttService$a;-><init>(Lorg/eclipse/paho/android/service/MqttService;B)V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    .line 2783
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$a;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/q;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 467
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 468
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/d;->publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/f;

    move-result-object p1

    return-object p1
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/f;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 443
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/android/service/d;->publish(Ljava/lang/String;[BIZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/f;

    move-result-object p1

    return-object p1
.end method

.method public setBufferOpts(Ljava/lang/String;Lorg/eclipse/paho/a/a/b;)V
    .locals 0

    .line 893
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 894
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/d;->setBufferOpts(Lorg/eclipse/paho/a/a/b;)V

    return-void
.end method

.method public setTraceCallbackId(Ljava/lang/String;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    return-void
.end method

.method public setTraceEnabled(Z)V
    .locals 0

    .line 695
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    return-void
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 488
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/d;->subscribe(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 508
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/d;->subscribe([Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;[Lorg/eclipse/paho/a/a/g;)V
    .locals 6

    .line 527
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 528
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/android/service/d;->subscribe([Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;[Lorg/eclipse/paho/a/a/g;)V

    return-void
.end method

.method public traceDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "debug"

    .line 717
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public traceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    .line 730
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 757
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    const-string v2, "exception"

    .line 760
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.errorMessage"

    .line 761
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.exception"

    .line 762
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "MqttService.traceTag"

    .line 763
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 545
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 1724
    iget-object v0, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsubscribe({"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "},{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "unsubscribe"

    .line 1727
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.activityToken"

    .line 1729
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "MqttService.invocationContext"

    .line 1731
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object p4, p1, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    if-eqz p4, :cond_0

    iget-object p4, p1, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {p4}, Lorg/eclipse/paho/a/a/i;->isConnected()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1735
    new-instance p4, Lorg/eclipse/paho/android/service/d$a;

    const/4 v1, 0x0

    invoke-direct {p4, p1, v0, v1}, Lorg/eclipse/paho/android/service/d$a;-><init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;B)V

    .line 1738
    :try_start_0
    iget-object v1, p1, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v1, p2, p3, p4}, Lorg/eclipse/paho/a/a/i;->unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1740
    invoke-virtual {p1, v0, p2}, Lorg/eclipse/paho/android/service/d;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p2, "not connected"

    const-string p3, "MqttService.errorMessage"

    .line 1743
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    iget-object p3, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    const-string p4, "subscribe"

    invoke-virtual {p3, p4, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iget-object p2, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p1, p1, Lorg/eclipse/paho/android/service/d;->b:Ljava/lang/String;

    sget-object p3, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    invoke-virtual {p2, p1, p3, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 563
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d;

    move-result-object p1

    .line 1763
    iget-object v0, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsubscribe({"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "},{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "unsubscribe"

    .line 1766
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.activityToken"

    .line 1768
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "MqttService.invocationContext"

    .line 1770
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    iget-object p4, p1, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    if-eqz p4, :cond_0

    iget-object p4, p1, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {p4}, Lorg/eclipse/paho/a/a/i;->isConnected()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1774
    new-instance p4, Lorg/eclipse/paho/android/service/d$a;

    const/4 v1, 0x0

    invoke-direct {p4, p1, v0, v1}, Lorg/eclipse/paho/android/service/d$a;-><init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;B)V

    .line 1777
    :try_start_0
    iget-object v1, p1, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v1, p2, p3, p4}, Lorg/eclipse/paho/a/a/i;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1779
    invoke-virtual {p1, v0, p2}, Lorg/eclipse/paho/android/service/d;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p2, "not connected"

    const-string p3, "MqttService.errorMessage"

    .line 1782
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    iget-object p3, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    const-string p4, "subscribe"

    invoke-virtual {p3, p4, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-object p2, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p1, p1, Lorg/eclipse/paho/android/service/d;->b:Ljava/lang/String;

    sget-object p3, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    invoke-virtual {p2, p1, p3, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    return-void
.end method
