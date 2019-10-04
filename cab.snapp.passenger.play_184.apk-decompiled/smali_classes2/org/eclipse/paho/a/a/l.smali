.class public final Lorg/eclipse/paho/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/e;


# instance fields
.field protected a:Lorg/eclipse/paho/a/a/i;

.field protected b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 138
    new-instance v0, Lorg/eclipse/paho/a/a/c/b;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/c/b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/a/a/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lorg/eclipse/paho/a/a/l;->b:J

    .line 227
    new-instance v0, Lorg/eclipse/paho/a/a/i;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/paho/a/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lorg/eclipse/paho/a/a/l;->b:J

    .line 317
    new-instance v0, Lorg/eclipse/paho/a/a/i;

    new-instance v6, Lorg/eclipse/paho/a/a/x;

    invoke-direct {v6, p4}, Lorg/eclipse/paho/a/a/x;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/a/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/t;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    return-void
.end method

.method public static generateClientId()Ljava/lang/String;
    .locals 1

    .line 703
    invoke-static {}, Lorg/eclipse/paho/a/a/i;->generateClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/i;->close(Z)V

    return-void
.end method

.method public final close(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/i;->close(Z)V

    return-void
.end method

.method public final connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/u;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 324
    new-instance v0, Lorg/eclipse/paho/a/a/n;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/n;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/a/a/l;->connect(Lorg/eclipse/paho/a/a/n;)V

    return-void
.end method

.method public final connect(Lorg/eclipse/paho/a/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/u;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/paho/a/a/i;->connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/l;->getTimeToWait()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/paho/a/a/h;->waitForCompletion(J)V

    return-void
.end method

.method public final connectWithResult(Lorg/eclipse/paho/a/a/n;)Lorg/eclipse/paho/a/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/u;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/paho/a/a/i;->connect(Lorg/eclipse/paho/a/a/n;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    .line 339
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/l;->getTimeToWait()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/paho/a/a/h;->waitForCompletion(J)V

    return-object p1
.end method

.method public final disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->disconnect()Lorg/eclipse/paho/a/a/h;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/h;->waitForCompletion()V

    return-void
.end method

.method public final disconnect(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/eclipse/paho/a/a/i;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/h;->waitForCompletion()V

    return-void
.end method

.method public final disconnectForcibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->disconnectForcibly()V

    return-void
.end method

.method public final disconnectForcibly(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/i;->disconnectForcibly(J)V

    return-void
.end method

.method public final disconnectForcibly(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/paho/a/a/i;->disconnectForcibly(JJ)V

    return-void
.end method

.method public final disconnectForcibly(JJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/a/a/i;->disconnectForcibly(JJZ)V

    return-void
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 629
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentServerURI()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->getCurrentServerURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDebug()Lorg/eclipse/paho/a/a/e/a;
    .locals 1

    .line 719
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->getDebug()Lorg/eclipse/paho/a/a/e/a;

    move-result-object v0

    return-object v0
.end method

.method public final getPendingDeliveryTokens()[Lorg/eclipse/paho/a/a/f;
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->getPendingDeliveryTokens()[Lorg/eclipse/paho/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final getServerURI()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->getServerURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeToWait()J
    .locals 2

    .line 606
    iget-wide v0, p0, Lorg/eclipse/paho/a/a/l;->b:J

    return-wide v0
.end method

.method public final getTopic(Ljava/lang/String;)Lorg/eclipse/paho/a/a/w;
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/i;->a(Ljava/lang/String;)Lorg/eclipse/paho/a/a/w;

    move-result-object p1

    return-object p1
.end method

.method public final isConnected()Z
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final messageArrivedComplete(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/i;->messageArrivedComplete(II)V

    return-void
.end method

.method public final publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/eclipse/paho/a/a/i;->publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/f;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/l;->getTimeToWait()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/paho/a/a/f;->waitForCompletion(J)V

    return-void
.end method

.method public final publish(Ljava/lang/String;[BIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 559
    new-instance v0, Lorg/eclipse/paho/a/a/q;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/a/a/q;-><init>([B)V

    .line 560
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/a/a/q;->setQos(I)V

    .line 561
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/a/a/q;->setRetained(Z)V

    .line 562
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/a/a/l;->publish(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V

    return-void
.end method

.method public final reconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/i;->reconnect()V

    return-void
.end method

.method public final setCallback(Lorg/eclipse/paho/a/a/j;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/i;->setCallback(Lorg/eclipse/paho/a/a/j;)V

    return-void
.end method

.method public final setManualAcks(Z)V
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/i;->setManualAcks(Z)V

    return-void
.end method

.method public final setTimeToWait(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 597
    iput-wide p1, p0, Lorg/eclipse/paho/a/a/l;->b:J

    return-void

    .line 595
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subscribe(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput v0, p1, v2

    .line 404
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/paho/a/a/l;->subscribe([Ljava/lang/String;[I)V

    return-void
.end method

.method public final subscribe(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    .line 422
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/paho/a/a/l;->subscribe([Ljava/lang/String;[I)V

    return-void
.end method

.method public final subscribe(Ljava/lang/String;ILorg/eclipse/paho/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    new-array p2, v0, [Lorg/eclipse/paho/a/a/g;

    aput-object p3, p2, v2

    .line 454
    invoke-virtual {p0, v1, p1, p2}, Lorg/eclipse/paho/a/a/l;->subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)V

    return-void
.end method

.method public final subscribe(Ljava/lang/String;Lorg/eclipse/paho/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput v0, p1, v2

    new-array v0, v0, [Lorg/eclipse/paho/a/a/g;

    aput-object p2, v0, v2

    .line 436
    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/paho/a/a/l;->subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)V

    return-void
.end method

.method public final subscribe([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 411
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 412
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 415
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/a/a/l;->subscribe([Ljava/lang/String;[I)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 413
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final subscribe([Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/a/a/l;->subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)V

    return-void
.end method

.method public final subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/a/a/i;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    .line 460
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/l;->getTimeToWait()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/paho/a/a/h;->waitForCompletion(J)V

    .line 461
    invoke-interface {p1}, Lorg/eclipse/paho/a/a/h;->getGrantedQos()[I

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 462
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 465
    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    aget p1, p2, p3

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p1

    :cond_1
    :goto_1
    return-void

    .line 463
    :cond_2
    aget v1, p1, v0

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final subscribe([Ljava/lang/String;[Lorg/eclipse/paho/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 443
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 444
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 447
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/paho/a/a/l;->subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 445
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final subscribeWithResponse(Ljava/lang/String;)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput v0, p1, v2

    .line 474
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/paho/a/a/l;->subscribeWithResponse([Ljava/lang/String;[I)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWithResponse(Ljava/lang/String;I)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    .line 488
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/paho/a/a/l;->subscribeWithResponse([Ljava/lang/String;[I)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWithResponse(Ljava/lang/String;ILorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    new-array p2, v0, [Lorg/eclipse/paho/a/a/g;

    aput-object p3, p2, v2

    .line 496
    invoke-virtual {p0, v1, p1, p2}, Lorg/eclipse/paho/a/a/l;->subscribeWithResponse([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWithResponse(Ljava/lang/String;Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput v0, p1, v2

    new-array v0, v0, [Lorg/eclipse/paho/a/a/g;

    aput-object p2, v0, v2

    .line 481
    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/paho/a/a/l;->subscribeWithResponse([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWithResponse([Ljava/lang/String;)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 503
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 504
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 507
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/a/a/l;->subscribeWithResponse([Ljava/lang/String;[I)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x1

    .line 505
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final subscribeWithResponse([Ljava/lang/String;[I)Lorg/eclipse/paho/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/a/a/l;->subscribeWithResponse([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWithResponse([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/a/a/i;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/a/a/c;[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    .line 535
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/l;->getTimeToWait()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lorg/eclipse/paho/a/a/h;->waitForCompletion(J)V

    return-object p1
.end method

.method public final subscribeWithResponse([Ljava/lang/String;[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 515
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 516
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 519
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/paho/a/a/l;->subscribeWithResponse([Ljava/lang/String;[I[Lorg/eclipse/paho/a/a/g;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x1

    .line 517
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final unsubscribe(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 543
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/a/a/l;->unsubscribe([Ljava/lang/String;)V

    return-void
.end method

.method public final unsubscribe([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/eclipse/paho/a/a/l;->a:Lorg/eclipse/paho/a/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/paho/a/a/i;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/h;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/l;->getTimeToWait()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/paho/a/a/h;->waitForCompletion(J)V

    return-void
.end method
