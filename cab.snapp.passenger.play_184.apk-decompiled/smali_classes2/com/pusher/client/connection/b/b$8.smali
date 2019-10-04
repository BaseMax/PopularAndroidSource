.class final Lcom/pusher/client/connection/b/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/client/connection/b/b;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/b/b;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$8;->a:Lcom/pusher/client/connection/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$8;->a:Lcom/pusher/client/connection/b/b;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-static {v0, v1}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/b/b;Lcom/pusher/client/connection/ConnectionState;)V

    .line 323
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$8;->a:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->d(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/a/a;->shutdownThreads()V

    return-void
.end method
