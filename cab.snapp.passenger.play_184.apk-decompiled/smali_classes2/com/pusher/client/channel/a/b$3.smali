.class final Lcom/pusher/client/channel/a/b$3;
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

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/pusher/client/channel/a/b;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/a/b;Lcom/pusher/client/channel/a/c;Ljava/lang/Exception;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/pusher/client/channel/a/b$3;->c:Lcom/pusher/client/channel/a/b;

    iput-object p2, p0, Lcom/pusher/client/channel/a/b$3;->a:Lcom/pusher/client/channel/a/c;

    iput-object p3, p0, Lcom/pusher/client/channel/a/b$3;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/pusher/client/channel/a/b$3;->a:Lcom/pusher/client/channel/a/c;

    invoke-interface {v0}, Lcom/pusher/client/channel/a/c;->getEventListener()Lcom/pusher/client/channel/b;

    move-result-object v0

    .line 175
    check-cast v0, Lcom/pusher/client/channel/f;

    .line 176
    iget-object v1, p0, Lcom/pusher/client/channel/a/b$3;->b:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pusher/client/channel/a/b$3;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/f;->onAuthenticationFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
