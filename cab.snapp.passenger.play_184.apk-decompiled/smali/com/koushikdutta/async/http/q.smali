.class public final Lcom/koushikdutta/async/http/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/q$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentLength(Lcom/koushikdutta/async/http/n;)I
    .locals 1

    const-string v0, "Content-Length"

    .line 136
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 140
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static getBody(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/a/a;
    .locals 2

    const-string p0, "Content-Type"

    .line 19
    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, ";"

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 22
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_0

    .line 23
    aget-object v0, p0, p2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    array-length p2, p0

    :goto_1
    if-ge p1, p2, :cond_5

    aget-object v0, p0, p1

    const-string v1, "application/x-www-form-urlencoded"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    new-instance p0, Lcom/koushikdutta/async/http/a/l;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/a/l;-><init>()V

    return-object p0

    :cond_1
    const-string v1, "application/json"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    new-instance p0, Lcom/koushikdutta/async/http/a/e;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/a/e;-><init>()V

    return-object p0

    :cond_2
    const-string v1, "text/plain"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    new-instance p0, Lcom/koushikdutta/async/http/a/j;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/a/j;-><init>()V

    return-object p0

    :cond_3
    const-string v1, "multipart/form-data"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    new-instance p1, Lcom/koushikdutta/async/http/a/f;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/a/f;-><init>([Ljava/lang/String;)V

    return-object p1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBodyDecoder(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/n;Z)Lcom/koushikdutta/async/n;
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "Content-Length"

    .line 65
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v2, v0

    :goto_0
    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    .line 73
    invoke-interface {p0}, Lcom/koushikdutta/async/n;->getServer()Lcom/koushikdutta/async/h;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/async/http/k;

    const-string p3, "not using chunked encoding, and no content-length found."

    invoke-direct {p2, p3}, Lcom/koushikdutta/async/http/k;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/q$a;->create(Lcom/koushikdutta/async/h;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/q$a;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/q$a;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    return-object p1

    :cond_0
    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 79
    invoke-interface {p0}, Lcom/koushikdutta/async/n;->getServer()Lcom/koushikdutta/async/h;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/koushikdutta/async/http/q$a;->create(Lcom/koushikdutta/async/h;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/q$a;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/q$a;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    return-object p1

    .line 84
    :cond_1
    new-instance p1, Lcom/koushikdutta/async/http/d/d;

    invoke-direct {p1, v2, v3}, Lcom/koushikdutta/async/http/d/d;-><init>(J)V

    .line 85
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/d/d;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    goto :goto_1

    :cond_2
    const-string v0, "Transfer-Encoding"

    .line 88
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    new-instance p1, Lcom/koushikdutta/async/http/d/b;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/d/b;-><init>()V

    .line 90
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/d/b;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    .line 94
    sget-object p3, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne p1, p3, :cond_5

    :cond_4
    const-string p1, "Connection"

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "close"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 96
    invoke-interface {p0}, Lcom/koushikdutta/async/n;->getServer()Lcom/koushikdutta/async/h;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/koushikdutta/async/http/q$a;->create(Lcom/koushikdutta/async/h;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/q$a;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/q$a;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    return-object p1

    :cond_5
    move-object p1, p0

    :goto_1
    const-string p0, "Content-Encoding"

    .line 103
    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gzip"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 104
    new-instance p0, Lcom/koushikdutta/async/http/d/f;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/d/f;-><init>()V

    .line 105
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/f;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    goto :goto_2

    .line 108
    :cond_6
    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "deflate"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 109
    new-instance p0, Lcom/koushikdutta/async/http/d/g;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/d/g;-><init>()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/g;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    goto :goto_2

    :cond_7
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public static isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/n;)Z
    .locals 1

    const-string v0, "Connection"

    .line 121
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 123
    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const-string p0, "keep-alive"

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isKeepAlive(Ljava/lang/String;Lcom/koushikdutta/async/http/n;)Z
    .locals 1

    const-string v0, "Connection"

    .line 129
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 131
    invoke-static {p0}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object p0

    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const-string p0, "keep-alive"

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
