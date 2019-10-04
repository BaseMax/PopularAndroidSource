.class final Lcom/koushikdutta/async/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->connectDatagram(Ljava/lang/String;I)Lcom/koushikdutta/async/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/koushikdutta/async/b;

.field final synthetic d:Ljava/nio/channels/DatagramChannel;

.field final synthetic e:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Ljava/lang/String;ILcom/koushikdutta/async/b;Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/koushikdutta/async/h$3;->e:Lcom/koushikdutta/async/h;

    iput-object p2, p0, Lcom/koushikdutta/async/h$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/koushikdutta/async/h$3;->b:I

    iput-object p4, p0, Lcom/koushikdutta/async/h$3;->c:Lcom/koushikdutta/async/b;

    iput-object p5, p0, Lcom/koushikdutta/async/h$3;->d:Ljava/nio/channels/DatagramChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 493
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/koushikdutta/async/h$3;->a:Ljava/lang/String;

    iget v2, p0, Lcom/koushikdutta/async/h$3;->b:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 494
    iget-object v1, p0, Lcom/koushikdutta/async/h$3;->e:Lcom/koushikdutta/async/h;

    iget-object v2, p0, Lcom/koushikdutta/async/h$3;->c:Lcom/koushikdutta/async/b;

    invoke-static {v1, v2}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/c;)V

    .line 495
    iget-object v1, p0, Lcom/koushikdutta/async/h$3;->d:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 499
    iget-object v2, p0, Lcom/koushikdutta/async/h$3;->d:Ljava/nio/channels/DatagramChannel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method
