.class final Lcom/koushikdutta/async/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/f;->handshake(Lcom/koushikdutta/async/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/f$a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/f$a;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/koushikdutta/async/f$2;->a:Lcom/koushikdutta/async/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/koushikdutta/async/f$2;->a:Lcom/koushikdutta/async/f$a;

    invoke-interface {v1, p1, v0}, Lcom/koushikdutta/async/f$a;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V

    return-void

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/f$2;->a:Lcom/koushikdutta/async/f$a;

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "socket closed during handshake"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/koushikdutta/async/f$a;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V

    return-void
.end method
