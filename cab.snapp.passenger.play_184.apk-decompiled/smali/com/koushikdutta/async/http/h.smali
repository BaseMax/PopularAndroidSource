.class public Lcom/koushikdutta/async/http/h;
.super Lcom/koushikdutta/async/http/i;
.source "SourceFile"


# instance fields
.field protected a:Ljavax/net/ssl/SSLContext;

.field protected b:[Ljavax/net/ssl/TrustManager;

.field protected c:Ljavax/net/ssl/HostnameVerifier;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/a;)V
    .locals 2

    const-string v0, "https"

    const/16 v1, 0x1bb

    .line 27
    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/i;-><init>(Lcom/koushikdutta/async/http/a;Ljava/lang/String;I)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/h;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;ILcom/koushikdutta/async/a/b;)V
    .locals 8

    .line 89
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    .line 1063
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/h;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1066
    iget-object v2, p0, Lcom/koushikdutta/async/http/h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/http/g;

    .line 1067
    invoke-interface {v3, v0, p3, p4}, Lcom/koushikdutta/async/http/g;->createEngine(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/g;

    .line 1073
    invoke-interface {v2, v3, p2, p3, p4}, Lcom/koushikdutta/async/http/g;->configureEngine(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/b$a;Ljava/lang/String;I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v4, p0, Lcom/koushikdutta/async/http/h;->b:[Ljavax/net/ssl/TrustManager;

    iget-object v5, p0, Lcom/koushikdutta/async/http/h;->c:Ljavax/net/ssl/HostnameVerifier;

    const/4 v6, 0x1

    .line 92
    invoke-virtual {p0, p2, p5}, Lcom/koushikdutta/async/http/h;->createHandshakeCallback(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/f$a;

    move-result-object v7

    move-object v0, p1

    move v2, p4

    .line 89
    invoke-static/range {v0 .. v7}, Lcom/koushikdutta/async/f;->handshake(Lcom/koushikdutta/async/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/f$a;)V

    return-void
.end method

.method public addEngineConfigurator(Lcom/koushikdutta/async/http/g;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearEngineConfigurators()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected createHandshakeCallback(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/f$a;
    .locals 0

    .line 80
    new-instance p1, Lcom/koushikdutta/async/http/h$1;

    invoke-direct {p1, p0, p2}, Lcom/koushikdutta/async/http/h$1;-><init>(Lcom/koushikdutta/async/http/h;Lcom/koushikdutta/async/a/b;)V

    return-object p1
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/koushikdutta/async/http/h;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/koushikdutta/async/f;->getDefaultSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/koushikdutta/async/http/h;->c:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/koushikdutta/async/http/h;->a:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/koushikdutta/async/http/h;->b:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method protected wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;
    .locals 8

    .line 97
    new-instance v7, Lcom/koushikdutta/async/http/h$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/h$2;-><init>(Lcom/koushikdutta/async/http/h;Lcom/koushikdutta/async/a/b;ZLcom/koushikdutta/async/http/b$a;Landroid/net/Uri;I)V

    return-object v7
.end method
