.class final Lcom/koushikdutta/async/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->connectDatagram(Ljava/net/SocketAddress;)Lcom/koushikdutta/async/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/b;

.field final synthetic b:Ljava/nio/channels/DatagramChannel;

.field final synthetic c:Ljava/net/SocketAddress;

.field final synthetic d:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/b;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/koushikdutta/async/h$5;->d:Lcom/koushikdutta/async/h;

    iput-object p2, p0, Lcom/koushikdutta/async/h$5;->a:Lcom/koushikdutta/async/b;

    iput-object p3, p0, Lcom/koushikdutta/async/h$5;->b:Ljava/nio/channels/DatagramChannel;

    iput-object p4, p0, Lcom/koushikdutta/async/h$5;->c:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/h$5;->d:Lcom/koushikdutta/async/h;

    iget-object v1, p0, Lcom/koushikdutta/async/h$5;->a:Lcom/koushikdutta/async/b;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/c;)V

    .line 547
    iget-object v0, p0, Lcom/koushikdutta/async/h$5;->b:Ljava/nio/channels/DatagramChannel;

    iget-object v1, p0, Lcom/koushikdutta/async/h$5;->c:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 550
    iget-object v2, p0, Lcom/koushikdutta/async/h$5;->b:Ljava/nio/channels/DatagramChannel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method
