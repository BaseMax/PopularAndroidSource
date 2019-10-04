.class public final Lcab/snapp/d/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/d;
.implements Lcom/pusher/client/channel/d;
.implements Lcom/pusher/client/connection/b;


# static fields
.field public static final ACK:I = 0x9

.field public static final TAG:Ljava/lang/String; = "PUSHER"


# instance fields
.field a:Lcom/pusher/client/c;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcab/snapp/c;

.field private final d:Lcab/snapp/d/c/b;

.field private final e:Lcab/snapp/a;

.field private f:Z


# direct methods
.method public constructor <init>(Lcab/snapp/c;Lcab/snapp/a;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcab/snapp/d/c/c;->e:Lcab/snapp/a;

    .line 39
    invoke-interface {p1}, Lcab/snapp/c;->getPusherConfig()Lcab/snapp/d/c/b;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    .line 40
    iput-object p1, p0, Lcab/snapp/d/c/c;->c:Lcab/snapp/c;

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcab/snapp/c;->getEvents()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcab/snapp/d/c/c;->b:Ljava/util/List;

    const-string p1, "PUSHER"

    const-string p2, "Init succeed"

    .line 42
    invoke-static {p1, p2}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcab/snapp/d/c/c;->stop()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    const-string v0, "PUSHER"

    const-string v1, "Destroy succeed"

    .line 98
    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final isStarted()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcab/snapp/d/c/c;->f:Z

    return v0
.end method

.method public final onAuthenticationFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onAuthenticationFailure:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PUSHER"

    invoke-static {p2, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onConnectionStateChange(Lcom/pusher/client/connection/c;)V
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionStateChange:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pusher/client/connection/c;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUSHER"

    invoke-static {v1, v0}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/pusher/client/connection/c;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_1

    .line 137
    :try_start_0
    iget-object p1, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    iget-object v0, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    invoke-virtual {v0}, Lcab/snapp/d/c/b;->getChannel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/d/c/c;->b:Ljava/util/List;

    iget-object v2, p0, Lcab/snapp/d/c/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, p0, v1}, Lcom/pusher/client/c;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/f;[Ljava/lang/String;)Lcom/pusher/client/channel/e;

    :cond_0
    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcab/snapp/d/c/c;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/pusher/client/connection/c;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne p1, v0, :cond_3

    .line 149
    iget-object p1, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Lcab/snapp/d/c/b;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pusher/client/c;->unsubscribe(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcab/snapp/d/c/c;->f:Z

    :cond_3
    return-void
.end method

.method public final onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 163
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 165
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/code:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Exception:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PUSHER"

    invoke-static {p2, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onEvent(Lcab/snapp/a/a;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    .line 112
    invoke-virtual {p1, v0}, Lcab/snapp/a/a;->setAckId(I)V

    .line 113
    iget-object v0, p0, Lcab/snapp/d/c/c;->e:Lcab/snapp/a;

    invoke-interface {v0, p1}, Lcab/snapp/a;->onEvent(Lcab/snapp/a/a;)V

    :cond_0
    return-void
.end method

.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onEvent:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PUSHER"

    invoke-static {p2, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 122
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    new-instance p1, Lcom/google/gson/e;

    invoke-direct {p1}, Lcom/google/gson/e;-><init>()V

    const-class p2, Lcab/snapp/a/a;

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/a/a;

    .line 125
    invoke-virtual {p0, p1}, Lcab/snapp/d/c/c;->onEvent(Lcab/snapp/a/a;)V

    :cond_0
    return-void
.end method

.method public final onSubscriptionSucceeded(Ljava/lang/String;)V
    .locals 1

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSubscriptionSucceeded:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUSHER"

    invoke-static {v0, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/h;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onUsersInformationReceived:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PUSHER"

    invoke-static {p2, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final publish(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final setup()V
    .locals 3

    .line 48
    new-instance v0, Lcom/pusher/client/d;

    invoke-direct {v0}, Lcom/pusher/client/d;-><init>()V

    .line 49
    new-instance v1, Lcab/snapp/d/c/a;

    iget-object v2, p0, Lcab/snapp/d/c/c;->c:Lcab/snapp/c;

    invoke-direct {v1, v2}, Lcab/snapp/d/c/a;-><init>(Lcab/snapp/c;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/d;->setAuthorizer(Lcom/pusher/client/b;)Lcom/pusher/client/d;

    .line 50
    iget-object v1, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcab/snapp/d/c/b;->getAppCluster()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    invoke-virtual {v1}, Lcab/snapp/d/c/b;->getAppCluster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    invoke-virtual {v1}, Lcab/snapp/d/c/b;->getAppCluster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pusher/client/d;->setCluster(Ljava/lang/String;)Lcom/pusher/client/d;

    .line 54
    :cond_0
    new-instance v1, Lcom/pusher/client/c;

    iget-object v2, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    invoke-virtual {v2}, Lcab/snapp/d/c/b;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/pusher/client/c;-><init>(Ljava/lang/String;Lcom/pusher/client/d;)V

    iput-object v1, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    const-string v0, "PUSHER"

    const-string v1, "Setup succeed"

    .line 55
    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final start()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcab/snapp/d/c/c;->setup()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/pusher/client/connection/ConnectionState;

    const/4 v2, 0x0

    sget-object v3, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/pusher/client/c;->connect(Lcom/pusher/client/connection/b;[Lcom/pusher/client/connection/ConnectionState;)V

    const-string v0, "PUSHER"

    const-string v1, "Start succeed"

    .line 66
    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcab/snapp/d/c/c;->d:Lcab/snapp/d/c/b;

    invoke-virtual {v1}, Lcab/snapp/d/c/b;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pusher/client/c;->unsubscribe(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcab/snapp/d/c/c;->a:Lcom/pusher/client/c;

    invoke-virtual {v0}, Lcom/pusher/client/c;->disconnect()V

    const-string v0, "PUSHER"

    const-string v1, "Stop succeed"

    .line 84
    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/h;)V
    .locals 0

    .line 177
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "userSubscribed:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PUSHER"

    invoke-static {p2, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/h;)V
    .locals 0

    .line 183
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "userUnsubscribed:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PUSHER"

    invoke-static {p2, p1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
