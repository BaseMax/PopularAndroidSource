.class final Lcom/koushikdutta/async/http/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/p;->exchangeHeaders(Lcom/koushikdutta/async/http/b$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/http/n;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/async/http/b$c;

.field final synthetic d:Lcom/koushikdutta/async/http/p;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/p;Lcom/koushikdutta/async/http/b$c;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/koushikdutta/async/http/p$2;->d:Lcom/koushikdutta/async/http/p;

    iput-object p2, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance p1, Lcom/koushikdutta/async/http/n;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/n;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/p$2;->a:Lcom/koushikdutta/async/http/n;

    return-void
.end method


# virtual methods
.method public final onStringAvailable(Ljava/lang/String;)V
    .locals 6

    .line 88
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/http/p$2;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/koushikdutta/async/http/p$2;->b:Ljava/lang/String;

    return-void

    .line 92
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/p$2;->a:Lcom/koushikdutta/async/http/n;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/n;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-void

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/p$2;->b:Ljava/lang/String;

    const-string v0, " "

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 97
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    iget-object v3, p0, Lcom/koushikdutta/async/http/p$2;->a:Lcom/koushikdutta/async/http/n;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/b$h;->headers(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/b$h;

    const/4 v0, 0x0

    .line 101
    aget-object v3, p1, v0

    .line 102
    iget-object v4, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object v4, v4, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v4, v3}, Lcom/koushikdutta/async/http/b$h;->protocol(Ljava/lang/String;)Lcom/koushikdutta/async/http/b$h;

    .line 103
    iget-object v4, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object v4, v4, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/koushikdutta/async/http/b$h;->code(I)Lcom/koushikdutta/async/http/b$h;

    .line 104
    iget-object v4, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object v4, v4, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    array-length v5, p1

    if-ne v5, v1, :cond_2

    aget-object p1, p1, v2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-interface {v4, p1}, Lcom/koushikdutta/async/http/b$h;->message(Ljava/lang/String;)Lcom/koushikdutta/async/http/b$h;

    .line 105
    iget-object p1, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$c;->receiveHeadersCallback:Lcom/koushikdutta/async/a/a;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    .line 108
    iget-object p1, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/b$h;->socket()Lcom/koushikdutta/async/j;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v2, "HEAD"

    .line 114
    iget-object v4, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object v4, v4, Lcom/koushikdutta/async/http/b$c;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/d;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    invoke-interface {p1}, Lcom/koushikdutta/async/j;->getServer()Lcom/koushikdutta/async/h;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/q$a;->create(Lcom/koushikdutta/async/h;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/q$a;

    move-result-object p1

    goto :goto_1

    .line 118
    :cond_4
    invoke-static {v3}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/p$2;->a:Lcom/koushikdutta/async/http/n;

    invoke-static {p1, v1, v2, v0}, Lcom/koushikdutta/async/http/q;->getBodyDecoder(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/n;Z)Lcom/koushikdutta/async/n;

    move-result-object p1

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$c;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/b$h;->emitter(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/http/b$h;

    return-void

    .line 98
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not HTTP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/async/http/p$2;->c:Lcom/koushikdutta/async/http/b$c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/b$c;->receiveHeadersCallback:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
