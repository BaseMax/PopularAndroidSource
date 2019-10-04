.class public abstract Lcom/adyen/threeds2/internal/a/a;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I


# instance fields
.field private final c:Lcom/adyen/threeds2/internal/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/adyen/threeds2/internal/a/a;->a:I

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/adyen/threeds2/internal/a/a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/adyen/threeds2/internal/a/g;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/g;-><init>()V

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a;->c:Lcom/adyen/threeds2/internal/a/b;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/adyen/threeds2/internal/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/adyen/threeds2/internal/a/j$a;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/j$a;-><init>()V

    .line 112
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/j$a;->a(I)Lcom/adyen/threeds2/internal/a/j$a;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/j$a;->a(Ljava/util/Map;)Lcom/adyen/threeds2/internal/a/j$a;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/j$a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/j$a;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 122
    :cond_0
    invoke-direct {p0, v1}, Lcom/adyen/threeds2/internal/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/a/j$a;->a([B)Lcom/adyen/threeds2/internal/a/j$a;

    .line 124
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/j$a;->a()Lcom/adyen/threeds2/internal/a/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 132
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 133
    new-array v1, v1, [B

    .line 135
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 137
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 138
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/adyen/threeds2/internal/a/i;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a;->c:Lcom/adyen/threeds2/internal/a/b;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/b;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/i;->b()Lcom/adyen/threeds2/internal/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/a/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 93
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/i;->b()Lcom/adyen/threeds2/internal/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/f;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 95
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/i;->c()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Lcom/adyen/threeds2/internal/a/i;)Lcom/adyen/threeds2/internal/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a;->b(Lcom/adyen/threeds2/internal/a/i;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 71
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/i;->b()Lcom/adyen/threeds2/internal/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/i;->d()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 74
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 75
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/a/a;->a(Ljava/net/HttpURLConnection;)Lcom/adyen/threeds2/internal/a/j;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p1
.end method

.method protected abstract b()I
.end method
