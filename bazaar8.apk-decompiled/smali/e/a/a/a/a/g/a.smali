.class public abstract Le/a/a/a/a/g/a;
.super Le/a/a/a/a/b/a;
.source "AbstractAppSpiCall.java"

# interfaces
.implements Le/a/a/a/a/g/f;


# direct methods
.method public constructor <init>(Le/a/a/a/l;Ljava/lang/String;Ljava/lang/String;Le/a/a/a/a/e/f;Lio/fabric/sdk/android/services/network/HttpMethod;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Le/a/a/a/a/b/a;-><init>(Le/a/a/a/l;Ljava/lang/String;Ljava/lang/String;Le/a/a/a/a/e/f;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/fabric/sdk/android/services/network/HttpRequest;Le/a/a/a/a/g/d;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1

    .line 15
    iget-object p2, p2, Le/a/a/a/a/g/d;->a:Ljava/lang/String;

    const-string v0, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {p1, v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string p2, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v0, "android"

    .line 16
    invoke-virtual {p1, p2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    iget-object p2, p0, Le/a/a/a/a/b/a;->kit:Le/a/a/a/l;

    .line 17
    invoke-virtual {p2}, Le/a/a/a/l;->getVersion()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    .line 18
    invoke-virtual {p1, v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object p1
.end method

.method public a(Le/a/a/a/n;)Ljava/lang/String;
    .locals 3

    .line 19
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Le/a/a/a/n;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "app[build][libraries][%s][type]"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/a/a/a/a/g/d;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/b/a;->getHttpRequest()Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Le/a/a/a/a/g/a;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Le/a/a/a/a/g/d;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 3
    invoke-virtual {p0, v0, p1}, Le/a/a/a/a/g/a;->b(Lio/fabric/sdk/android/services/network/HttpRequest;Le/a/a/a/a/g/d;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 4
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending app info to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/a/a/a/b/a;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fabric"

    invoke-interface {v1, v3, v2}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon hash is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    iget-object v4, v4, Le/a/a/a/a/g/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon size is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    iget v4, v4, Le/a/a/a/a/g/o;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    iget p1, p1, Le/a/a/a/a/g/o;->d:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->g()I

    move-result p1

    .line 9
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Create"

    goto :goto_0

    :cond_1
    const-string v1, "Update"

    .line 10
    :goto_0
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app request ID: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "X-REQUEST-ID"

    .line 11
    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-interface {v2, v3, v0}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Le/a/a/a/a/b/A;->a(I)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(Lio/fabric/sdk/android/services/network/HttpRequest;Le/a/a/a/a/g/d;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 7

    const-string v0, "Failed to close app icon InputStream."

    .line 1
    iget-object v1, p2, Le/a/a/a/a/g/d;->b:Ljava/lang/String;

    const-string v2, "app[identifier]"

    invoke-virtual {p1, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    iget-object v1, p2, Le/a/a/a/a/g/d;->f:Ljava/lang/String;

    const-string v2, "app[name]"

    .line 2
    invoke-virtual {p1, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    iget-object v1, p2, Le/a/a/a/a/g/d;->c:Ljava/lang/String;

    const-string v2, "app[display_version]"

    .line 3
    invoke-virtual {p1, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    iget-object v1, p2, Le/a/a/a/a/g/d;->d:Ljava/lang/String;

    const-string v2, "app[build_version]"

    .line 4
    invoke-virtual {p1, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    iget v1, p2, Le/a/a/a/a/g/d;->g:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app[source]"

    invoke-virtual {p1, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    iget-object v1, p2, Le/a/a/a/a/g/d;->h:Ljava/lang/String;

    const-string v2, "app[minimum_sdk_version]"

    .line 6
    invoke-virtual {p1, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    iget-object v1, p2, Le/a/a/a/a/g/d;->i:Ljava/lang/String;

    const-string v2, "app[built_sdk_version]"

    .line 7
    invoke-virtual {p1, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 8
    iget-object v1, p2, Le/a/a/a/a/g/d;->e:Ljava/lang/String;

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p2, Le/a/a/a/a/g/d;->e:Ljava/lang/String;

    const-string v2, "app[instance_identifier]"

    invoke-virtual {p1, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 10
    :cond_0
    iget-object v1, p2, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Le/a/a/a/a/b/a;->kit:Le/a/a/a/l;

    invoke-virtual {v2}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p2, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    iget v3, v3, Le/a/a/a/a/g/o;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "app[icon][hash]"

    .line 12
    iget-object v3, p2, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    iget-object v3, v3, Le/a/a/a/a/g/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v2, "app[icon][data]"

    const-string v3, "icon.png"

    const-string v4, "application/octet-stream"

    .line 13
    invoke-virtual {p1, v2, v3, v4, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v2, "app[icon][width]"

    iget-object v3, p2, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    iget v3, v3, Le/a/a/a/a/g/o;->c:I

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v2, "app[icon][height]"

    iget-object v3, p2, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    iget v3, v3, Le/a/a/a/a/g/o;->d:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 16
    :try_start_1
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find app icon with resource ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Le/a/a/a/a/g/d;->j:Le/a/a/a/a/g/o;

    iget v6, v6, Le/a/a/a/a/g/o;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    :cond_1
    :goto_2
    iget-object p2, p2, Le/a/a/a/a/g/d;->k:Ljava/util/Collection;

    if-eqz p2, :cond_2

    .line 20
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/a/n;

    .line 21
    invoke-virtual {p0, v0}, Le/a/a/a/a/g/a;->b(Le/a/a/a/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Le/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 22
    invoke-virtual {p0, v0}, Le/a/a/a/a/g/a;->a(Le/a/a/a/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Le/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    goto :goto_3

    :cond_2
    return-object p1
.end method

.method public b(Le/a/a/a/n;)Ljava/lang/String;
    .locals 3

    .line 23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Le/a/a/a/n;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "app[build][libraries][%s][version]"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
