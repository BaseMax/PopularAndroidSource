.class public Lcom/koushikdutta/async/http/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field static final synthetic h:Z


# instance fields
.field a:Landroid/net/Uri;

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:I

.field g:J

.field private i:Ljava/lang/String;

.field private j:Lcom/koushikdutta/async/http/n;

.field private k:Z

.field private l:Lcom/koushikdutta/async/http/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/d;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/d;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/n;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/d;->j:Lcom/koushikdutta/async/http/n;

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/d;->k:Z

    const/16 v0, 0x7530

    .line 125
    iput v0, p0, Lcom/koushikdutta/async/http/d;->b:I

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/koushikdutta/async/http/d;->d:I

    .line 81
    sget-boolean v0, Lcom/koushikdutta/async/http/d;->h:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/koushikdutta/async/http/d;->i:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/koushikdutta/async/http/d;->a:Landroid/net/Uri;

    if-nez p3, :cond_2

    .line 85
    new-instance p2, Lcom/koushikdutta/async/http/n;

    invoke-direct {p2}, Lcom/koushikdutta/async/http/n;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/http/d;->j:Lcom/koushikdutta/async/http/n;

    goto :goto_1

    .line 87
    :cond_2
    iput-object p3, p0, Lcom/koushikdutta/async/http/d;->j:Lcom/koushikdutta/async/http/n;

    :goto_1
    if-nez p3, :cond_3

    .line 89
    iget-object p2, p0, Lcom/koushikdutta/async/http/d;->j:Lcom/koushikdutta/async/http/n;

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/d;->setDefaultHeaders(Lcom/koushikdutta/async/http/n;Landroid/net/Uri;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/d;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/koushikdutta/async/http/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 188
    iget-wide v0, p0, Lcom/koushikdutta/async/http/d;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/d;->g:J

    sub-long v2, v0, v2

    .line 192
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "(%d ms) %s: %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static setDefaultHeaders(Lcom/koushikdutta/async/http/n;Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "Host"

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :cond_1
    const-string p1, "http.agent"

    .line 1046
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1047
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Java"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "User-Agent"

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const-string p1, "Accept-Encoding"

    const-string v0, "gzip, deflate"

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const-string p1, "Connection"

    const-string v0, "keep-alive"

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const-string p1, "Accept"

    const-string v0, "*/*"

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/d;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-object p0
.end method

.method public disableProxy()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/koushikdutta/async/http/d;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 154
    iput v0, p0, Lcom/koushikdutta/async/http/d;->d:I

    return-void
.end method

.method public enableProxy(Ljava/lang/String;I)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/koushikdutta/async/http/d;->c:Ljava/lang/String;

    .line 149
    iput p2, p0, Lcom/koushikdutta/async/http/d;->d:I

    return-void
.end method

.method public getBody()Lcom/koushikdutta/async/http/a/a;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->l:Lcom/koushikdutta/async/http/a/a;

    return-object v0
.end method

.method public getFollowRedirect()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/d;->k:Z

    return v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/n;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->j:Lcom/koushikdutta/async/http/n;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/koushikdutta/async/http/d;->f:I

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/koushikdutta/async/http/d;->d:I

    return v0
.end method

.method public getRequestLine()Lcom/koushikdutta/async/http/w;
    .locals 1

    .line 13
    new-instance v0, Lcom/koushikdutta/async/http/d$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/d$1;-><init>(Lcom/koushikdutta/async/http/d;)V

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/koushikdutta/async/http/d;->b:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public logd(Ljava/lang/String;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/d;->f:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    return-void

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/d;->f:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/d;->f:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    return-void

    .line 235
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/d;->f:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    return-void

    .line 242
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/d;->f:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    return-void

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/d;->f:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    return-void

    .line 206
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/d;->f:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    return-void

    .line 213
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onHandshakeException(Lcom/koushikdutta/async/d;)V
    .locals 0

    return-void
.end method

.method public setBody(Lcom/koushikdutta/async/http/a/a;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/koushikdutta/async/http/d;->l:Lcom/koushikdutta/async/http/a/a;

    return-void
.end method

.method public setFollowRedirect(Z)Lcom/koushikdutta/async/http/d;
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/d;->k:Z

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/d;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-object p0
.end method

.method public setLogging(Ljava/lang/String;I)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/koushikdutta/async/http/d;->f:I

    return-void
.end method

.method public setMethod(Ljava/lang/String;)Lcom/koushikdutta/async/http/d;
    .locals 2

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/koushikdutta/async/http/d;

    if-ne v0, v1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/koushikdutta/async/http/d;->i:Ljava/lang/String;

    return-object p0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t change method on a subclass of AsyncHttpRequest"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeout(I)Lcom/koushikdutta/async/http/d;
    .locals 0

    .line 131
    iput p1, p0, Lcom/koushikdutta/async/http/d;->b:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->j:Lcom/koushikdutta/async/http/n;

    if-nez v0, :cond_0

    .line 168
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/d;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
