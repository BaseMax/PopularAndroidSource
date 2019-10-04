.class final Lcom/pusher/client/connection/b/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/b/b;->onMessage(Ljava/lang/String;)V
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

    .line 256
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$6;->b:Lcom/pusher/client/connection/b/b;

    iput-object p2, p0, Lcom/pusher/client/connection/b/b$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 259
    invoke-static {}, Lcom/pusher/client/connection/b/b;->a()Lcom/google/gson/e;

    move-result-object v0

    iget-object v1, p0, Lcom/pusher/client/connection/b/b$6;->a:Ljava/lang/String;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "event"

    .line 260
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/pusher/client/connection/b/b$6;->b:Lcom/pusher/client/connection/b/b;

    iget-object v2, p0, Lcom/pusher/client/connection/b/b$6;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/pusher/client/connection/b/b;->a(Lcom/pusher/client/connection/b/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
