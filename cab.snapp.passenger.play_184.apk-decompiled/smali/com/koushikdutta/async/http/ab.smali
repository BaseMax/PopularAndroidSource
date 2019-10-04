.class public final Lcom/koushikdutta/async/http/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/z;


# instance fields
.field a:Lcom/koushikdutta/async/k;

.field b:Lcom/koushikdutta/async/http/r;

.field c:Lcom/koushikdutta/async/a/a;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/koushikdutta/async/j;

.field private f:Lcom/koushikdutta/async/http/z$c;

.field private g:Lcom/koushikdutta/async/a/d;

.field private h:Lcom/koushikdutta/async/http/z$a;

.field private i:Lcom/koushikdutta/async/http/z$b;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V
    .locals 4

    .line 122
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getSocket()Lcom/koushikdutta/async/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/ab;-><init>(Lcom/koushikdutta/async/j;)V

    .line 124
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/koushikdutta/async/http/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    const-string v2, "Origin"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x65

    .line 129
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/e/d;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 130
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    const-string v2, "Upgrade"

    const-string v3, "WebSocket"

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 131
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    const-string v3, "Connection"

    invoke-virtual {v1, v3, v2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 132
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 133
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 139
    :cond_0
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->writeHead()V

    const/4 p1, 0x0

    .line 141
    invoke-direct {p0, p1, p1}, Lcom/koushikdutta/async/http/ab;->a(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/j;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    .line 162
    new-instance p1, Lcom/koushikdutta/async/k;

    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/k;-><init>(Lcom/koushikdutta/async/q;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$c;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/koushikdutta/async/http/ab;->f:Lcom/koushikdutta/async/http/z$c;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    .line 39
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "iso-8859-1"

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 41
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 42
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/ab;Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->d:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 1055
    invoke-static {p0, p1}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 1056
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 1057
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/ab;->d:Ljava/util/LinkedList;

    .line 1058
    iget-object p0, p0, Lcom/koushikdutta/async/http/ab;->d:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 1063
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ab;->isPaused()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1064
    iget-object p1, p0, Lcom/koushikdutta/async/http/ab;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/l;

    .line 1065
    invoke-static {p0, p1}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 1066
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->d:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1069
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/ab;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 1070
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->d:Ljava/util/LinkedList;

    :cond_3
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    .line 74
    new-instance v0, Lcom/koushikdutta/async/http/ab$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/ab$1;-><init>(Lcom/koushikdutta/async/http/ab;Lcom/koushikdutta/async/n;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/r;

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/r;->setMasking(Z)V

    .line 114
    iget-object p1, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/r;->setDeflate(Z)V

    .line 115
    iget-object p1, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {p1}, Lcom/koushikdutta/async/j;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {p1}, Lcom/koushikdutta/async/j;->resume()V

    :cond_0
    return-void
.end method

.method public static addWebSocketUpgradeHeaders(Lcom/koushikdutta/async/http/d;Ljava/lang/String;)V
    .locals 9

    .line 145
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    .line 146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 1031
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1032
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [J

    .line 1033
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    const/4 v8, 0x0

    aput-wide v6, v5, v8

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    const/4 v1, 0x1

    aput-wide v6, v5, v1

    invoke-virtual {v3, v5}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 146
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    .line 147
    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const-string v2, "Sec-WebSocket-Key"

    .line 148
    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const-string v1, "Sec-WebSocket-Extensions"

    const-string v2, "x-webkit-deflate-frame"

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const-string v1, "Upgrade"

    const-string v2, "Connection"

    .line 150
    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const-string v2, "websocket"

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    if-eqz p1, :cond_0

    const-string v1, "Sec-WebSocket-Protocol"

    .line 153
    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :cond_0
    const-string p1, "no-cache"

    const-string v1, "Pragma"

    .line 154
    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const-string v1, "Cache-Control"

    .line 155
    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 156
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object p0

    const-string p1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/j;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    return-object p0
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/koushikdutta/async/http/ab;->h:Lcom/koushikdutta/async/http/z$a;

    return-object p0
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/ab;)Lcom/koushikdutta/async/http/z$b;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/koushikdutta/async/http/ab;->i:Lcom/koushikdutta/async/http/z$b;

    return-object p0
.end method

.method public static finishHandshake(Lcom/koushikdutta/async/http/n;Lcom/koushikdutta/async/http/e;)Lcom/koushikdutta/async/http/z;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 168
    :cond_0
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->code()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    return-object v0

    .line 170
    :cond_1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    const-string v2, "Upgrade"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "websocket"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 173
    :cond_2
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v2, "Sec-WebSocket-Key"

    .line 176
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v0

    .line 179
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Lcom/koushikdutta/async/http/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "Sec-WebSocket-Extensions"

    .line 183
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    const-string v2, "x-webkit-deflate-frame"

    .line 186
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    .line 194
    :cond_6
    new-instance p0, Lcom/koushikdutta/async/http/ab;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/e;->detachSocket()Lcom/koushikdutta/async/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/ab;-><init>(Lcom/koushikdutta/async/j;)V

    .line 195
    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/async/http/ab;->a(ZZ)V

    return-object p0
.end method


# virtual methods
.method public final charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V

    return-void
.end method

.method public final end()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->end()V

    return-void
.end method

.method public final getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->getClosedCallback()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getDataCallback()Lcom/koushikdutta/async/a/d;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->g:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public final getEndCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->c:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public final getPongCallback()Lcom/koushikdutta/async/http/z$b;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->i:Lcom/koushikdutta/async/http/z$b;

    return-object v0
.end method

.method public final getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public final getSocket()Lcom/koushikdutta/async/j;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    return-object v0
.end method

.method public final getStringCallback()Lcom/koushikdutta/async/http/z$c;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->f:Lcom/koushikdutta/async/http/z$c;

    return-object v0
.end method

.method public final getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    invoke-virtual {v0}, Lcom/koushikdutta/async/k;->getWriteableCallback()Lcom/koushikdutta/async/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final isBuffering()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    invoke-virtual {v0}, Lcom/koushikdutta/async/k;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final isPaused()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isPaused()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->pause()V

    return-void
.end method

.method public final ping(Ljava/lang/String;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    new-instance v1, Lcom/koushikdutta/async/l;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {v3, p1}, Lcom/koushikdutta/async/http/r;->pingFrame(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/l;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method

.method public final pong(Ljava/lang/String;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    new-instance v1, Lcom/koushikdutta/async/l;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {v3, p1}, Lcom/koushikdutta/async/http/r;->pongFrame(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/l;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->resume()V

    return-void
.end method

.method public final send(Ljava/lang/String;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    new-instance v1, Lcom/koushikdutta/async/l;

    iget-object v2, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/r;->frame(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/l;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method

.method public final send([B)V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    new-instance v1, Lcom/koushikdutta/async/l;

    iget-object v2, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/r;->frame([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/l;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method

.method public final send([BII)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    new-instance v1, Lcom/koushikdutta/async/l;

    iget-object v2, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {v2, p1, p2, p3}, Lcom/koushikdutta/async/http/r;->frame([BII)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/l;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method

.method public final setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->e:Lcom/koushikdutta/async/j;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public final setDataCallback(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->g:Lcom/koushikdutta/async/a/d;

    return-void
.end method

.method public final setEndCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->c:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public final setPingCallback(Lcom/koushikdutta/async/http/z$a;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->h:Lcom/koushikdutta/async/http/z$a;

    return-void
.end method

.method public final setPongCallback(Lcom/koushikdutta/async/http/z$b;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->i:Lcom/koushikdutta/async/http/z$b;

    return-void
.end method

.method public final setStringCallback(Lcom/koushikdutta/async/http/z$c;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->f:Lcom/koushikdutta/async/http/z$c;

    return-void
.end method

.method public final setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->a:Lcom/koushikdutta/async/k;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/k;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 303
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->getAllByteArray()[B

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/ab;->send([B)V

    return-void
.end method
