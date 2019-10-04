.class Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;
.super Lcom/mapbox/mapboxsdk/module/telemetry/MapBaseEvent;
.source "SourceFile"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "map.load"


# instance fields
.field private final accessibilityFontScale:F

.field private final batteryLevel:I

.field private final carrier:Ljava/lang/String;

.field private final cellularNetworkType:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final operatingSystem:Ljava/lang/String;

.field private final orientation:Ljava/lang/String;

.field private final pluggedIn:Z

.field private final resolution:F

.field private final sdkIdentifier:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/String;

.field private final userId:Ljava/lang/String;

.field private final wifi:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;)V
    .locals 2

    .line 29
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/module/telemetry/MapBaseEvent;-><init>(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->operatingSystem:Ljava/lang/String;

    const-string v0, "mapbox-maps-android"

    .line 15
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->sdkIdentifier:Ljava/lang/String;

    const-string v0, "8.3.0-beta.1"

    .line 16
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->sdkVersion:Ljava/lang/String;

    .line 17
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->model:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->userId:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->getBatteryLevel()I

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->batteryLevel:I

    .line 32
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->isPluggedIn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->pluggedIn:Z

    .line 33
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->getCellularNetworkType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->cellularNetworkType:Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->getCarrier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->carrier:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->getResolution()F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->resolution:F

    .line 36
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->getAccessibilityFontScale()F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->accessibilityFontScale:F

    .line 37
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->isWifi()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->wifi:Z

    .line 38
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->getOrientation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->orientation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 107
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;

    .line 109
    iget v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->resolution:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->resolution:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 112
    :cond_2
    iget v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->accessibilityFontScale:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->accessibilityFontScale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 115
    :cond_3
    iget v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->batteryLevel:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->batteryLevel:I

    if-eq v2, v3, :cond_4

    return v1

    .line 118
    :cond_4
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->pluggedIn:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->pluggedIn:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 121
    :cond_5
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->wifi:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->wifi:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 124
    :cond_6
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->operatingSystem:Ljava/lang/String;

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->operatingSystem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 127
    :cond_7
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->model:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->model:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 130
    :cond_9
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->userId:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_a
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->userId:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_1
    return v1

    .line 133
    :cond_b
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_c
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_2
    return v1

    .line 136
    :cond_d
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->cellularNetworkType:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->cellularNetworkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_3

    :cond_e
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->cellularNetworkType:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_3
    return v1

    .line 140
    :cond_f
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->orientation:Ljava/lang/String;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->orientation:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_10
    if-nez p1, :cond_11

    return v0

    :cond_11
    :goto_4
    return v1
.end method

.method getAccessibilityFontScale()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->accessibilityFontScale:F

    return v0
.end method

.method getBatteryLevel()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->batteryLevel:I

    return v0
.end method

.method getCarrier()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method getCellularNetworkType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->cellularNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "map.load"

    return-object v0
.end method

.method getModel()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->model:Ljava/lang/String;

    return-object v0
.end method

.method getOperatingSystem()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->operatingSystem:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method getResolution()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->resolution:F

    return v0
.end method

.method getSdkIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "mapbox-maps-android"

    return-object v0
.end method

.method getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "8.3.0-beta.1"

    return-object v0
.end method

.method getUserId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->operatingSystem:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    const-string v2, "mapbox-maps-android"

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    const-string v2, "8.3.0-beta.1"

    .line 147
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->model:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 149
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->userId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 150
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 151
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->cellularNetworkType:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 152
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->orientation:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 153
    iget v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->resolution:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_6

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 154
    iget v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->accessibilityFontScale:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 155
    iget v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->batteryLevel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->pluggedIn:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->wifi:Z

    add-int/2addr v0, v1

    return v0
.end method

.method isPluggedIn()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->pluggedIn:Z

    return v0
.end method

.method isWifi()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->wifi:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MapLoadEvent{, operatingSystem=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->operatingSystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sdkIdentifier=\'mapbox-maps-android\', sdkVersion=\'8.3.0-beta.1\', model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", carrier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cellularNetworkType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->cellularNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", orientation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->orientation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->resolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityFontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->accessibilityFontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", batteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pluggedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->pluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;->wifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
