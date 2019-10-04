.class public Le/a/a/a/a/e/c;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Le/a/a/a/a/e/f;


# instance fields
.field public final a:Le/a/a/a/o;

.field public b:Le/a/a/a/a/e/h;

.field public c:Ljavax/net/ssl/SSLSocketFactory;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/a/a/c;

    invoke-direct {v0}, Le/a/a/a/c;-><init>()V

    invoke-direct {p0, v0}, Le/a/a/a/a/e/c;-><init>(Le/a/a/a/o;)V

    return-void
.end method

.method public constructor <init>(Le/a/a/a/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le/a/a/a/a/e/c;->a:Le/a/a/a/o;

    return-void
.end method


# virtual methods
.method public a(Lio/fabric/sdk/android/services/network/HttpMethod;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Le/a/a/a/a/e/c;->a(Lio/fabric/sdk/android/services/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Lio/fabric/sdk/android/services/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/network/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .line 5
    sget-object v0, Le/a/a/a/a/e/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    .line 6
    invoke-static {p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported HTTP method!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    invoke-static {p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p2, p3, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p2, p3, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object p1

    .line 11
    :goto_0
    invoke-virtual {p0, p2}, Le/a/a/a/a/e/c;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Le/a/a/a/a/e/c;->b:Le/a/a/a/a/e/h;

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p0}, Le/a/a/a/a/e/c;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->l()Ljava/net/HttpURLConnection;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    .line 14
    invoke-virtual {p3, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_4
    return-object p1
.end method

.method public final declared-synchronized a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Le/a/a/a/a/e/c;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/a/a/a/a/e/c;->d:Z

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Le/a/a/a/a/e/c;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Le/a/a/a/a/e/c;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 18
    :cond_0
    iget-object v0, p0, Le/a/a/a/a/e/c;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Le/a/a/a/a/e/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a/e/c;->b:Le/a/a/a/a/e/h;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Le/a/a/a/a/e/c;->b:Le/a/a/a/a/e/h;

    .line 3
    invoke-virtual {p0}, Le/a/a/a/a/e/c;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Le/a/a/a/a/e/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Le/a/a/a/a/e/c;->b:Le/a/a/a/a/e/h;

    .line 3
    invoke-static {v0}, Le/a/a/a/a/e/g;->a(Le/a/a/a/a/e/h;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/a/a/a/e/c;->a:Le/a/a/a/o;

    const-string v2, "Fabric"

    const-string v3, "Custom SSL pinning enabled"

    invoke-interface {v1, v2, v3}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    iget-object v1, p0, Le/a/a/a/a/e/c;->a:Le/a/a/a/o;

    const-string v2, "Fabric"

    const-string v3, "Exception while validating pinned certs"

    invoke-interface {v1, v2, v3, v0}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 7
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Le/a/a/a/a/e/c;->d:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/a/a/a/e/c;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
