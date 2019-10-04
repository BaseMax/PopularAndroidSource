.class final Lcom/pusher/client/channel/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/a/b;->a(Lcom/pusher/client/channel/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/client/channel/a/c;

.field final synthetic b:Lcom/pusher/client/channel/a/b;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/a/b;Lcom/pusher/client/channel/a/c;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/pusher/client/channel/a/b$1;->b:Lcom/pusher/client/channel/a/b;

    iput-object p2, p0, Lcom/pusher/client/channel/a/b$1;->a:Lcom/pusher/client/channel/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/pusher/client/channel/a/b$1;->b:Lcom/pusher/client/channel/a/b;

    invoke-static {v0}, Lcom/pusher/client/channel/a/b;->a(Lcom/pusher/client/channel/a/b;)Lcom/pusher/client/connection/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/pusher/client/connection/a/a;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/channel/a/b$1;->a:Lcom/pusher/client/channel/a/c;

    invoke-interface {v0}, Lcom/pusher/client/channel/a/c;->toSubscribeMessage()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/pusher/client/channel/a/b$1;->b:Lcom/pusher/client/channel/a/b;

    invoke-static {v1}, Lcom/pusher/client/channel/a/b;->a(Lcom/pusher/client/channel/a/b;)Lcom/pusher/client/connection/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pusher/client/connection/a/a;->sendMessage(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/pusher/client/channel/a/b$1;->a:Lcom/pusher/client/channel/a/c;

    sget-object v1, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBE_SENT:Lcom/pusher/client/channel/ChannelState;

    invoke-interface {v0, v1}, Lcom/pusher/client/channel/a/c;->updateState(Lcom/pusher/client/channel/ChannelState;)V
    :try_end_0
    .catch Lcom/pusher/client/a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 144
    iget-object v1, p0, Lcom/pusher/client/channel/a/b$1;->b:Lcom/pusher/client/channel/a/b;

    iget-object v2, p0, Lcom/pusher/client/channel/a/b$1;->a:Lcom/pusher/client/channel/a/c;

    invoke-static {v1, v2, v0}, Lcom/pusher/client/channel/a/b;->a(Lcom/pusher/client/channel/a/b;Lcom/pusher/client/channel/a/c;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
