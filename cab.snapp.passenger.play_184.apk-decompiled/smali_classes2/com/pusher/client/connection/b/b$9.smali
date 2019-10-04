.class final Lcom/pusher/client/connection/b/b$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/pusher/client/connection/b/b;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/b/b;Ljava/lang/Exception;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$9;->b:Lcom/pusher/client/connection/b/b;

    iput-object p2, p0, Lcom/pusher/client/connection/b/b$9;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$9;->b:Lcom/pusher/client/connection/b/b;

    iget-object v1, p0, Lcom/pusher/client/connection/b/b$9;->a:Ljava/lang/Exception;

    const-string v2, "An exception was thrown by the websocket"

    invoke-static {v0, v2, v1}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/b/b;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
