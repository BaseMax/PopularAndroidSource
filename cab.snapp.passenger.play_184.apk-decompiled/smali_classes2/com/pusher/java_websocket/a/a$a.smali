.class final Lcom/pusher/java_websocket/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/java_websocket/a/a;


# direct methods
.method private constructor <init>(Lcom/pusher/java_websocket/a/a;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/pusher/java_websocket/a/a$a;->a:Lcom/pusher/java_websocket/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pusher/java_websocket/a/a;B)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/a/a$a;-><init>(Lcom/pusher/java_websocket/a/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 347
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WebsocketWriteThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 349
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a$a;->a:Lcom/pusher/java_websocket/a/a;

    invoke-static {v0}, Lcom/pusher/java_websocket/a/a;->a(Lcom/pusher/java_websocket/a/a;)Lcom/pusher/java_websocket/d;

    move-result-object v0

    iget-object v0, v0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 351
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a$a;->a:Lcom/pusher/java_websocket/a/a;

    invoke-static {v1}, Lcom/pusher/java_websocket/a/a;->b(Lcom/pusher/java_websocket/a/a;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 352
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a$a;->a:Lcom/pusher/java_websocket/a/a;

    invoke-static {v0}, Lcom/pusher/java_websocket/a/a;->b(Lcom/pusher/java_websocket/a/a;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void

    .line 355
    :catch_1
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a$a;->a:Lcom/pusher/java_websocket/a/a;

    invoke-static {v0}, Lcom/pusher/java_websocket/a/a;->a(Lcom/pusher/java_websocket/a/a;)Lcom/pusher/java_websocket/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->eot()V

    return-void
.end method
