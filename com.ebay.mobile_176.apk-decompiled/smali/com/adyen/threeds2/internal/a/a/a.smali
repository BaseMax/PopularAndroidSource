.class Lcom/adyen/threeds2/internal/a/a/a;
.super Lcom/adyen/threeds2/internal/a/a;


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:Ljava/nio/charset/Charset;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lcom/adyen/threeds2/internal/h/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/adyen/threeds2/internal/a/a/a;->c:I

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/adyen/threeds2/internal/a/a/a;->d:I

    .line 63
    sget-object v0, Lcom/adyen/threeds2/internal/b;->a:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/a;->e:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/b/a;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/a/a;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/a;->f:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/a/a;->g:Lcom/adyen/threeds2/internal/h/b/a;

    return-void
.end method

.method static synthetic a(Lcom/adyen/threeds2/internal/a/a/a;Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/a/b/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/a;->b(Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/a/b/j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/adyen/threeds2/internal/a/a/a;Lcom/adyen/threeds2/internal/a/a/b/j;Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/a/b/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/a/b/j;Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/a/b/j;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/adyen/threeds2/internal/a/a/b/j;Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/a/b/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 203
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->ERROR:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/a/a/b/i;->d()Lcom/adyen/threeds2/internal/a/a/b/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 p2, 0x37

    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, p2, v0}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_7

    .line 209
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/d;->ERROR:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/j;->f()Lcom/adyen/threeds2/internal/a/a/b/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 210
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/a/a/b/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/a/a/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/a/a/b/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/j;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/a/a/b/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    instance-of v0, p1, Lcom/adyen/threeds2/internal/a/a/b/c;

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/a/a/b/i;->i()I

    move-result p2

    move-object v0, p1

    check-cast v0, Lcom/adyen/threeds2/internal/a/a/b/c;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/c;->a()I

    move-result v0

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 231
    :cond_2
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 p2, 0x3d

    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_DECRYPTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, p2, v0}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    .line 226
    :cond_3
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 p2, 0x3c

    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_ID_NOT_RECOGNIZED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, p2, v0}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    .line 222
    :cond_4
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 p2, 0x3b

    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_ID_NOT_RECOGNIZED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, p2, v0}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    .line 218
    :cond_5
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 p2, 0x3a

    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_ID_NOT_RECOGNIZED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, p2, v0}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    :cond_6
    const/16 p2, 0x38

    .line 211
    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/adyen/threeds2/internal/d;->b()[Lcom/adyen/threeds2/internal/d;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x39

    .line 212
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/j;->g()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 212
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance p2, Lcom/adyen/threeds2/internal/g/a;

    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_VERSION_NOT_SUPPORTED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p2, p1, v0}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p2

    :cond_7
    :goto_1
    return-object p1
.end method

.method private a(Lcom/adyen/threeds2/internal/a/j;)Lcom/adyen/threeds2/internal/a/a/b/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/j;->b()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 149
    array-length v2, v0

    if-gtz v2, :cond_0

    goto/16 :goto_5

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/j;->a()Ljava/util/Map;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/adyen/threeds2/internal/a/e;->a(Ljava/util/Map;)Lcom/adyen/threeds2/internal/a/e$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/e$b;->a()Lcom/adyen/threeds2/internal/a/e$a;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/e$b;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 157
    :cond_2
    sget-object p1, Lcom/adyen/threeds2/internal/a/e$a;->APPLICATION_JOSE:Lcom/adyen/threeds2/internal/a/e$a;

    if-ne v2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 160
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/a/a/a;->b([BLjava/nio/charset/Charset;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 162
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x33

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_DECRYPTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0

    :cond_4
    :goto_2
    if-nez p1, :cond_6

    .line 167
    sget-object v3, Lcom/adyen/threeds2/internal/a/e$a;->APPLICATION_JSON:Lcom/adyen/threeds2/internal/a/e$a;

    if-ne v2, v3, :cond_5

    goto :goto_3

    .line 174
    :cond_5
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0x35

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    .line 169
    :cond_6
    :goto_3
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/a/a/a;->a([BLjava/nio/charset/Charset;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/j;->a(Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/a/a/b/j;

    move-result-object v0

    if-nez p1, :cond_8

    .line 179
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/j;->e()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    .line 180
    :cond_7
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0x36

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    :cond_8
    :goto_4
    return-object v0

    :catch_1
    move-exception p1

    .line 171
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x34

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0

    :cond_9
    :goto_5
    return-object v1
.end method

.method private a([BLjava/nio/charset/Charset;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/adyen/threeds2/internal/a/a/a;->e:Ljava/nio/charset/Charset;

    :goto_0
    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 188
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Lcom/adyen/threeds2/internal/a/b/b;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Lcom/adyen/threeds2/internal/a/b/b;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/a;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method private a([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/a;->g:Lcom/adyen/threeds2/internal/h/b/a;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/h/b/a;->a([B)Lcom/adyen/threeds2/internal/h/b/h;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/h;->e()Ljava/lang/String;

    move-result-object p1

    .line 137
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/a;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/a/b/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/a;->c(Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/i;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/i;)Lcom/adyen/threeds2/internal/a/j;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/j;)Lcom/adyen/threeds2/internal/a/a/b/j;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 115
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x32

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->SYSTEM_CONNECTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0

    :catch_1
    move-exception p1

    .line 113
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x31

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_TIMED_OUT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0

    :catch_2
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b([BLjava/nio/charset/Charset;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/adyen/threeds2/internal/a/a/a;->e:Ljava/nio/charset/Charset;

    :goto_0
    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 193
    invoke-static {v0}, Lcom/adyen/threeds2/internal/h/b/h;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/b/h;

    move-result-object p1

    .line 195
    iget-object p2, p0, Lcom/adyen/threeds2/internal/a/a/a;->g:Lcom/adyen/threeds2/internal/h/b/a;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/h/b/a;->a(Lcom/adyen/threeds2/internal/h/b/h;)[B

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/adyen/threeds2/internal/a/i$a;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/i$a;-><init>()V

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/i$a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/i$a;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Lcom/adyen/threeds2/internal/a/b/a;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/i$a;->a(Ljava/util/Map;)Lcom/adyen/threeds2/internal/a/i$a;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/b/b;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/a;->a([B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/adyen/threeds2/internal/a/i$a;->a([B)Lcom/adyen/threeds2/internal/a/i$a;

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/adyen/threeds2/internal/a/b/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/i$a;->a(Ljava/util/Map;)Lcom/adyen/threeds2/internal/a/i$a;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/b/b;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/adyen/threeds2/internal/a/i$a;->a([B)Lcom/adyen/threeds2/internal/a/i$a;

    .line 130
    :goto_0
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/i$a;->b()Lcom/adyen/threeds2/internal/a/i;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 78
    sget v0, Lcom/adyen/threeds2/internal/a/a/a;->c:I

    return v0
.end method

.method final a(Lcom/adyen/threeds2/internal/a/a/b/i;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adyen/threeds2/internal/a/a/b/i;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lcom/adyen/threeds2/internal/a/a/b/j;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/adyen/threeds2/internal/a/a/a$1;-><init>(Lcom/adyen/threeds2/internal/a/a/a;Lcom/adyen/threeds2/internal/a/a/b/i;)V

    return-object v0
.end method

.method protected b()I
    .locals 1

    .line 83
    sget v0, Lcom/adyen/threeds2/internal/a/a/a;->d:I

    return v0
.end method
