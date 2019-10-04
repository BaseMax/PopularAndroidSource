.class public Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/TelemetryDefinition;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final telemetry:Lcom/mapbox/android/telemetry/x;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/mapbox/android/telemetry/x;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    const-string v3, "mapbox-maps-android/8.3.0-beta.1"

    invoke-direct {v1, v2, v0, v3}, Lcom/mapbox/android/telemetry/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    .line 31
    invoke-static {}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->retrieveTelemetryStateFromPreferences()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-virtual {v1, v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/x;->enable()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public disableTelemetrySession()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/x;->disable()Z

    return-void
.end method

.method public onAppUserTurnstileEvent()V
    .locals 3

    .line 42
    new-instance v0, Lcom/mapbox/android/telemetry/AppUserTurnstile;

    const-string v1, "mapbox-maps-android"

    const-string v2, "8.3.0-beta.1"

    invoke-direct {v0, v1, v2}, Lcom/mapbox/android/telemetry/AppUserTurnstile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "00"

    .line 44
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/AppUserTurnstile;->setSkuId(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v1, v0}, Lcom/mapbox/android/telemetry/x;->push(Lcom/mapbox/android/telemetry/Event;)Z

    .line 46
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/module/telemetry/MapEventFactory;->buildMapLoadEvent(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;)Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/x;->push(Lcom/mapbox/android/telemetry/Event;)Z

    return-void
.end method

.method public onCreateOfflineRegion(Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;)V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;-><init>(Landroid/content/Context;)V

    instance-of v2, p1, Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;

    if-eqz v2, :cond_0

    const-string v2, "tileregion"

    goto :goto_0

    :cond_0
    const-string v2, "shaperegion"

    .line 117
    :goto_0
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getMinZoom()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 118
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getMaxZoom()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 119
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getStyleURL()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {v1, v2, v3, v4, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/MapEventFactory;->buildOfflineDownloadStartEvent(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/mapbox/mapboxsdk/module/telemetry/OfflineDownloadStartEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/x;->push(Lcom/mapbox/android/telemetry/Event;)Z

    return-void
.end method

.method public onGestureInteraction(Ljava/lang/String;DDD)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPerformanceEvent(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 131
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v1, v2, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/MapEventFactory;->buildPerformanceEvent(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;Ljava/lang/String;Landroid/os/Bundle;)Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/x;->push(Lcom/mapbox/android/telemetry/Event;)Z

    return-void
.end method

.method public setDebugLoggingEnabled(Z)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/x;->updateDebugLoggingEnabled(Z)V

    return-void
.end method

.method public setSessionIdRotationInterval(I)Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/android/telemetry/ac;

    invoke-direct {v1, p1}, Lcom/mapbox/android/telemetry/ac;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/x;->updateSessionIdRotationInterval(Lcom/mapbox/android/telemetry/ac;)Z

    move-result p1

    return p1
.end method

.method public setUserTelemetryRequestState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 74
    sget-object p1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-static {p1}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->updateTelemetryState(Lcom/mapbox/android/telemetry/TelemetryEnabler$State;)Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    .line 75
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/x;->enable()Z

    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/x;->disable()Z

    .line 78
    sget-object p1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->DISABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-static {p1}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->updateTelemetryState(Lcom/mapbox/android/telemetry/TelemetryEnabler$State;)Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    return-void
.end method
