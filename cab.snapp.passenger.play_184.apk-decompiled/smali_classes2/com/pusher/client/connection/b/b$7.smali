.class final Lcom/pusher/client/connection/b/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/connection/b/b;
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

    .line 301
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$7;->a:Lcom/pusher/client/connection/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$7;->a:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->c(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/connection/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/connection/b/a;->removeWebSocketListener()V

    .line 305
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$7;->a:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->b(Lcom/pusher/client/connection/b/b;)V

    return-void
.end method
