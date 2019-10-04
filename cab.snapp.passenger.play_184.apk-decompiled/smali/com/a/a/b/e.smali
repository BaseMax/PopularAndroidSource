.class final Lcom/a/a/b/e;
.super Lio/fabric/sdk/android/services/common/a;
.source "SourceFile"


# instance fields
.field private final c:Lcom/a/a/b/g;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Lcom/a/a/b/g;)V
    .locals 6

    .line 38
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->GET:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 39
    iput-object p5, p0, Lcom/a/a/b/e;->c:Lcom/a/a/b/g;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)Lcom/a/a/b/f;
    .locals 10

    const-string v0, "Checking for updates request ID: "

    const-string v1, "Fabric"

    const-string v2, "X-REQUEST-ID"

    const-string v3, "Beta"

    const/4 v4, 0x0

    .line 1087
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "build_version"

    .line 1089
    iget-object v7, p3, Lcom/a/a/b/d;->versionCode:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "display_version"

    .line 1090
    iget-object v7, p3, Lcom/a/a/b/d;->versionName:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "instance"

    .line 1091
    iget-object p3, p3, Lcom/a/a/b/d;->buildId:Ljava/lang/String;

    invoke-interface {v5, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "source"

    const-string v6, "3"

    .line 1092
    invoke-interface {v5, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, v5}, Lcom/a/a/b/e;->a(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/c;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v6, "Accept"

    const-string v7, "application/json"

    .line 2075
    invoke-virtual {p3, v6, v7}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v6

    const-string v7, "User-Agent"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Crashlytics Android SDK/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/a/a/b/e;->b:Lio/fabric/sdk/android/i;

    .line 2077
    invoke-virtual {v9}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2076
    invoke-virtual {v6, v7, v8}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v6

    const-string v7, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v8, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 2078
    invoke-virtual {v6, v7, v8}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v6

    const-string v7, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v8, "android"

    .line 2080
    invoke-virtual {v6, v7, v8}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v6

    const-string v7, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v8, p0, Lcom/a/a/b/e;->b:Lio/fabric/sdk/android/i;

    .line 2081
    invoke-virtual {v8}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v6

    const-string v7, "X-CRASHLYTICS-API-KEY"

    .line 2082
    invoke-virtual {v6, v7, p1}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object p1

    const-string v6, "X-CRASHLYTICS-BETA-TOKEN"

    const-string v7, "3:"

    .line 3032
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2083
    invoke-virtual {p1, v6, p2}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v6, "Checking for updates from "

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3100
    iget-object v6, p0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/lang/String;

    .line 51
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v3, p3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string p3, "Checking for updates query params are: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v3, p3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/c;->ok()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 55
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string p3, "Checking for updates was successful"

    invoke-interface {p2, v3, p3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p2, Lorg/a/c;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/c;->body()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object p3, p0, Lcom/a/a/b/e;->c:Lcom/a/a/b/g;

    invoke-virtual {p3, p2}, Lcom/a/a/b/g;->fromJson(Lorg/a/c;)Lcom/a/a/b/f;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, v2}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p2

    .line 59
    :cond_1
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "Checking for updates failed. Response code: "

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/c;->code()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 59
    invoke-interface {p2, v3, p3}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object p1, p3

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, p3

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v4

    goto :goto_2

    :catch_2
    move-exception p2

    move-object p1, v4

    .line 63
    :goto_0
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while checking for updates from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4100
    iget-object v6, p0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v3, v5, p2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_2

    .line 66
    :goto_1
    invoke-virtual {p1, v2}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v4

    :catchall_2
    move-exception p2

    :goto_2
    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p1, v2}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_3
    throw p2
.end method
