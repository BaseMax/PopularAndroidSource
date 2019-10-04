.class final Lio/fabric/sdk/android/services/settings/l;
.super Lio/fabric/sdk/android/services/common/a;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/w;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V
    .locals 6

    .line 66
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->GET:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/settings/l;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    return-void
.end method

.method private constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Lio/fabric/sdk/android/services/network/HttpMethod;)V
    .locals 0

    .line 74
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lorg/a/c;
    .locals 4

    .line 133
    :try_start_0
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 135
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse settings JSON from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4100
    iget-object v3, p0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/lang/String;

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fabric"

    invoke-interface {v1, v3, v2, v0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Settings response "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public final invoke(Lio/fabric/sdk/android/services/settings/v;)Lorg/a/c;
    .locals 8

    const-string v0, "X-REQUEST-ID"

    const-string v1, "Settings request ID: "

    const-string v2, "Fabric"

    const/4 v3, 0x0

    .line 1142
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "build_version"

    .line 1143
    iget-object v6, p1, Lio/fabric/sdk/android/services/settings/v;->buildVersion:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "display_version"

    .line 1144
    iget-object v6, p1, Lio/fabric/sdk/android/services/settings/v;->displayVersion:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "source"

    .line 1145
    iget v6, p1, Lio/fabric/sdk/android/services/settings/v;->source:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object v5, p1, Lio/fabric/sdk/android/services/settings/v;->iconHash:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "icon_hash"

    .line 1148
    iget-object v6, p1, Lio/fabric/sdk/android/services/settings/v;->iconHash:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    :cond_0
    iget-object v5, p1, Lio/fabric/sdk/android/services/settings/v;->instanceId:Ljava/lang/String;

    .line 1152
    invoke-static {v5}, Lio/fabric/sdk/android/services/common/i;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "instance"

    .line 1153
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    invoke-virtual {p0, v4}, Lio/fabric/sdk/android/services/settings/l;->a(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v5
    :try_end_0
    .catch Lio/fabric/sdk/android/services/network/c$e; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v6, "X-CRASHLYTICS-API-KEY"

    .line 1162
    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/v;->apiKey:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v7, "android"

    .line 1163
    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-CRASHLYTICS-API-CLIENT-VERSION"

    .line 1165
    iget-object v7, p0, Lio/fabric/sdk/android/services/settings/l;->b:Lio/fabric/sdk/android/i;

    invoke-virtual {v7}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept"

    const-string v7, "application/json"

    .line 1166
    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-CRASHLYTICS-DEVICE-MODEL"

    .line 1168
    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/v;->deviceModel:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-CRASHLYTICS-OS-BUILD-VERSION"

    .line 1169
    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/v;->osBuildVersion:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    .line 1170
    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/v;->osDisplayVersion:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-CRASHLYTICS-ADVERTISING-TOKEN"

    .line 1171
    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/v;->advertisingId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 1172
    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/v;->installationId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-CRASHLYTICS-ANDROID-ID"

    .line 1173
    iget-object p1, p1, Lio/fabric/sdk/android/services/settings/v;->androidId:Ljava/lang/String;

    invoke-static {v5, v6, p1}, Lio/fabric/sdk/android/services/settings/l;->a(Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Requesting settings from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2100
    iget-object v7, p0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/lang/String;

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v6, "Settings query params were: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v5}, Lio/fabric/sdk/android/services/network/c;->code()I

    move-result p1

    .line 2107
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v6, "Settings result was: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_3

    const/16 v4, 0xc9

    if-eq p1, v4, :cond_3

    const/16 v4, 0xca

    if-eq p1, v4, :cond_3

    const/16 v4, 0xcb

    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    .line 2111
    invoke-virtual {v5}, Lio/fabric/sdk/android/services/network/c;->body()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/settings/l;->a(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    move-object v3, p1

    goto :goto_2

    .line 2113
    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to retrieve settings from "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3100
    iget-object v6, p0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/lang/String;

    .line 2113
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lio/fabric/sdk/android/services/network/c$e; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v5, :cond_5

    .line 96
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    :goto_3
    invoke-virtual {v5, v0}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-interface {p1, v2, v0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v5, v3

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v5, v3

    .line 92
    :goto_4
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v6, "Settings request failed."

    invoke-interface {v4, v2, v6, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_5

    .line 96
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_5
    return-object v3

    :catchall_1
    move-exception p1

    :goto_6
    if-eqz v5, :cond_6

    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5, v0}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-interface {v3, v2, v0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
