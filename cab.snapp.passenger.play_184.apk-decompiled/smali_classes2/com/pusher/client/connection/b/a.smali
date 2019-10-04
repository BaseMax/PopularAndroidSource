.class public final Lcom/pusher/client/connection/b/a;
.super Lcom/pusher/java_websocket/a/a;
.source "SourceFile"


# instance fields
.field private c:Lcom/pusher/client/connection/b/c;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/a/a;-><init>(Ljava/net/URI;)V

    .line 30
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "TLS"

    .line 32
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 39
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pusher/client/connection/b/a;->setSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 48
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 45
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 54
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/pusher/client/connection/b/a;->c:Lcom/pusher/client/connection/b/c;

    .line 55
    invoke-virtual {p0, p2}, Lcom/pusher/client/connection/b/a;->setProxy(Ljava/net/Proxy;)V

    return-void
.end method


# virtual methods
.method public final onClose(ILjava/lang/String;Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/pusher/client/connection/b/a;->c:Lcom/pusher/client/connection/b/c;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1, p2, p3}, Lcom/pusher/client/connection/b/c;->onClose(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/pusher/client/connection/b/a;->c:Lcom/pusher/client/connection/b/c;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/pusher/client/connection/b/c;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final onMessage(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/pusher/client/connection/b/a;->c:Lcom/pusher/client/connection/b/c;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lcom/pusher/client/connection/b/c;->onMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onOpen(Lcom/pusher/java_websocket/c/h;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/pusher/client/connection/b/a;->c:Lcom/pusher/client/connection/b/c;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Lcom/pusher/client/connection/b/c;->onOpen(Lcom/pusher/java_websocket/c/h;)V

    :cond_0
    return-void
.end method

.method public final removeWebSocketListener()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/pusher/client/connection/b/a;->c:Lcom/pusher/client/connection/b/c;

    return-void
.end method
