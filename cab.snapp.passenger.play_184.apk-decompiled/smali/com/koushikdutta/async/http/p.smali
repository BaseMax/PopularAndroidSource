.class public final Lcom/koushikdutta/async/http/p;
.super Lcom/koushikdutta/async/http/y;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/async/http/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final exchangeHeaders(Lcom/koushikdutta/async/http/b$c;)Z
    .locals 8

    .line 23
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$c;->protocol:Ljava/lang/String;

    invoke-static {v0}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-eq v0, v1, :cond_0

    .line 25
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/y;->exchangeHeaders(Lcom/koushikdutta/async/http/b$c;)Z

    move-result p1

    return p1

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$c;->request:Lcom/koushikdutta/async/http/d;

    .line 28
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$c;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getBody()Lcom/koushikdutta/async/http/a/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 31
    invoke-interface {v1}, Lcom/koushikdutta/async/http/a/a;->length()I

    move-result v2

    if-ltz v2, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    invoke-interface {v1}, Lcom/koushikdutta/async/http/a/a;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v2, v4, v3}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 33
    iget-object v2, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    iget-object v3, p1, Lcom/koushikdutta/async/http/b$c;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/b$h;->sink(Lcom/koushikdutta/async/q;)Lcom/koushikdutta/async/http/b$h;

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "close"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    iget-object v2, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    iget-object v3, p1, Lcom/koushikdutta/async/http/b$c;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/b$h;->sink(Lcom/koushikdutta/async/q;)Lcom/koushikdutta/async/http/b$h;

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    const-string v3, "Transfer-Encoding"

    const-string v4, "Chunked"

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 40
    iget-object v2, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    new-instance v3, Lcom/koushikdutta/async/http/d/c;

    iget-object v4, p1, Lcom/koushikdutta/async/http/b$c;->socket:Lcom/koushikdutta/async/j;

    invoke-direct {v3, v4}, Lcom/koushikdutta/async/http/d/c;-><init>(Lcom/koushikdutta/async/q;)V

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/b$h;->sink(Lcom/koushikdutta/async/q;)Lcom/koushikdutta/async/http/b$h;

    .line 44
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getRequestLine()Lcom/koushikdutta/async/http/w;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/http/n;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 51
    invoke-interface {v1}, Lcom/koushikdutta/async/http/a/a;->length()I

    move-result v5

    if-ltz v5, :cond_4

    invoke-interface {v1}, Lcom/koushikdutta/async/http/a/a;->length()I

    move-result v1

    array-length v5, v3

    add-int/2addr v1, v5

    const/16 v5, 0x400

    if-ge v1, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 56
    new-instance v1, Lcom/koushikdutta/async/k;

    iget-object v5, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v5}, Lcom/koushikdutta/async/http/b$h;->sink()Lcom/koushikdutta/async/q;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/koushikdutta/async/k;-><init>(Lcom/koushikdutta/async/q;)V

    .line 57
    invoke-virtual {v1, v4}, Lcom/koushikdutta/async/k;->forceBuffering(Z)V

    .line 58
    iget-object v5, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v5, v1}, Lcom/koushikdutta/async/http/b$h;->sink(Lcom/koushikdutta/async/q;)Lcom/koushikdutta/async/http/b$h;

    move-object v5, v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 63
    iget-object v5, p1, Lcom/koushikdutta/async/http/b$c;->socket:Lcom/koushikdutta/async/j;

    move-object v7, v5

    move-object v5, v1

    move-object v1, v7

    .line 66
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 68
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$c;->sendHeadersCallback:Lcom/koushikdutta/async/a/a;

    .line 69
    new-instance v2, Lcom/koushikdutta/async/http/p$1;

    invoke-direct {v2, p0, v0, v5}, Lcom/koushikdutta/async/http/p$1;-><init>(Lcom/koushikdutta/async/http/p;Lcom/koushikdutta/async/a/a;Lcom/koushikdutta/async/k;)V

    invoke-static {v1, v3, v2}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    .line 81
    new-instance v0, Lcom/koushikdutta/async/http/p$2;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/p$2;-><init>(Lcom/koushikdutta/async/http/p;Lcom/koushikdutta/async/http/b$c;)V

    .line 129
    new-instance v1, Lcom/koushikdutta/async/y;

    invoke-direct {v1}, Lcom/koushikdutta/async/y;-><init>()V

    .line 130
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$c;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/y;->setLineCallback(Lcom/koushikdutta/async/y$a;)V

    return v4
.end method

.method public final onRequestSent(Lcom/koushikdutta/async/http/b$f;)V
    .locals 2

    .line 137
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$f;->protocol:Ljava/lang/String;

    invoke-static {v0}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-eq v0, v1, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$f;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/b$h;->sink()Lcom/koushikdutta/async/q;

    move-result-object v0

    instance-of v0, v0, Lcom/koushikdutta/async/http/d/c;

    if-eqz v0, :cond_1

    .line 142
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$f;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/b$h;->sink()Lcom/koushikdutta/async/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/q;->end()V

    :cond_1
    return-void
.end method
