.class final Lcom/koushikdutta/async/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/nio/channels/DatagramChannel;

.field final synthetic c:Ljava/net/SocketAddress;

.field final synthetic d:Lcom/koushikdutta/async/b;

.field final synthetic e:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;ZLjava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;Lcom/koushikdutta/async/b;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/koushikdutta/async/h$4;->e:Lcom/koushikdutta/async/h;

    iput-boolean p2, p0, Lcom/koushikdutta/async/h$4;->a:Z

    iput-object p3, p0, Lcom/koushikdutta/async/h$4;->b:Ljava/nio/channels/DatagramChannel;

    iput-object p4, p0, Lcom/koushikdutta/async/h$4;->c:Ljava/net/SocketAddress;

    iput-object p5, p0, Lcom/koushikdutta/async/h$4;->d:Lcom/koushikdutta/async/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 521
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/h$4;->a:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/koushikdutta/async/h$4;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    iget-boolean v1, p0, Lcom/koushikdutta/async/h$4;->a:Z

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/h$4;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/h$4;->c:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 524
    iget-object v0, p0, Lcom/koushikdutta/async/h$4;->e:Lcom/koushikdutta/async/h;

    iget-object v1, p0, Lcom/koushikdutta/async/h$4;->d:Lcom/koushikdutta/async/b;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 528
    iget-object v2, p0, Lcom/koushikdutta/async/h$4;->b:Ljava/nio/channels/DatagramChannel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method
