.class public final Lcom/pusher/java_websocket/d/b$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/pusher/java_websocket/d/b;

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/pusher/java_websocket/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 673
    const-class v0, Lcom/pusher/java_websocket/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/pusher/java_websocket/d/b$b;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/pusher/java_websocket/d/b;)V
    .locals 3

    .line 677
    iput-object p1, p0, Lcom/pusher/java_websocket/d/b$b;->b:Lcom/pusher/java_websocket/d/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 678
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/pusher/java_websocket/d/b$b;->c:Ljava/util/concurrent/BlockingQueue;

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebSocketWorker-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pusher/java_websocket/d/b$b;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/d/b$b;->setName(Ljava/lang/String;)V

    .line 680
    new-instance v0, Lcom/pusher/java_websocket/d/b$b$1;

    invoke-direct {v0, p0, p1}, Lcom/pusher/java_websocket/d/b$b$1;-><init>(Lcom/pusher/java_websocket/d/b$b;Lcom/pusher/java_websocket/d/b;)V

    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/d/b$b;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public final put(Lcom/pusher/java_websocket/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b$b;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .locals 6

    const/4 v0, 0x0

    .line 698
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b$b;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pusher/java_websocket/d;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 699
    :try_start_1
    iget-object v0, v1, Lcom/pusher/java_websocket/d;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 700
    sget-boolean v2, Lcom/pusher/java_websocket/d/b$b;->a:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/pusher/java_websocket/d;->decode(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 708
    :try_start_3
    iget-object v2, p0, Lcom/pusher/java_websocket/d/b$b;->b:Lcom/pusher/java_websocket/d/b;

    :goto_2
    invoke-static {v2, v0}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/d/b;Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    .line 704
    :try_start_4
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error while reading from remote connection: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 708
    :try_start_5
    iget-object v2, p0, Lcom/pusher/java_websocket/d/b$b;->b:Lcom/pusher/java_websocket/d/b;

    goto :goto_2

    :goto_3
    move-object v0, v1

    goto :goto_0

    :goto_4
    iget-object v3, p0, Lcom/pusher/java_websocket/d/b$b;->b:Lcom/pusher/java_websocket/d/b;

    invoke-static {v3, v0}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/d/b;Ljava/nio/ByteBuffer;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 713
    :goto_5
    iget-object v2, p0, Lcom/pusher/java_websocket/d/b$b;->b:Lcom/pusher/java_websocket/d/b;

    invoke-static {v2, v1, v0}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/d/b;Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :catch_3
    return-void
.end method
