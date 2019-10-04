.class final Lcom/pusher/client/connection/b/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/client/connection/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Exception;

.field final synthetic e:Lcom/pusher/client/connection/b/b;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/b/b;Lcom/pusher/client/connection/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$5;->e:Lcom/pusher/client/connection/b/b;

    iput-object p2, p0, Lcom/pusher/client/connection/b/b$5;->a:Lcom/pusher/client/connection/b;

    iput-object p3, p0, Lcom/pusher/client/connection/b/b$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/pusher/client/connection/b/b$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/pusher/client/connection/b/b$5;->d:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$5;->a:Lcom/pusher/client/connection/b;

    iget-object v1, p0, Lcom/pusher/client/connection/b/b$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/pusher/client/connection/b/b$5;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/pusher/client/connection/b/b$5;->d:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/pusher/client/connection/b;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
