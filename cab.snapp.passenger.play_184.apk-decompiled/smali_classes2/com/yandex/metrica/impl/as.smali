.class public Lcom/yandex/metrica/impl/as;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/aq;)V
    .locals 8

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aq;->e()V

    .line 40
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aq;->d()Lcom/yandex/metrica/impl/ob/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/im;->a()Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 41
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aq;->A()Ljava/util/Map;

    move-result-object v2

    .line 1088
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1089
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 42
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aq;->j()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aq;->k()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 44
    array-length v3, v2

    if-lez v3, :cond_2

    .line 45
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aq;->z()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    .line 1096
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v3, :cond_1

    const-string v4, "Send-Timestamp"

    .line 1098
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1099
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1098
    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 48
    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    array-length v2, v2

    invoke-direct {v4, v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :try_start_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aq;->k()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 51
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 53
    invoke-static {v3}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-object v2, v0

    move-object v4, v2

    goto :goto_5

    :cond_2
    move-object v3, v0

    move-object v4, v3

    .line 57
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 58
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/aq;->a(I)V

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/yandex/metrica/impl/aq;->a(Ljava/util/Map;)V

    .line 61
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/aq;->b(I)Z

    move-result v2

    const/16 v5, 0x1f40

    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    :try_start_4
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const v0, 0x7fffffff

    .line 1187
    :try_start_5
    invoke-static {v6, v0}, Lcom/yandex/metrica/impl/w;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/aq;->b([B)V

    .line 66
    invoke-static {v2}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-object v0, v6

    goto :goto_5

    .line 68
    :cond_3
    :try_start_6
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 69
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v6, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 78
    :goto_2
    invoke-static {v4}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 79
    invoke-static {v6}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v3}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 82
    :goto_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/net/HttpURLConnection;)V

    return-void

    :catchall_2
    move-object v2, v0

    goto :goto_5

    :catchall_3
    move-object v2, v0

    goto :goto_4

    :catchall_4
    move-object v1, v0

    move-object v2, v1

    :goto_4
    move-object v3, v2

    move-object v4, v3

    .line 76
    :catchall_5
    :goto_5
    :try_start_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aq;->h()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 78
    invoke-static {v4}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 79
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v3}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v2}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_6
    move-exception p1

    .line 78
    invoke-static {v4}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 79
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v3}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v2}, Lcom/yandex/metrica/impl/bv;->a(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/net/HttpURLConnection;)V

    .line 83
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
