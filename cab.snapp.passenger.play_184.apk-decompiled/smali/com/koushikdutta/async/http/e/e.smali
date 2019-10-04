.class public Lcom/koushikdutta/async/http/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/e/d;


# static fields
.field static final synthetic k:Z


# instance fields
.field private a:Lcom/koushikdutta/async/http/n;

.field b:Lcom/koushikdutta/async/j;

.field c:Lcom/koushikdutta/async/http/e/c;

.field d:Z

.field e:Lcom/koushikdutta/async/q;

.field f:Lcom/koushikdutta/async/a/g;

.field g:Z

.field h:Z

.field i:I

.field j:Lcom/koushikdutta/async/a/a;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/e/e;->k:Z

    return-void
.end method

.method constructor <init>(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/e/c;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lcom/koushikdutta/async/http/e/e;->l:J

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->d:Z

    const/16 v0, 0xc8

    .line 340
    iput v0, p0, Lcom/koushikdutta/async/http/e/e;->i:I

    .line 47
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/e;->b:Lcom/koushikdutta/async/j;

    .line 48
    iput-object p2, p0, Lcom/koushikdutta/async/http/e/e;->c:Lcom/koushikdutta/async/http/e/c;

    .line 49
    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/e/c;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/q;->isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string p2, "Connection"

    const-string v0, "Keep-Alive"

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :cond_0
    return-void
.end method

.method private b()V
    .locals 10

    .line 76
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->d:Z

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/http/n;->removeAll(Ljava/lang/String;)Ljava/util/List;

    :cond_1
    const-string v3, "Chunked"

    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v4, "Connection"

    .line 86
    invoke-virtual {v1, v4}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "close"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 87
    :goto_0
    iget-wide v6, p0, Lcom/koushikdutta/async/http/e/e;->l:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_4

    .line 88
    iget-object v4, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v6, "Content-Length"

    invoke-virtual {v4, v6}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 90
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/koushikdutta/async/http/e/e;->l:J

    .line 92
    :cond_4
    iget-wide v6, p0, Lcom/koushikdutta/async/http/e/e;->l:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_5

    if-eqz v1, :cond_5

    .line 93
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 100
    :goto_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/koushikdutta/async/http/e/e;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/koushikdutta/async/http/e/e;->i:I

    invoke-static {v4}, Lcom/koushikdutta/async/http/e/a;->getResponseCodeDescription(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "HTTP/1.1 %s %s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/n;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/koushikdutta/async/http/e/e;->b:Lcom/koushikdutta/async/j;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v3, Lcom/koushikdutta/async/http/e/e$1;

    invoke-direct {v3, p0, v1}, Lcom/koushikdutta/async/http/e/e$1;-><init>(Lcom/koushikdutta/async/http/e/e;Z)V

    invoke-static {v2, v0, v3}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->h:Z

    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public code()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/koushikdutta/async/http/e/e;->i:I

    return v0
.end method

.method public code(I)Lcom/koushikdutta/async/http/e/d;
    .locals 0

    .line 343
    iput p1, p0, Lcom/koushikdutta/async/http/e/e;->i:I

    return-object p0
.end method

.method public end()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->g:Z

    .line 162
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    if-nez v0, :cond_1

    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->d:Z

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    instance-of v1, v0, Lcom/koushikdutta/async/http/d/c;

    if-eqz v1, :cond_3

    .line 173
    check-cast v0, Lcom/koushikdutta/async/http/d/c;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d/c;->setMaxBuffer(I)V

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    new-instance v1, Lcom/koushikdutta/async/l;

    invoke-direct {v1}, Lcom/koushikdutta/async/l;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->write(Lcom/koushikdutta/async/l;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->d:Z

    if-nez v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->c:Lcom/koushikdutta/async/http/e/c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/e/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "text/html"

    const-string v1, ""

    .line 179
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/e/e;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/e;->writeHead()V

    .line 186
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/e;->a()V

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Lcom/koushikdutta/async/q;->getClosedCallback()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    return-object v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->j:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/n;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/j;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->b:Lcom/koushikdutta/async/j;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lcom/koushikdutta/async/q;->getWriteableCallback()Lcom/koushikdutta/async/a/g;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->f:Lcom/koushikdutta/async/a/g;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0}, Lcom/koushikdutta/async/q;->isOpen()Z

    move-result v0

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isOpen()Z

    move-result v0

    return v0
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 361
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void
.end method

.method public proxy(Lcom/koushikdutta/async/http/e;)V
    .locals 3

    .line 323
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->code()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/e/e;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 324
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->removeAll(Ljava/lang/String;)Ljava/util/List;

    .line 325
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->removeAll(Ljava/lang/String;)Ljava/util/List;

    .line 326
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->removeAll(Ljava/lang/String;)Ljava/util/List;

    .line 327
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/e;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/n;->addAll(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/n;

    .line 329
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 330
    new-instance v0, Lcom/koushikdutta/async/http/e/e$4;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/e/e$4;-><init>(Lcom/koushikdutta/async/http/e/e;Lcom/koushikdutta/async/http/e;)V

    invoke-static {p1, p0, v0}, Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public redirect(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x12e

    .line 354
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/e/e;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 355
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 356
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/html; charset=utf-8"

    .line 239
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/e/e;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 218
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/e/e;->send(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 221
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public send(Ljava/lang/String;[B)V
    .locals 5

    .line 202
    sget-boolean v0, Lcom/koushikdutta/async/http/e/e;->k:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/koushikdutta/async/http/e/e;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 203
    :cond_1
    :goto_0
    array-length v0, p2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/e/e;->l:J

    .line 204
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 205
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 207
    new-instance p1, Lcom/koushikdutta/async/http/e/e$2;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/e/e$2;-><init>(Lcom/koushikdutta/async/http/e/e;)V

    invoke-static {p0, p2, p1}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public send(Lorg/a/c;)V
    .locals 1

    .line 244
    invoke-virtual {p1}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/e/e;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "Content-Type"

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/e/a;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 312
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 313
    new-instance v1, Ljava/io/BufferedInputStream;

    const v2, 0xfa00

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/koushikdutta/async/http/e/e;->sendStream(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0x194

    .line 316
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/e/e;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 317
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void
.end method

.method public sendStream(Ljava/io/InputStream;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    sub-long v4, p2, v2

    .line 252
    iget-object v6, v0, Lcom/koushikdutta/async/http/e/e;->c:Lcom/koushikdutta/async/http/e/c;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/e/c;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v6

    const-string v7, "Range"

    invoke-virtual {v6, v7}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bytes"

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_5

    const-string v10, "="

    .line 254
    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 255
    array-length v10, v6

    const/16 v11, 0x1a0

    const/4 v12, 0x2

    if-ne v10, v12, :cond_4

    const/4 v10, 0x0

    aget-object v13, v6, v10

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    .line 262
    aget-object v6, v6, v13

    const-string v14, "-"

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 264
    :try_start_0
    array-length v14, v6

    if-gt v14, v12, :cond_3

    .line 266
    aget-object v14, v6, v10

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 267
    aget-object v8, v6, v10

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 268
    :cond_1
    array-length v14, v6

    if-ne v14, v12, :cond_2

    aget-object v14, v6, v13

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 269
    aget-object v4, v6, v13

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_2
    const/16 v6, 0xce

    .line 273
    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/http/e/e;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/e/e;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v6

    const-string v14, "Content-Range"

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "bytes %d-%d/%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v3, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v13

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v12

    invoke-static {v15, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v14, v2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    goto :goto_1

    .line 265
    :cond_3
    new-instance v1, Lcom/koushikdutta/async/http/e/h;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/e/h;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :catch_0
    invoke-virtual {v0, v11}, Lcom/koushikdutta/async/http/e/e;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void

    .line 257
    :cond_4
    :goto_0
    invoke-virtual {v0, v11}, Lcom/koushikdutta/async/http/e/e;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void

    .line 283
    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual {v1, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v6, v8, v2

    if-nez v6, :cond_7

    sub-long/2addr v4, v8

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    .line 285
    iput-wide v4, v0, Lcom/koushikdutta/async/http/e/e;->l:J

    .line 286
    iget-object v2, v0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v3, "Content-Length"

    iget-wide v4, v0, Lcom/koushikdutta/async/http/e/e;->l:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 287
    iget-object v2, v0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v3, "Accept-Ranges"

    invoke-virtual {v2, v3, v7}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 288
    iget-object v2, v0, Lcom/koushikdutta/async/http/e/e;->c:Lcom/koushikdutta/async/http/e/c;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/e/c;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/e/e;->writeHead()V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/e/e;->a()V

    return-void

    .line 293
    :cond_6
    iget-wide v2, v0, Lcom/koushikdutta/async/http/e/e;->l:J

    new-instance v4, Lcom/koushikdutta/async/http/e/e$3;

    invoke-direct {v4, v0, v1}, Lcom/koushikdutta/async/http/e/e$3;-><init>(Lcom/koushikdutta/async/http/e/e;Ljava/io/InputStream;)V

    invoke-static {v1, v2, v3, v0, v4}, Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void

    .line 284
    :cond_7
    new-instance v1, Lcom/koushikdutta/async/http/e/j;

    const-string v2, "skip failed to skip requested amount"

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/e/j;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/16 v1, 0x1f4

    .line 302
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/e/e;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/q;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    return-void

    .line 377
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/e;->j:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    return-void

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/e;->f:Lcom/koushikdutta/async/a/g;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    if-nez v0, :cond_0

    .line 395
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/koushikdutta/async/http/e/e;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/koushikdutta/async/http/e/e;->i:I

    invoke-static {v3}, Lcom/koushikdutta/async/http/e/a;->getResponseCodeDescription(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "HTTP/1.1 %s %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/e;->a:Lcom/koushikdutta/async/http/n;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/n;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/koushikdutta/async/l;)V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/koushikdutta/async/http/e/e;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->h:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/e/e;->d:Z

    if-nez v0, :cond_2

    .line 59
    invoke-direct {p0}, Lcom/koushikdutta/async/http/e/e;->b()V

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e;->e:Lcom/koushikdutta/async/q;

    if-nez v0, :cond_4

    return-void

    .line 70
    :cond_4
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/q;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method

.method public writeHead()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/koushikdutta/async/http/e/e;->b()V

    return-void
.end method
