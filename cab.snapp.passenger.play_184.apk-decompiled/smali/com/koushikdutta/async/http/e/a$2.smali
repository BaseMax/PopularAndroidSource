.class final Lcom/koushikdutta/async/http/e/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a;->listenSecure(ILjavax/net/ssl/SSLContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljavax/net/ssl/SSLContext;

.field final synthetic c:Lcom/koushikdutta/async/http/e/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a;ILjavax/net/ssl/SSLContext;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$2;->c:Lcom/koushikdutta/async/http/e/a;

    iput p2, p0, Lcom/koushikdutta/async/http/e/a$2;->a:I

    iput-object p3, p0, Lcom/koushikdutta/async/http/e/a$2;->b:Ljavax/net/ssl/SSLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccepted(Lcom/koushikdutta/async/j;)V
    .locals 8

    .line 245
    iget v2, p0, Lcom/koushikdutta/async/http/e/a$2;->a:I

    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$2;->b:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    new-instance v7, Lcom/koushikdutta/async/http/e/a$2$1;

    invoke-direct {v7, p0}, Lcom/koushikdutta/async/http/e/a$2$1;-><init>(Lcom/koushikdutta/async/http/e/a$2;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/koushikdutta/async/f;->handshake(Lcom/koushikdutta/async/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/f$a;)V

    return-void
.end method

.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$2;->c:Lcom/koushikdutta/async/http/e/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/a;->b:Lcom/koushikdutta/async/a/e;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/e;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onListening(Lcom/koushikdutta/async/i;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$2;->c:Lcom/koushikdutta/async/http/e/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/a;->b:Lcom/koushikdutta/async/a/e;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/e;->onListening(Lcom/koushikdutta/async/i;)V

    return-void
.end method
