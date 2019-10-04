.class public Lcom/koushikdutta/async/http/b/e;
.super Lcom/koushikdutta/async/http/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/b/e$h;,
        Lcom/koushikdutta/async/http/b/e$e;,
        Lcom/koushikdutta/async/http/b/e$d;,
        Lcom/koushikdutta/async/http/b/e$g;,
        Lcom/koushikdutta/async/http/b/e$f;,
        Lcom/koushikdutta/async/http/b/e$c;,
        Lcom/koushikdutta/async/http/b/e$a;,
        Lcom/koushikdutta/async/http/b/e$b;
    }
.end annotation


# static fields
.field public static final CACHE:Ljava/lang/String; = "cache"

.field public static final CONDITIONAL_CACHE:Ljava/lang/String; = "conditional-cache"

.field public static final ENTRY_BODY:I = 0x1

.field public static final ENTRY_COUNT:I = 0x2

.field public static final ENTRY_METADATA:I = 0x0

.field public static final SERVED_FROM:Ljava/lang/String; = "X-Served-From"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Lcom/koushikdutta/async/e/c;

.field private e:Lcom/koushikdutta/async/h;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/koushikdutta/async/http/y;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/b/e;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/h;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/koushikdutta/async/http/b/e;->e:Lcom/koushikdutta/async/h;

    return-object p0
.end method

.method public static addCache(Lcom/koushikdutta/async/http/a;Ljava/io/File;J)Lcom/koushikdutta/async/http/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a;->getMiddleware()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/b;

    .line 74
    instance-of v1, v1, Lcom/koushikdutta/async/http/b/e;

    if-nez v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Response cache already added to http client"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/http/b/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/b/e;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/b/e;->e:Lcom/koushikdutta/async/h;

    .line 79
    new-instance v1, Lcom/koushikdutta/async/e/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/koushikdutta/async/e/c;-><init>(Ljava/io/File;JZ)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/b/e;->d:Lcom/koushikdutta/async/e/c;

    .line 80
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a;->insertMiddleware(Lcom/koushikdutta/async/http/b;)V

    return-object v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/e/c;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/koushikdutta/async/http/b/e;->d:Lcom/koushikdutta/async/e/c;

    return-object p0
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/b/e;)I
    .locals 2

    .line 51
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/b/e;->b:I

    return v0
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/b/e;)I
    .locals 2

    .line 51
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/b/e;->c:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->d:Lcom/koushikdutta/async/e/c;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/koushikdutta/async/e/c;->clear()V

    :cond_0
    return-void
.end method

.method public getCacheHitCount()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->g:I

    return v0
.end method

.method public getCacheStoreCount()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->i:I

    return v0
.end method

.method public getCaching()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/b/e;->a:Z

    return v0
.end method

.method public getConditionalCacheHitCount()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->f:I

    return v0
.end method

.method public getFileCache()Lcom/koushikdutta/async/e/c;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->d:Lcom/koushikdutta/async/e/c;

    return-object v0
.end method

.method public getNetworkCount()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    return v0
.end method

