.class final Lcom/pusher/client/connection/b/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b$a;->a()V
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

    .line 367
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$a$1;->a:Lcom/pusher/client/connection/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 370
    invoke-static {}, Lcom/pusher/client/connection/b/b;->b()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sending ping"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a$1;->a:Lcom/pusher/client/connection/b/b$a;

    iget-object v0, v0, Lcom/pusher/client/connection/b/b$a;->a:Lcom/pusher/client/connection/b/b;

    const-string v1, "{\"event\": \"pusher:ping\"}"

    invoke-virtual {v0, v1}, Lcom/pusher/client/connection/b/b;->sendMessage(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a$1;->a:Lcom/pusher/client/connection/b/b$a;

    .line 1343
    invoke-virtual {v0}, Lcom/pusher/client/connection/b/b$a;->c()V

    return-void
.end method
