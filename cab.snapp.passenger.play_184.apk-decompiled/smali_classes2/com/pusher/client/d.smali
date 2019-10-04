.class public Lcom/pusher/client/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIB_VERSION:Ljava/lang/String;

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z

.field private f:J

.field private g:J

.field private h:Lcom/pusher/client/b;

.field private i:Ljava/net/Proxy;

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/pusher/client/d;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/d;->LIB_VERSION:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?client=java-client&protocol=5&version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/pusher/client/d;->LIB_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ws.pusherapp.com"

    .line 34
    iput-object v0, p0, Lcom/pusher/client/d;->b:Ljava/lang/String;

    const/16 v0, 0x50

    .line 35
    iput v0, p0, Lcom/pusher/client/d;->c:I

    const/16 v0, 0x1bb

    .line 36
    iput v0, p0, Lcom/pusher/client/d;->d:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/pusher/client/d;->e:Z

    const-wide/32 v0, 0x1d4c0

    .line 38
    iput-wide v0, p0, Lcom/pusher/client/d;->f:J

    const-wide/16 v0, 0x7530

    .line 39
    iput-wide v0, p0, Lcom/pusher/client/d;->g:J

    .line 41
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/pusher/client/d;->i:Ljava/net/Proxy;

    const/4 v0, 0x6

    .line 42
    iput v0, p0, Lcom/pusher/client/d;->j:I

    const/16 v0, 0x1e

    .line 43
    iput v0, p0, Lcom/pusher/client/d;->k:I

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 269
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 270
    const-class v2, Lcom/pusher/client/d;

    const-string v3, "/pusher.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 271
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "version"

    .line 272
    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "@version@"

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "0.0.0-dev"

    :cond_0
    if-eqz v1, :cond_2

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_2

    if-eqz v0, :cond_1

    .line 291
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :cond_2
    if-eqz v0, :cond_4

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 297
    :catch_1
    :cond_3
    throw v1

    :catch_2
    if-eqz v0, :cond_4

    goto :goto_0

    :catch_3
    :cond_4
    :goto_1
    const-string v0, "0.0.0"

    return-object v0
.end method


# virtual methods
.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 225
    iget-boolean v1, p0, Lcom/pusher/client/d;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "wss"

    goto :goto_0

    :cond_0
    const-string v1, "ws"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pusher/client/d;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/pusher/client/d;->e:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/pusher/client/d;->d:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/pusher/client/d;->c:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    sget-object v1, Lcom/pusher/client/d;->a:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "%s://%s:%s/app/%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivityTimeout()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/pusher/client/d;->f:J

    return-wide v0
.end method

.method public getAuthorizer()Lcom/pusher/client/b;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/pusher/client/d;->h:Lcom/pusher/client/b;

    return-object v0
.end method

.method public getMaxReconnectGapInSeconds()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/pusher/client/d;->k:I

    return v0
.end method

.method public getMaxReconnectionAttempts()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/pusher/client/d;->j:I

    return v0
.end method

.method public getPongTimeout()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/pusher/client/d;->g:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/pusher/client/d;->i:Ljava/net/Proxy;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/pusher/client/d;->e:Z

    return v0
.end method

.method public setActivityTimeout(J)Lcom/pusher/client/d;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 161
    iput-wide p1, p0, Lcom/pusher/client/d;->f:J

    return-object p0

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity timeout must be at least 1,000ms (and is recommended to be much higher)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthorizer(Lcom/pusher/client/b;)Lcom/pusher/client/d;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/pusher/client/d;->h:Lcom/pusher/client/b;

    return-object p0
.end method

.method public setCluster(Ljava/lang/String;)Lcom/pusher/client/d;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ws-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pusher.com"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/d;->b:Ljava/lang/String;

    const/16 p1, 0x50

    .line 137
    iput p1, p0, Lcom/pusher/client/d;->c:I

    const/16 p1, 0x1bb

    .line 138
    iput p1, p0, Lcom/pusher/client/d;->d:I

    return-object p0
.end method

.method public setEncrypted(Z)Lcom/pusher/client/d;
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/pusher/client/d;->e:Z

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/pusher/client/d;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/pusher/client/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxReconnectGapInSeconds(I)Lcom/pusher/client/d;
    .locals 0

    .line 209
    iput p1, p0, Lcom/pusher/client/d;->k:I

    return-object p0
.end method

.method public setMaxReconnectionAttempts(I)Lcom/pusher/client/d;
    .locals 0

    .line 197
    iput p1, p0, Lcom/pusher/client/d;->j:I

    return-object p0
.end method

.method public setPongTimeout(J)Lcom/pusher/client/d;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 186
    iput-wide p1, p0, Lcom/pusher/client/d;->g:J

    return-object p0

    .line 182
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pong timeout must be at least 1,000ms (and is recommended to be much higher)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/pusher/client/d;
    .locals 1

    if-eqz p1, :cond_0

    .line 241
    iput-object p1, p0, Lcom/pusher/client/d;->i:Ljava/net/Proxy;

    return-object p0

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "proxy must not be null (instead use Proxy.NO_PROXY)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWsPort(I)Lcom/pusher/client/d;
    .locals 0

    .line 116
    iput p1, p0, Lcom/pusher/client/d;->c:I

    return-object p0
.end method

.method public setWssPort(I)Lcom/pusher/client/d;
    .locals 0

    .line 131
    iput p1, p0, Lcom/pusher/client/d;->d:I

    return-object p0
.end method
