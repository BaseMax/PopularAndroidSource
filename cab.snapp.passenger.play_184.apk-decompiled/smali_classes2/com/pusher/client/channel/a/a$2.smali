.class final Lcom/pusher/client/channel/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/a/a;->updateState(Lcom/pusher/client/channel/ChannelState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/client/channel/a/a;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/a/a;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/pusher/client/channel/a/a$2;->a:Lcom/pusher/client/channel/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/pusher/client/channel/a/a$2;->a:Lcom/pusher/client/channel/a/a;

    invoke-static {v0}, Lcom/pusher/client/channel/a/a;->a(Lcom/pusher/client/channel/a/a;)Lcom/pusher/client/channel/b;

    move-result-object v0

    iget-object v1, p0, Lcom/pusher/client/channel/a/a$2;->a:Lcom/pusher/client/channel/a/a;

    invoke-virtual {v1}, Lcom/pusher/client/channel/a/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pusher/client/channel/b;->onSubscriptionSucceeded(Ljava/lang/String;)V

    return-void
.end method
