.class public final Lc/e/a/b/h/b/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:[B

.field public final c:Lc/e/a/b/h/b/A;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lc/e/a/b/h/b/x;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/x;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lc/e/a/b/h/b/A;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc/e/a/b/h/b/A;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lc/e/a/b/h/b/C;->a:Ljava/net/URL;

    .line 6
    iput-object p4, p0, Lc/e/a/b/h/b/C;->b:[B

    .line 7
    iput-object p6, p0, Lc/e/a/b/h/b/C;->c:Lc/e/a/b/h/b/A;

    .line 8
    iput-object p2, p0, Lc/e/a/b/h/b/C;->d:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lc/e/a/b/h/b/C;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 1
    iget-object v1, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->k()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    iget-object v4, p0, Lc/e/a/b/h/b/C;->a:Ljava/net/URL;

    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/x;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3
    :try_start_1
    iget-object v4, p0, Lc/e/a/b/h/b/C;->e:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Lc/e/a/b/h/b/C;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v4, p0, Lc/e/a/b/h/b/C;->b:[B

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Rb;->n()Lc/e/a/b/h/b/Zb;

    move-result-object v4

    iget-object v5, p0, Lc/e/a/b/h/b/C;->b:[B

    invoke-virtual {v4, v5}, Lc/e/a/b/h/b/Zb;->c([B)[B

    move-result-object v4

    .line 8
    iget-object v5, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-virtual {v5}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Uploading data. size"

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 10
    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 14
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 15
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v11, v1

    move-object v1, v5

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v11, v1

    move-object v9, v4

    move-object v1, v5

    goto/16 :goto_7

    .line 16
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 17
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 18
    :try_start_5
    iget-object v2, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-static {v2, v3}, Lc/e/a/b/h/b/x;->a(Lc/e/a/b/h/b/x;Ljava/net/HttpURLConnection;)[B

    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 20
    :cond_2
    iget-object v0, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/B;

    iget-object v6, p0, Lc/e/a/b/h/b/C;->d:Ljava/lang/String;

    iget-object v7, p0, Lc/e/a/b/h/b/C;->c:Lc/e/a/b/h/b/A;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lc/e/a/b/h/b/B;-><init>(Ljava/lang/String;Lc/e/a/b/h/b/A;ILjava/lang/Throwable;[BLjava/util/Map;Lc/e/a/b/h/b/y;)V

    .line 21
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v4

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object v11, v1

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v11, v1

    :goto_2
    move-object v9, v4

    goto :goto_8

    :catchall_3
    move-exception v4

    move-object v11, v1

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v11, v1

    goto :goto_6

    :catchall_4
    move-exception v4

    move-object v3, v1

    move-object v11, v3

    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v1, :cond_3

    .line 22
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    .line 23
    iget-object v2, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    iget-object v5, p0, Lc/e/a/b/h/b/C;->d:Ljava/lang/String;

    .line 25
    invoke-static {v5}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 26
    invoke-virtual {v2, v0, v5, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 28
    :cond_4
    iget-object v0, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/B;

    iget-object v6, p0, Lc/e/a/b/h/b/C;->d:Ljava/lang/String;

    iget-object v7, p0, Lc/e/a/b/h/b/C;->c:Lc/e/a/b/h/b/A;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lc/e/a/b/h/b/B;-><init>(Ljava/lang/String;Lc/e/a/b/h/b/A;ILjava/lang/Throwable;[BLjava/util/Map;Lc/e/a/b/h/b/y;)V

    .line 29
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    throw v4

    :catch_5
    move-exception v4

    move-object v3, v1

    move-object v11, v3

    :goto_6
    move-object v9, v4

    :goto_7
    const/4 v8, 0x0

    :goto_8
    if-eqz v1, :cond_5

    .line 30
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v1

    .line 31
    iget-object v2, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    iget-object v4, p0, Lc/e/a/b/h/b/C;->d:Ljava/lang/String;

    .line 33
    invoke-static {v4}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    invoke-virtual {v2, v0, v4, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_9
    if-eqz v3, :cond_6

    .line 35
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 36
    :cond_6
    iget-object v0, p0, Lc/e/a/b/h/b/C;->f:Lc/e/a/b/h/b/x;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/B;

    iget-object v6, p0, Lc/e/a/b/h/b/C;->d:Ljava/lang/String;

    iget-object v7, p0, Lc/e/a/b/h/b/C;->c:Lc/e/a/b/h/b/A;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lc/e/a/b/h/b/B;-><init>(Ljava/lang/String;Lc/e/a/b/h/b/A;ILjava/lang/Throwable;[BLjava/util/Map;Lc/e/a/b/h/b/y;)V

    .line 37
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method
