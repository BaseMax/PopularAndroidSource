.class public final Lcom/pusher/client/channel/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/client/connection/b;


# static fields
.field private static final a:Lcom/google/gson/e;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pusher/client/channel/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/pusher/client/a/a;

.field private d:Lcom/pusher/client/connection/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/a/b;->a:Lcom/google/gson/e;

    return-void
.end method

.method public constructor <init>(Lcom/pusher/client/a/a;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/channel/a/b;->b:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/pusher/client/channel/a/b;->c:Lcom/pusher/client/a/a;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/pusher/client/channel/a/c;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/pusher/client/channel/a/b;)Lcom/pusher/client/connection/a/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/pusher/client/channel/a/b;->d:Lcom/pusher/client/connection/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/pusher/client/channel/a/b;Lcom/pusher/client/channel/a/c;Ljava/lang/Exception;)V
    .locals 2

    .line 2163
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/pusher/client/channel/a/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    sget-object v0, Lcom/pusher/client/channel/ChannelState;->FAILED:Lcom/pusher/client/channel/ChannelState;

    invoke-interface {p1, v0}, Lcom/pusher/client/channel/a/c;->updateState(Lcom/pusher/client/channel/ChannelState;)V

    .line 2166
    invoke-interface {p1}, Lcom/pusher/client/channel/a/c;->getEventListener()Lcom/pusher/client/channel/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/channel/a/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/pusher/client/channel/a/b$3;-><init>(Lcom/pusher/client/channel/a/b;Lcom/pusher/client/channel/a/c;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/pusher/client/channel/a/c;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/channel/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/channel/a/b$1;-><init>(Lcom/pusher/client/channel/a/b;Lcom/pusher/client/channel/a/c;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/a;
    .locals 1

    const-string v0, "private-"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "presence-"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/a/b;->a(Ljava/lang/String;)Lcom/pusher/client/channel/a/c;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please use the getPresenceChannel method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please use the getPrivateChannel method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "presence-"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/a/b;->a(Ljava/lang/String;)Lcom/pusher/client/channel/a/c;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/c;

    return-object p1

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Presence channels must begin with \'presence-\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "private-"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/a/b;->a(Ljava/lang/String;)Lcom/pusher/client/channel/a/c;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/e;

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Private channels must begin with \'private-\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onConnectionStateChange(Lcom/pusher/client/connection/c;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Lcom/pusher/client/connection/c;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/pusher/client/channel/a/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/a/c;

    .line 119
    invoke-direct {p0, v0}, Lcom/pusher/client/channel/a/b;->a(Lcom/pusher/client/channel/a/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 99
    sget-object v0, Lcom/pusher/client/channel/a/b;->a:Lcom/google/gson/e;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "channel"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    check-cast v0, Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/pusher/client/channel/a/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/a/c;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Lcom/pusher/client/channel/a/c;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setConnection(Lcom/pusher/client/connection/a/a;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->d:Lcom/pusher/client/connection/a/a;

    if-eqz v0, :cond_0

    .line 67
    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-interface {v0, v1, p0}, Lcom/pusher/client/connection/a/a;->unbind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/b;)Z

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/pusher/client/channel/a/b;->d:Lcom/pusher/client/connection/a/a;

    .line 71
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-interface {p1, v0, p0}, Lcom/pusher/client/connection/a/a;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/b;)V

    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot construct ChannelManager with a null connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs subscribeTo(Lcom/pusher/client/channel/a/c;Lcom/pusher/client/channel/b;[Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/pusher/client/channel/a/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 1193
    invoke-interface {p1, v2, p2}, Lcom/pusher/client/channel/a/c;->bind(Ljava/lang/String;Lcom/pusher/client/channel/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1196
    :cond_0
    invoke-interface {p1, p2}, Lcom/pusher/client/channel/a/c;->setEventListener(Lcom/pusher/client/channel/b;)V

    .line 77
    iget-object p2, p0, Lcom/pusher/client/channel/a/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/pusher/client/channel/a/c;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/a/b;->a(Lcom/pusher/client/channel/a/c;)V

    return-void

    .line 1189
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Already subscribed to a channel with name "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/pusher/client/channel/a/c;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1185
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot subscribe to a null channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final unsubscribeFrom(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/a/c;

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->d:Lcom/pusher/client/connection/a/a;

    invoke-interface {v0}, Lcom/pusher/client/connection/a/a;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_1

    .line 2152
    iget-object v0, p0, Lcom/pusher/client/channel/a/b;->c:Lcom/pusher/client/a/a;

    new-instance v1, Lcom/pusher/client/channel/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/channel/a/b$2;-><init>(Lcom/pusher/client/channel/a/b;Lcom/pusher/client/channel/a/c;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/a/a;->queueOnEventThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot unsubscribe from null channel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
