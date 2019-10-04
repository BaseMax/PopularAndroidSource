.class final Lcom/pusher/client/connection/b/b$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/client/connection/b/b$a;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/b/b$a;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$a$2;->a:Lcom/pusher/client/connection/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 401
    invoke-static {}, Lcom/pusher/client/connection/b/b;->b()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Timed out awaiting pong from server - disconnecting"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a$2;->a:Lcom/pusher/client/connection/b/b$a;

    iget-object v0, v0, Lcom/pusher/client/connection/b/b$a;->a:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->c(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/connection/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/connection/b/a;->removeWebSocketListener()V

    .line 405
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a$2;->a:Lcom/pusher/client/connection/b/b$a;

    iget-object v0, v0, Lcom/pusher/client/connection/b/b$a;->a:Lcom/pusher/client/connection/b/b;

    invoke-virtual {v0}, Lcom/pusher/client/connection/b/b;->disconnect()V

    .line 410
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a$2;->a:Lcom/pusher/client/connection/b/b$a;

    iget-object v0, v0, Lcom/pusher/client/connection/b/b$a;->a:Lcom/pusher/client/connection/b/b;

    const/4 v1, -0x1

    const-string v2, "Pong timeout"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pusher/client/connection/b/b;->onClose(ILjava/lang/String;Z)V

    return-void
.end method
