.class public Lcom/yandex/metrica/impl/af;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 146
    :cond_0
    :try_start_0
    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "provider"

    .line 147
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "time"

    .line 148
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/a/c;->put(Ljava/lang/String;J)Lorg/a/c;

    const-string v2, "accuracy"

    .line 149
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/a/c;->put(Ljava/lang/String;D)Lorg/a/c;

    const-string v2, "alt"

    .line 150
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/a/c;->put(Ljava/lang/String;D)Lorg/a/c;

    const-string v2, "lng"

    .line 151
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/a/c;->put(Ljava/lang/String;D)Lorg/a/c;

    const-string v2, "lat"

    .line 152
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/a/c;->put(Ljava/lang/String;D)Lorg/a/c;

    .line 153
    invoke-virtual {v1}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static a(Lcom/yandex/metrica/PreloadInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 112
    :cond_0
    :try_start_0
    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "trackid"

    .line 113
    invoke-virtual {p0}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "params"

    .line 114
    invoke-virtual {p0}, Lcom/yandex/metrica/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ne;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 115
    invoke-virtual {v1}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/yandex/metrica/PreloadInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p0}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    const-string p0, "trackid"

    .line 125
    invoke-virtual {v0, p0}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_0
    invoke-static {v1}, Lcom/yandex/metrica/PreloadInfo;->newBuilder(Ljava/lang/String;)Lcom/yandex/metrica/PreloadInfo$Builder;

    move-result-object p0

    const-string v1, "params"

    .line 130
    invoke-virtual {v0, v1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ne;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 132
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/yandex/metrica/PreloadInfo$Builder;->setAdditionalParams(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/PreloadInfo$Builder;

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/PreloadInfo$Builder;->build()Lcom/yandex/metrica/PreloadInfo;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private static c(Ljava/lang/String;)Landroid/location/Location;
    .locals 5

    const-string v0, "provider"

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 163
    :cond_0
    :try_start_0
    new-instance v1, Lorg/a/c;

    invoke-direct {v1, p0}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v0}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 166
    invoke-virtual {v1, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    .line 168
    :goto_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-string p0, "lng"

    .line 169
    invoke-virtual {v1, p0}, Lorg/a/c;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    const-string p0, "lat"

    .line 170
    invoke-virtual {v1, p0}, Lorg/a/c;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    const-string p0, "time"

    .line 171
    invoke-virtual {v1, p0}, Lorg/a/c;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setTime(J)V

    const-string p0, "accuracy"

    .line 172
    invoke-virtual {v1, p0}, Lorg/a/c;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float p0, v3

    invoke-virtual {v0, p0}, Landroid/location/Location;->setAccuracy(F)V

    const-string p0, "alt"

    .line 173
    invoke-virtual {v1, p0}, Lorg/a/c;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float p0, v3

    float-to-double v3, p0

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setAltitude(D)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 9

    const-string v0, "location_enabled"

    const-string v1, "crash_native_enabled"

    const-string v2, "crash_enabled"

    const-string v3, "logs"

    const-string v4, "collect_apps"

    const-string v5, "session_timeout"

    const-string v6, "app_version"

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 72
    :try_start_0
    new-instance v7, Lorg/a/c;

    invoke-direct {v7, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    const-string p1, "apikey"

    .line 74
    invoke-virtual {v7, p1}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {v7, v6}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    invoke-virtual {v7, v6}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withAppVersion(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 79
    :cond_0
    invoke-virtual {v7, v5}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    invoke-virtual {v7, v5}, Lorg/a/c;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withSessionTimeout(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    :cond_1
    const-string v5, "location"

    .line 82
    invoke-virtual {v7, v5}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yandex/metrica/impl/af;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLocation(Landroid/location/Location;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    const-string v5, "preload_info"

    .line 83
    invoke-virtual {v7, v5}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yandex/metrica/impl/af;->b(Ljava/lang/String;)Lcom/yandex/metrica/PreloadInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withPreloadInfo(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 84
    invoke-virtual {v7, v4}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {v7, v4}, Lorg/a/c;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withInstalledAppCollecting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 87
    :cond_2
    invoke-virtual {v7, v3}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v7, v3}, Lorg/a/c;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    invoke-virtual {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLogs()Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 90
    :cond_3
    invoke-virtual {v7, v2}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    invoke-virtual {v7, v2}, Lorg/a/c;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withCrashReporting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 93
    :cond_4
    invoke-virtual {v7, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-virtual {v7, v1}, Lorg/a/c;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withNativeCrashReporting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 96
    :cond_5
    invoke-virtual {v7, v0}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    invoke-virtual {v7, v0}, Lorg/a/c;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLocationTracking(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 99
    :cond_6
    invoke-virtual {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->build()Lcom/yandex/metrica/YandexMetricaConfig;

    move-result-object p1
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_7
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Lcom/yandex/metrica/YandexMetricaConfig;)Ljava/lang/String;
    .locals 3

    .line 50
    :try_start_0
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    const-string v1, "apikey"

    .line 51
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "app_version"

    .line 52
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "session_timeout"

    .line 53
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "location"

    .line 54
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    invoke-static {v2}, Lcom/yandex/metrica/impl/af;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "preload_info"

    .line 55
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    invoke-static {v2}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/PreloadInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "collect_apps"

    .line 56
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->installedAppCollecting:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "logs"

    .line 57
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "crash_enabled"

    .line 58
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "crash_native_enabled"

    .line 59
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "location_enabled"

    .line 60
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 62
    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method