.method public getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;
    .locals 14

    .line 105
    new-instance v0, Lcom/koushikdutta/async/http/b/d;

    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/n;->getMultiMap()Lcom/koushikdutta/async/http/s;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/b/c;->fromMultimap(Ljava/util/Map;)Lcom/koushikdutta/async/http/b/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/b/d;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/c;)V

    .line 106
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->state:Lcom/koushikdutta/async/e/i;

    const-string v2, "request-headers"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/e/i;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e;->d:Lcom/koushikdutta/async/e/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/b/e;->a:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/d;->isNoCache()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 113
    iget-object v4, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/koushikdutta/async/e/c;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/b/e;->d:Lcom/koushikdutta/async/e/c;

    const/4 v6, 0x2

    invoke-virtual {v4, v1, v6}, Lcom/koushikdutta/async/e/c;->get(Ljava/lang/String;I)[Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 120
    :try_start_1
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    return-object v2

    .line 123
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v4

    int-to-long v6, v4

    .line 124
    new-instance v4, Lcom/koushikdutta/async/http/b/e$f;

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Lcom/koushikdutta/async/http/b/e$f;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    iget-object v5, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/d;->getMethod()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/n;->getMultiMap()Lcom/koushikdutta/async/http/s;

    move-result-object v9

    invoke-virtual {v4, v5, v8, v9}, Lcom/koushikdutta/async/http/b/e$f;->matches(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 135
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    .line 136
    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-object v2

    .line 140
    :cond_2
    new-instance v5, Lcom/koushikdutta/async/http/b/e$g;

    aget-object v8, v1, v3

    invoke-direct {v5, v4, v8}, Lcom/koushikdutta/async/http/b/e$g;-><init>(Lcom/koushikdutta/async/http/b/e$f;Ljava/io/FileInputStream;)V

    .line 145
    :try_start_2
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/b/e$g;->getHeaders()Ljava/util/Map;

    move-result-object v8

    .line 146
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/b/e$g;->getBody()Ljava/io/FileInputStream;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_7

    if-nez v9, :cond_3

    goto/16 :goto_1

    .line 159
    :cond_3
    invoke-static {v8}, Lcom/koushikdutta/async/http/b/c;->fromMultimap(Ljava/util/Map;)Lcom/koushikdutta/async/http/b/c;

    move-result-object v8

    .line 160
    new-instance v9, Lcom/koushikdutta/async/http/b/f;

    iget-object v10, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v10}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/koushikdutta/async/http/b/f;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/c;)V

    .line 161
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Content-Length"

    invoke-virtual {v8, v11, v10}, Lcom/koushikdutta/async/http/b/c;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Encoding"

    .line 162
    invoke-virtual {v8, v10}, Lcom/koushikdutta/async/http/b/c;->removeAll(Ljava/lang/String;)V

    const-string v10, "Transfer-Encoding"

    .line 163
    invoke-virtual {v8, v10}, Lcom/koushikdutta/async/http/b/c;->removeAll(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/koushikdutta/async/http/b/f;->setLocalTimestamps(JJ)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 167
    invoke-virtual {v9, v10, v11, v0}, Lcom/koushikdutta/async/http/b/f;->chooseResponseSource(JLcom/koushikdutta/async/http/b/d;)Lcom/koushikdutta/async/http/b/g;

    move-result-object v0

    .line 169
    sget-object v10, Lcom/koushikdutta/async/http/b/g;->CACHE:Lcom/koushikdutta/async/http/b/g;

    if-ne v0, v10, :cond_5

    .line 170
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string v1, "Response retrieved from cache"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logi(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/e$f;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    new-instance v0, Lcom/koushikdutta/async/http/b/e$d;

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/koushikdutta/async/http/b/e$d;-><init>(Lcom/koushikdutta/async/http/b/e;Lcom/koushikdutta/async/http/b/e$g;J)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/koushikdutta/async/http/b/e$e;

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/koushikdutta/async/http/b/e$e;-><init>(Lcom/koushikdutta/async/http/b/e;Lcom/koushikdutta/async/http/b/e$g;J)V

    .line 172
    :goto_0
    iget-object v1, v0, Lcom/koushikdutta/async/http/b/e$e;->e:Lcom/koushikdutta/async/l;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/b/c;->toHeaderString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 174
    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e;->e:Lcom/koushikdutta/async/h;

    new-instance v2, Lcom/koushikdutta/async/http/b/e$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/b/e$1;-><init>(Lcom/koushikdutta/async/http/b/e;Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/http/b/e$e;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 181
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/koushikdutta/async/http/b/e;->g:I

    .line 182
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->state:Lcom/koushikdutta/async/e/i;

    const-string v0, "socket-owner"

    invoke-virtual {p1, v0, p0}, Lcom/koushikdutta/async/e/i;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    new-instance p1, Lcom/koushikdutta/async/b/h;

    invoke-direct {p1}, Lcom/koushikdutta/async/b/h;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcom/koushikdutta/async/b/h;->setComplete()Z

    return-object p1

    .line 187
    :cond_5
    sget-object v4, Lcom/koushikdutta/async/http/b/g;->CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/b/g;

    if-ne v0, v4, :cond_6

    .line 188
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string v3, "Response may be served from conditional cache"

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/d;->logi(Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/koushikdutta/async/http/b/e$b;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/b/e$b;-><init>()V

    .line 190
    iput-object v1, v0, Lcom/koushikdutta/async/http/b/e$b;->a:[Ljava/io/FileInputStream;

    .line 191
    iput-wide v6, v0, Lcom/koushikdutta/async/http/b/e$b;->c:J

    .line 192
    iput-object v9, v0, Lcom/koushikdutta/async/http/b/e$b;->d:Lcom/koushikdutta/async/http/b/f;

    .line 193
    iput-object v5, v0, Lcom/koushikdutta/async/http/b/e$b;->b:Lcom/koushikdutta/async/http/b/e$g;

    .line 194
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->state:Lcom/koushikdutta/async/e/i;

    const-string v1, "cache-data"

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/e/i;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 198
    :cond_6
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string v0, "Response can not be served from cache"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 200
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    .line 201
    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-object v2

    .line 154
    :cond_7
    :goto_1
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    .line 155
    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-object v2

    .line 149
    :catch_0
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    .line 150
    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-object v2

    :catch_1
    move-object v1, v2

    .line 128
    :catch_2
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    .line 129
    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-object v2

    .line 109
    :cond_8
    :goto_2
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    return-object v2
.end method

.method public onBodyDecoder(Lcom/koushikdutta/async/http/b$b;)V
    .locals 10

    .line 226
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$b;->socket:Lcom/koushikdutta/async/j;

    const-class v1, Lcom/koushikdutta/async/http/b/e$e;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/af;->getWrappedSocket(Lcom/koushikdutta/async/j;Ljava/lang/Class;)Lcom/koushikdutta/async/j;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b/e$e;

    const-string v1, "X-Served-From"

    if-eqz v0, :cond_0

    .line 228
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/b$h;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object p1

    const-string v0, "cache"

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-void

    .line 232
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$b;->state:Lcom/koushikdutta/async/e/i;

    const-string v2, "cache-data"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/e/i;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b/e$b;

    .line 233
    iget-object v3, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v3}, Lcom/koushikdutta/async/http/b$h;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/n;->getMultiMap()Lcom/koushikdutta/async/http/s;

    move-result-object v3

    invoke-static {v3}, Lcom/koushikdutta/async/http/b/c;->fromMultimap(Ljava/util/Map;)Lcom/koushikdutta/async/http/b/c;

    move-result-object v3

    const-string v4, "Content-Length"

    .line 234
    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/b/c;->removeAll(Ljava/lang/String;)V

    .line 235
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v6}, Lcom/koushikdutta/async/http/b$h;->protocol()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v6}, Lcom/koushikdutta/async/http/b$h;->code()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v9, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v9}, Lcom/koushikdutta/async/http/b$h;->message()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const-string v6, "%s %s %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/b/c;->setStatusLine(Ljava/lang/String;)V

    .line 236
    new-instance v4, Lcom/koushikdutta/async/http/b/f;

    iget-object v5, p1, Lcom/koushikdutta/async/http/b$b;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/koushikdutta/async/http/b/f;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/c;)V

    .line 237
    iget-object v3, p1, Lcom/koushikdutta/async/http/b$b;->state:Lcom/koushikdutta/async/e/i;

    const-string v5, "response-headers"

    invoke-virtual {v3, v5, v4}, Lcom/koushikdutta/async/e/i;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 239
    iget-object v3, v0, Lcom/koushikdutta/async/http/b/e$b;->d:Lcom/koushikdutta/async/http/b/f;

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/b/f;->validate(Lcom/koushikdutta/async/http/b/f;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    iget-object v2, p1, Lcom/koushikdutta/async/http/b$b;->request:Lcom/koushikdutta/async/http/d;

    const-string v3, "Serving response from conditional cache"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/d;->logi(Ljava/lang/String;)V

    .line 241
    iget-object v2, v0, Lcom/koushikdutta/async/http/b/e$b;->d:Lcom/koushikdutta/async/http/b/f;

    invoke-virtual {v2, v4}, Lcom/koushikdutta/async/http/b/f;->combine(Lcom/koushikdutta/async/http/b/f;)Lcom/koushikdutta/async/http/b/f;

    move-result-object v2

    .line 242
    iget-object v3, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    new-instance v4, Lcom/koushikdutta/async/http/n;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/f;->getHeaders()Lcom/koushikdutta/async/http/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/b/c;->toMultimap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/koushikdutta/async/http/n;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v4}, Lcom/koushikdutta/async/http/b$h;->headers(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/b$h;

    .line 243
    iget-object v3, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/f;->getHeaders()Lcom/koushikdutta/async/http/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/c;->getResponseCode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/koushikdutta/async/http/b$h;->code(I)Lcom/koushikdutta/async/http/b$h;

    .line 244
    iget-object v3, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/f;->getHeaders()Lcom/koushikdutta/async/http/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/c;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/koushikdutta/async/http/b$h;->message(Ljava/lang/String;)Lcom/koushikdutta/async/http/b$h;

    .line 246
    iget-object v2, p1, Lcom/koushikdutta/async/http/b$b;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/b$h;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    const-string v3, "conditional-cache"

    invoke-virtual {v2, v1, v3}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 247
    iget v1, p0, Lcom/koushikdutta/async/http/b/e;->f:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/koushikdutta/async/http/b/e;->f:I

    .line 249
    new-instance v1, Lcom/koushikdutta/async/http/b/e$c;

    iget-object v2, v0, Lcom/koushikdutta/async/http/b/e$b;->b:Lcom/koushikdutta/async/http/b/e$g;

    iget-wide v3, v0, Lcom/koushikdutta/async/http/b/e$b;->c:J

    invoke-direct {v1, v2, v3, v4}, Lcom/koushikdutta/async/http/b/e$c;-><init>(Lcom/koushikdutta/async/http/b/e$g;J)V

    .line 250
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$b;->bodyEmitter:Lcom/koushikdutta/async/n;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/b/e$c;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    .line 251
    iput-object v1, p1, Lcom/koushikdutta/async/http/b$b;->bodyEmitter:Lcom/koushikdutta/async/n;

    .line 252
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/b/e$c;->b()V

    return-void

    .line 257
    :cond_1
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$b;->state:Lcom/koushikdutta/async/e/i;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/e/i;->remove(Ljava/lang/String;)V

    .line 258
    iget-object v0, v0, Lcom/koushikdutta/async/http/b/e$b;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 261
    :cond_2
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/b/e;->a:Z

    if-nez v0, :cond_3

    return-void

    .line 264
    :cond_3
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$b;->state:Lcom/koushikdutta/async/e/i;

    const-string v1, "request-headers"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/e/i;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b/d;

    if-eqz v0, :cond_5

    .line 265
    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/b/f;->isCacheable(Lcom/koushikdutta/async/http/b/d;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/koushikdutta/async/http/b$b;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    new-array v1, v8, [Ljava/lang/Object;

    .line 276
    iget-object v2, p1, Lcom/koushikdutta/async/http/b$b;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/koushikdutta/async/e/c;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/d;->getHeaders()Lcom/koushikdutta/async/http/b/c;

    move-result-object v0

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/f;->getVaryFields()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/b/c;->getAll(Ljava/util/Set;)Lcom/koushikdutta/async/http/b/c;

    move-result-object v0

    .line 278
    new-instance v2, Lcom/koushikdutta/async/http/b/e$f;

    iget-object v3, p1, Lcom/koushikdutta/async/http/b$b;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p1, Lcom/koushikdutta/async/http/b$b;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/f;->getHeaders()Lcom/koushikdutta/async/http/b/c;

    move-result-object v4

    invoke-direct {v2, v3, v0, v5, v4}, Lcom/koushikdutta/async/http/b/e$f;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/c;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/b/c;)V

    .line 279
    new-instance v0, Lcom/koushikdutta/async/http/b/e$a;

    invoke-direct {v0, v7}, Lcom/koushikdutta/async/http/b/e$a;-><init>(B)V

    .line 280
    new-instance v3, Lcom/koushikdutta/async/http/b/e$h;

    invoke-direct {v3, p0, v1}, Lcom/koushikdutta/async/http/b/e$h;-><init>(Lcom/koushikdutta/async/http/b/e;Ljava/lang/String;)V

    .line 282
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/b/e$f;->writeTo(Lcom/koushikdutta/async/http/b/e$h;)V

    .line 284
    invoke-virtual {v3, v8}, Lcom/koushikdutta/async/http/b/e$h;->a(I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    iput-object v3, v0, Lcom/koushikdutta/async/http/b/e$a;->d:Lcom/koushikdutta/async/http/b/e$h;

    .line 294
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$b;->bodyEmitter:Lcom/koushikdutta/async/n;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/b/e$a;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    .line 295
    iput-object v0, p1, Lcom/koushikdutta/async/http/b$b;->bodyEmitter:Lcom/koushikdutta/async/n;

    .line 297
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$b;->state:Lcom/koushikdutta/async/e/i;

    const-string v2, "body-cacher"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/e/i;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$b;->request:Lcom/koushikdutta/async/http/d;

    const-string v0, "Caching response"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 299
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->i:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->i:I

    return-void

    .line 288
    :catch_0
    invoke-virtual {v3}, Lcom/koushikdutta/async/http/b/e$h;->a()V

    .line 289
    iget p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    return-void

    .line 271
    :cond_5
    :goto_0
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/koushikdutta/async/http/b/e;->h:I

    .line 272
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$b;->request:Lcom/koushikdutta/async/http/d;

    const-string v0, "Response is not cacheable"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onResponseComplete(Lcom/koushikdutta/async/http/b$g;)V
    .locals 3

    .line 305
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->state:Lcom/koushikdutta/async/e/i;

    const-string v1, "cache-data"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/e/i;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b/e$b;

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, v0, Lcom/koushikdutta/async/http/b/e$b;->a:[Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 307
    iget-object v0, v0, Lcom/koushikdutta/async/http/b/e$b;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 309
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    const-class v1, Lcom/koushikdutta/async/http/b/e$e;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/af;->getWrappedSocket(Lcom/koushikdutta/async/j;Ljava/lang/Class;)Lcom/koushikdutta/async/j;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b/e$e;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 311
    iget-object v0, v0, Lcom/koushikdutta/async/http/b/e$e;->d:Lcom/koushikdutta/async/http/b/e$g;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e$g;->getBody()Ljava/io/FileInputStream;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 313
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->state:Lcom/koushikdutta/async/e/i;

    const-string v1, "body-cacher"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/e/i;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/b/e$a;

    if-eqz v0, :cond_3

    .line 315
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$g;->exception:Ljava/lang/Exception;

    if-eqz p1, :cond_2

    .line 316
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e$a;->abort()V

    return-void

    .line 318
    :cond_2
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e$a;->commit()V

    :cond_3
    return-void
.end method

.method public removeFromCache(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 97
    invoke-static {v0}, Lcom/koushikdutta/async/e/c;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e;->getFileCache()Lcom/koushikdutta/async/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/e/c;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public setCaching(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/b/e;->a:Z

    return-void
.end method
