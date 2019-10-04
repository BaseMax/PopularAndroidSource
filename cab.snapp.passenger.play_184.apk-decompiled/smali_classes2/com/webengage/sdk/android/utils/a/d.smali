.class public Lcom/webengage/sdk/android/utils/a/d;
.super Lcom/webengage/sdk/android/utils/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/utils/a/d$a;
    }
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field e:Lcom/webengage/sdk/android/utils/a/g;

.field private f:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/webengage/sdk/android/utils/a/f;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/webengage/sdk/android/utils/a/a;-><init>(Landroid/content/Context;Lcom/webengage/sdk/android/utils/a/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->f:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/utils/a/f;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/webengage/sdk/android/utils/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/webengage/sdk/android/utils/a/d;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/d;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private a(Ljava/util/Map;Lcom/webengage/sdk/android/utils/a/d$a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/webengage/sdk/android/utils/a/d$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/webengage/sdk/android/utils/a/d$1;->a:[I

    invoke-virtual {p2}, Lcom/webengage/sdk/android/utils/a/d$a;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "cache-control"

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p2, "expires"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p2, "etag"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_3
    const-string p2, "last-modified"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "max-age"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x8

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Map;

    invoke-static {p2}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    return-void
.end method

.method private h()Lcom/webengage/sdk/android/utils/a/g;
    .locals 7

    new-instance v0, Lcom/webengage/sdk/android/utils/a/g$a;

    invoke-direct {v0}, Lcom/webengage/sdk/android/utils/a/g$a;-><init>()V

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g$a;

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/f;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->c(I)Lcom/webengage/sdk/android/utils/a/g$a;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    sget v1, Lcom/webengage/sdk/android/utils/WebEngageConstant;->a:I

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->b(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g$a;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/f;->b()Lcom/webengage/sdk/android/utils/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const v2, 0xea60

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v2, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/f;->c()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/f;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/f;->b()Lcom/webengage/sdk/android/utils/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_3
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v2, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/f;->d()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/f;->c()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/f;->c()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Content-Encoding"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "gzip"

    iget-object v4, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/utils/a/f;->c()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Content-Encoding"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v5, v2}, Lcom/webengage/sdk/android/utils/a/d;->a(Ljava/io/Writer;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    :goto_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v4, v2}, Lcom/webengage/sdk/android/utils/a/d;->a(Ljava/io/Writer;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/utils/a/g$a;->b(I)Lcom/webengage/sdk/android/utils/a/g$a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v3, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/f;->b()Lcom/webengage/sdk/android/utils/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/webengage/sdk/android/utils/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Z)Lcom/webengage/sdk/android/utils/a/g$a;

    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/util/Map;)Lcom/webengage/sdk/android/utils/a/g$a;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_b

    invoke-static {v1}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/net/HttpURLConnection;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    :goto_4
    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/utils/a/d;->c:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v3, Lcom/webengage/sdk/android/utils/a/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/webengage/sdk/android/utils/a/c;

    iget-object v5, p0, Lcom/webengage/sdk/android/utils/a/d;->f:Landroid/content/Context;

    invoke-interface {v4, v1, v5}, Lcom/webengage/sdk/android/utils/a/c;->a(Lcom/webengage/sdk/android/utils/a/g;Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v1

    goto :goto_5

    :cond_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/webengage/sdk/android/utils/a/g$a;->a(J)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v2

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/f;->g()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_c

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v2}, Lcom/webengage/sdk/android/utils/a/d;->b(Lcom/webengage/sdk/android/utils/a/g;)[B

    move-result-object v1

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_b
    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v3, 0x190

    if-lt v0, v3, :cond_c

    :try_start_5
    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->b(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_c
    return-object v2

    :catch_1
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/lang/Exception;)Lcom/webengage/sdk/android/utils/a/g$a;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/a/b;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/b;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/utils/a/g$a;->b(I)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    :cond_1
    iget-object p1, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/utils/a/g$a;->c(I)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    return-object p1
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/a/b;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/b;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v0

    return v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/webengage/sdk/android/utils/a/g;)[B
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/a/b;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/utils/a/b;->a(Lcom/webengage/sdk/android/utils/a/g;)[B

    move-result-object p1

    return-object p1
.end method

.method protected c()Lcom/webengage/sdk/android/utils/a/g;
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/a/b;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/b;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->b()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/utils/a/d$a;->c:Lcom/webengage/sdk/android/utils/a/d$a;

    invoke-direct {p0, v0, v1}, Lcom/webengage/sdk/android/utils/a/d;->a(Ljava/util/Map;Lcom/webengage/sdk/android/utils/a/d$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g;->b()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/utils/a/d$a;->b:Lcom/webengage/sdk/android/utils/a/d$a;

    invoke-direct {p0, v1, v2}, Lcom/webengage/sdk/android/utils/a/d;->a(Ljava/util/Map;Lcom/webengage/sdk/android/utils/a/d$a;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/webengage/sdk/android/utils/a/d;->h()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/webengage/sdk/android/utils/a/d;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/f;->c()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "If-None-Match"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "If-Modified-Since"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f;->h()Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/util/Map;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-direct {p0}, Lcom/webengage/sdk/android/utils/a/d;->h()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/webengage/sdk/android/utils/a/g;
    .locals 1

    invoke-direct {p0}, Lcom/webengage/sdk/android/utils/a/d;->h()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0
.end method

.method e()Lcom/webengage/sdk/android/utils/a/g;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/d;->e:Lcom/webengage/sdk/android/utils/a/g;

    return-object v0
.end method
