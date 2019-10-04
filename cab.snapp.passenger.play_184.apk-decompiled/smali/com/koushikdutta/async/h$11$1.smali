.class final Lcom/koushikdutta/async/h$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/channels/ServerSocketChannel;

.field final synthetic b:Lcom/koushikdutta/async/ab;

.field final synthetic c:Ljava/nio/channels/SelectionKey;

.field final synthetic d:Lcom/koushikdutta/async/h$11;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h$11;Ljava/nio/channels/ServerSocketChannel;Lcom/koushikdutta/async/ab;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/koushikdutta/async/h$11$1;->d:Lcom/koushikdutta/async/h$11;

    iput-object p2, p0, Lcom/koushikdutta/async/h$11$1;->a:Ljava/nio/channels/ServerSocketChannel;

    iput-object p3, p0, Lcom/koushikdutta/async/h$11$1;->b:Lcom/koushikdutta/async/ab;

    iput-object p4, p0, Lcom/koushikdutta/async/h$11$1;->c:Ljava/nio/channels/SelectionKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalPort()I
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/koushikdutta/async/h$11$1;->a:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public final stop()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 327
    iget-object v1, p0, Lcom/koushikdutta/async/h$11$1;->b:Lcom/koushikdutta/async/ab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/h$11$1;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
