.class final Lcom/pusher/client/connection/b/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b;->sendMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pusher/client/connection/b/b;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/b/b;Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$3;->b:Lcom/pusher/client/connection/b/b;

    iput-object p2, p0, Lcom/pusher/client/connection/b/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$3;->b:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$3;->b:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->c(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/connection/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/pusher/client/connection/b/b$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pusher/client/connection/b/a;->send(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$3;->b:Lcom/pusher/client/connection/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot send a message while in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pusher/client/connection/b/b$3;->b:Lcom/pusher/client/connection/b/b;

    invoke-static {v2}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/connection/ConnectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/b/b;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/pusher/client/connection/b/b$3;->b:Lcom/pusher/client/connection/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An exception occurred while sending message ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pusher/client/connection/b/b$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/b/b;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
