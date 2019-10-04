.class final Lcom/pusher/client/connection/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b;->connect()V
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

    .line 72
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$1;->a:Lcom/pusher/client/connection/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$1;->a:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$1;->a:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->b(Lcom/pusher/client/connection/b/b;)V

    :cond_0
    return-void
.end method
