.class public Lcom/pusher/client/channel/a/e;
.super Lcom/pusher/client/channel/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/client/channel/e;


# static fields
.field private static final c:Lcom/google/gson/e;


# instance fields
.field private final d:Lcom/pusher/client/connection/a/a;

.field private final e:Lcom/pusher/client/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/a/e;->c:Lcom/google/gson/e;

    return-void
.end method

.method public constructor <init>(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;Lcom/pusher/client/a/a;)V
    .locals 0

    .line 28
    invoke-direct {p0, p2, p4}, Lcom/pusher/client/channel/a/a;-><init>(Ljava/lang/String;Lcom/pusher/client/a/a;)V

    .line 29
    iput-object p1, p0, Lcom/pusher/client/channel/a/e;->d:Lcom/pusher/client/connection/a/a;

    .line 30
    iput-object p3, p0, Lcom/pusher/client/channel/a/e;->e:Lcom/pusher/client/b;

    return-void
.end method


# virtual methods
.method protected a()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "^(?!private-).*"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/pusher/client/channel/a/e;->d:Lcom/pusher/client/connection/a/a;

    invoke-interface {v0}, Lcom/pusher/client/connection/a/a;->getSocketId()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/pusher/client/channel/a/e;->e:Lcom/pusher/client/b;

    invoke-virtual {p0}, Lcom/pusher/client/channel/a/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/pusher/client/b;->authorize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/lang/String;Lcom/pusher/client/channel/g;)V
    .locals 1

    .line 76
    instance-of v0, p2, Lcom/pusher/client/channel/f;

    if-eqz v0, :cond_0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/a/a;->bind(Ljava/lang/String;Lcom/pusher/client/channel/g;)V

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only instances of PrivateChannelEventListener can be bound to a private channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/pusher/client/channel/a/e;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[Private Channel: name=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubscribeMessage()Ljava/lang/String;
    .locals 7

    const-string v0, "auth"

    .line 88
    invoke-virtual {p0}, Lcom/pusher/client/channel/a/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 91
    :try_start_0
    sget-object v2, Lcom/pusher/client/channel/a/e;->c:Lcom/google/gson/e;

    const-class v3, Ljava/util/Map;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 92
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "event"

    const-string v5, "pusher:subscribe"

    .line 95
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "channel"

    .line 98
    iget-object v6, p0, Lcom/pusher/client/channel/a/e;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data"

    .line 101
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/pusher/client/channel/a/e;->c:Lcom/google/gson/e;

    invoke-virtual {v0, v3}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 107
    new-instance v2, Lcom/pusher/client/a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unable to parse response from Authorizer: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/pusher/client/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public trigger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Cannot trigger event "

    if-eqz p1, :cond_2

    const-string v1, "client-"

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/pusher/client/channel/a/e;->b:Lcom/pusher/client/channel/ChannelState;

    sget-object v2, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    const-string v3, " state"

    if-ne v1, v2, :cond_1

    .line 49
    iget-object v1, p0, Lcom/pusher/client/channel/a/e;->d:Lcom/pusher/client/connection/a/a;

    invoke-interface {v1}, Lcom/pusher/client/connection/a/a;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v1

    sget-object v2, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v1, v2, :cond_0

    .line 56
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "event"

    .line 57
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channel"

    .line 58
    iget-object v3, p0, Lcom/pusher/client/channel/a/e;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 59
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v2, Lcom/pusher/client/channel/a/e;->c:Lcom/google/gson/e;

    invoke-virtual {v2, v1}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/pusher/client/channel/a/e;->d:Lcom/pusher/client/connection/a/a;

    invoke-interface {v2, v1}, Lcom/pusher/client/connection/a/a;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 66
    :catch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" could not be parsed as valid JSON"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because connection is in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pusher/client/channel/a/e;->d:Lcom/pusher/client/connection/a/a;

    .line 51
    invoke-interface {p1}, Lcom/pusher/client/connection/a/a;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 45
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because channel "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pusher/client/channel/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pusher/client/channel/a/e;->b:Lcom/pusher/client/channel/ChannelState;

    .line 46
    invoke-virtual {p1}, Lcom/pusher/client/channel/ChannelState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 40
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": client events must start with \"client-\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
