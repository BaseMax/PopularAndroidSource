.class public final Lcom/pusher/client/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/pusher/client/d;

.field private final b:Lcom/pusher/client/connection/a/a;

.field private final c:Lcom/pusher/client/channel/a/b;

.field private final d:Lcom/pusher/client/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/pusher/client/d;

    invoke-direct {v0}, Lcom/pusher/client/d;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/pusher/client/c;-><init>(Ljava/lang/String;Lcom/pusher/client/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pusher/client/d;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/pusher/client/a/a;

    invoke-direct {v0}, Lcom/pusher/client/a/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/pusher/client/c;-><init>(Ljava/lang/String;Lcom/pusher/client/d;Lcom/pusher/client/a/a;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/pusher/client/d;Lcom/pusher/client/a/a;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 100
    iput-object p2, p0, Lcom/pusher/client/c;->a:Lcom/pusher/client/d;

    .line 101
    iput-object p3, p0, Lcom/pusher/client/c;->d:Lcom/pusher/client/a/a;

    .line 102
    iget-object p2, p0, Lcom/pusher/client/c;->a:Lcom/pusher/client/d;

    invoke-virtual {p3, p1, p2}, Lcom/pusher/client/a/a;->getConnection(Ljava/lang/String;Lcom/pusher/client/d;)Lcom/pusher/client/connection/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    .line 103
    invoke-virtual {p3}, Lcom/pusher/client/a/a;->getChannelManager()Lcom/pusher/client/channel/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    .line 104
    iget-object p1, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    iget-object p2, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    invoke-virtual {p1, p2}, Lcom/pusher/client/channel/a/b;->setConnection(Lcom/pusher/client/connection/a/a;)V

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PusherOptions cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "API Key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/pusher/client/c;->a:Lcom/pusher/client/d;

    invoke-virtual {v0}, Lcom/pusher/client/d;->getAuthorizer()Lcom/pusher/client/b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a private or presence channel because no Authorizer has been set. Call PusherOptions.setAuthorizer() before connecting to Pusher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final connect()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/pusher/client/connection/ConnectionState;

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v1, v0}, Lcom/pusher/client/c;->connect(Lcom/pusher/client/connection/b;[Lcom/pusher/client/connection/ConnectionState;)V

    return-void
.end method

.method public final varargs connect(Lcom/pusher/client/connection/b;[Lcom/pusher/client/connection/ConnectionState;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 160
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/pusher/client/connection/ConnectionState;

    .line 161
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    aput-object v0, p2, v1

    .line 164
    :cond_0
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 165
    iget-object v3, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    invoke-interface {v3, v2, p1}, Lcom/pusher/client/connection/a/a;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    array-length p1, p2

    if-gtz p1, :cond_3

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    invoke-interface {p1}, Lcom/pusher/client/connection/a/a;->connect()V

    return-void

    .line 170
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot bind to connection states with a null connection event listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final disconnect()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    invoke-interface {v0}, Lcom/pusher/client/connection/a/a;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    invoke-interface {v0}, Lcom/pusher/client/connection/a/a;->disconnect()V

    :cond_0
    return-void
.end method

.method public final getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/a;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/a/b;->getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/a;

    move-result-object p1

    return-object p1
.end method

.method public final getConnection()Lcom/pusher/client/connection/a;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    return-object v0
.end method

.method public final getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/c;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/a/b;->getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/c;

    move-result-object p1

    return-object p1
.end method

.method public final getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/e;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/a/b;->getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/e;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Ljava/lang/String;)Lcom/pusher/client/channel/a;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/c;->subscribe(Ljava/lang/String;Lcom/pusher/client/channel/b;[Ljava/lang/String;)Lcom/pusher/client/channel/a;

    move-result-object p1

    return-object p1
.end method

.method public final varargs subscribe(Ljava/lang/String;Lcom/pusher/client/channel/b;[Ljava/lang/String;)Lcom/pusher/client/channel/a;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/pusher/client/c;->d:Lcom/pusher/client/a/a;

    invoke-virtual {v0, p1}, Lcom/pusher/client/a/a;->newPublicChannel(Ljava/lang/String;)Lcom/pusher/client/channel/a/a;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/a/b;->subscribeTo(Lcom/pusher/client/channel/a/c;Lcom/pusher/client/channel/b;[Ljava/lang/String;)V

    return-object p1
.end method

.method public final subscribePresence(Ljava/lang/String;)Lcom/pusher/client/channel/c;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/c;->subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/d;[Ljava/lang/String;)Lcom/pusher/client/channel/c;

    move-result-object p1

    return-object p1
.end method

.method public final varargs subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/d;[Ljava/lang/String;)Lcom/pusher/client/channel/c;
    .locals 3

    .line 317
    invoke-direct {p0}, Lcom/pusher/client/c;->a()V

    .line 319
    iget-object v0, p0, Lcom/pusher/client/c;->d:Lcom/pusher/client/a/a;

    iget-object v1, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    iget-object v2, p0, Lcom/pusher/client/c;->a:Lcom/pusher/client/d;

    .line 320
    invoke-virtual {v2}, Lcom/pusher/client/d;->getAuthorizer()Lcom/pusher/client/b;

    move-result-object v2

    .line 319
    invoke-virtual {v0, v1, p1, v2}, Lcom/pusher/client/a/a;->newPresenceChannel(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;)Lcom/pusher/client/channel/a/d;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/a/b;->subscribeTo(Lcom/pusher/client/channel/a/c;Lcom/pusher/client/channel/b;[Ljava/lang/String;)V

    return-object p1
.end method

.method public final subscribePrivate(Ljava/lang/String;)Lcom/pusher/client/channel/e;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/c;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/f;[Ljava/lang/String;)Lcom/pusher/client/channel/e;

    move-result-object p1

    return-object p1
.end method

.method public final varargs subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/f;[Ljava/lang/String;)Lcom/pusher/client/channel/e;
    .locals 3

    .line 278
    invoke-direct {p0}, Lcom/pusher/client/c;->a()V

    .line 280
    iget-object v0, p0, Lcom/pusher/client/c;->d:Lcom/pusher/client/a/a;

    iget-object v1, p0, Lcom/pusher/client/c;->b:Lcom/pusher/client/connection/a/a;

    iget-object v2, p0, Lcom/pusher/client/c;->a:Lcom/pusher/client/d;

    .line 281
    invoke-virtual {v2}, Lcom/pusher/client/d;->getAuthorizer()Lcom/pusher/client/b;

    move-result-object v2

    .line 280
    invoke-virtual {v0, v1, p1, v2}, Lcom/pusher/client/a/a;->newPrivateChannel(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;)Lcom/pusher/client/channel/a/e;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/a/b;->subscribeTo(Lcom/pusher/client/channel/a/c;Lcom/pusher/client/channel/b;[Ljava/lang/String;)V

    return-object p1
.end method

.method public final unsubscribe(Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/pusher/client/c;->c:Lcom/pusher/client/channel/a/b;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/a/b;->unsubscribeFrom(Ljava/lang/String;)V

    return-void
.end method
