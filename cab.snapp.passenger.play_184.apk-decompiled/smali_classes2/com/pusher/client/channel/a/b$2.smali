.class final Lcom/pusher/client/channel/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/channel/a/b;
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

    .line 152
    iput-object p1, p0, Lcom/pusher/client/channel/a/b$2;->b:Lcom/pusher/client/channel/a/b;

    iput-object p2, p0, Lcom/pusher/client/channel/a/b$2;->a:Lcom/pusher/client/channel/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/pusher/client/channel/a/b$2;->b:Lcom/pusher/client/channel/a/b;

    invoke-static {v0}, Lcom/pusher/client/channel/a/b;->a(Lcom/pusher/client/channel/a/b;)Lcom/pusher/client/connection/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/pusher/client/channel/a/b$2;->a:Lcom/pusher/client/channel/a/c;

    invoke-interface {v1}, Lcom/pusher/client/channel/a/c;->toUnsubscribeMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pusher/client/connection/a/a;->sendMessage(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/pusher/client/channel/a/b$2;->a:Lcom/pusher/client/channel/a/c;

    sget-object v1, Lcom/pusher/client/channel/ChannelState;->UNSUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    invoke-interface {v0, v1}, Lcom/pusher/client/channel/a/c;->updateState(Lcom/pusher/client/channel/ChannelState;)V

    return-void
.end method
