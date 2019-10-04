.class final Lcom/pusher/client/connection/b/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/ConnectionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/client/connection/b;

.field final synthetic b:Lcom/pusher/client/connection/c;

.field final synthetic c:Lcom/pusher/client/connection/b/b;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/b/b;Lcom/pusher/client/connection/b;Lcom/pusher/client/connection/c;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$4;->c:Lcom/pusher/client/connection/b/b;

    iput-object p2, p0, Lcom/pusher/client/connection/b/b$4;->a:Lcom/pusher/client/connection/b;

    iput-object p3, p0, Lcom/pusher/client/connection/b/b$4;->b:Lcom/pusher/client/connection/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$4;->a:Lcom/pusher/client/connection/b;

    iget-object v1, p0, Lcom/pusher/client/connection/b/b$4;->b:Lcom/pusher/client/connection/c;

    invoke-interface {v0, v1}, Lcom/pusher/client/connection/b;->onConnectionStateChange(Lcom/pusher/client/connection/c;)V

    return-void
.end method
